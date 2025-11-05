view: card_collection_rarity_pdt {
  derived_table: {
    distribution: "advertising_id"
    sql:

    WITH UnpivotedCards AS (

            SELECT live_ops_start_time, advertising_id,
                   packed_cards_1_rarity AS rarity,
                   packed_cards_1_type AS card_type,
                   packed_cards_1_count AS card_count,
                   user_platform, installed_at
            FROM tile_match.live_ops
            WHERE event_name = 'CardCollectionPackageEarned' AND event_stage_index = 0
            UNION ALL
            SELECT live_ops_start_time, advertising_id,
                   packed_cards_2_rarity AS rarity,
                   packed_cards_2_type AS card_type,
                   packed_cards_2_count AS card_count,
                   user_platform, installed_at
            FROM tile_match.live_ops
            WHERE event_name = 'CardCollectionPackageEarned' AND event_stage_index = 0
            UNION ALL
            SELECT live_ops_start_time, advertising_id,
                   packed_cards_3_rarity AS rarity,
                   packed_cards_3_type AS card_type,
                   packed_cards_3_count AS card_count,
                   user_platform, installed_at
            FROM tile_match.live_ops
            WHERE event_name = 'CardCollectionPackageEarned' AND event_stage_index = 0
            UNION ALL
            SELECT live_ops_start_time, advertising_id,
                   packed_cards_4_rarity AS rarity,
                   packed_cards_4_type AS card_type,
                   packed_cards_4_count AS card_count,
                   user_platform, installed_at
            FROM tile_match.live_ops
            WHERE event_name = 'CardCollectionPackageEarned' AND event_stage_index = 0
            UNION ALL
            SELECT live_ops_start_time, advertising_id,
                   packed_cards_5_rarity AS rarity,
                   packed_cards_5_type AS card_type,
                   packed_cards_5_count AS card_count,
                   user_platform, installed_at
            FROM tile_match.live_ops
            WHERE event_name = 'CardCollectionPackageEarned' AND event_stage_index = 0
            UNION ALL
            SELECT live_ops_start_time, advertising_id,
                   packed_cards_6_rarity AS rarity,
                   packed_cards_6_type AS card_type,
                   packed_cards_6_count AS card_count,
                   user_platform, installed_at
            FROM tile_match.live_ops
            WHERE event_name = 'CardCollectionPackageEarned' AND event_stage_index = 0
),

        CategorizedCardsBase AS (

            SELECT
              live_ops_start_time,
              advertising_id,
              user_platform, installed_at,
              card_count,
              CASE
                WHEN rarity = 5 AND card_type = 1 THEN 'Gold'
                WHEN rarity = 5 THEN CAST(rarity AS VARCHAR)
                WHEN rarity = 4 THEN CAST(rarity AS VARCHAR)
                WHEN rarity = 3 THEN CAST(rarity AS VARCHAR)
                WHEN rarity = 2 THEN CAST(rarity AS VARCHAR)
                WHEN rarity = 1 THEN CAST(rarity AS VARCHAR)
                ELSE NULL
              END AS final_rarity_category
            FROM
              UnpivotedCards
            WHERE
              rarity IN (1, 2, 3, 4, 5)
),

        AnalysisData AS (

            SELECT
              live_ops_start_time,
              advertising_id,
              user_platform, installed_at,
              final_rarity_category,
              'Total_Cards' AS analysis_type
            FROM CategorizedCardsBase
            WHERE final_rarity_category IS NOT NULL

            UNION ALL

            SELECT
              live_ops_start_time,
              advertising_id,
              user_platform, installed_at,
              final_rarity_category,
              'Unique_Cards' AS analysis_type
            FROM CategorizedCardsBase
            WHERE final_rarity_category IS NOT NULL
              AND card_count = 1
),

        ActualUserRarityCounts AS (

            SELECT
              live_ops_start_time,
              advertising_id,
              user_platform, installed_at,
              final_rarity_category,
              analysis_type,
              COUNT(*) AS total_cards_of_rarity_per_user
            FROM
              AnalysisData
            GROUP BY
              1, 2, 3, 4, 5, 6
),

        EventParticipants AS (

            SELECT DISTINCT
              live_ops_start_time,
              advertising_id,
              user_platform, installed_at,
              analysis_type
            FROM
              AnalysisData
),

        AllRarities AS (

            SELECT '1' AS rarity_category
            UNION ALL SELECT '2'
            UNION ALL SELECT '3'
            UNION ALL SELECT '4'
            UNION ALL SELECT '5'
            UNION ALL SELECT 'Gold'
),

        Scaffold AS (

            SELECT
              p.live_ops_start_time,
              p.advertising_id,
              p.user_platform, p.installed_at,
              p.analysis_type,
              r.rarity_category
            FROM
              EventParticipants AS p
            CROSS JOIN
              AllRarities AS r
),

        FinalUserCountsWithZeros AS (

            SELECT
              s.live_ops_start_time,
              s.advertising_id,
              s.user_platform, s.installed_at,
              s.rarity_category,
              s.analysis_type,
              COALESCE(a.total_cards_of_rarity_per_user, 0) AS total_cards_of_rarity_per_user
            FROM
              Scaffold AS s
            LEFT JOIN
              ActualUserRarityCounts AS a
              ON s.live_ops_start_time = a.live_ops_start_time
              AND s.advertising_id = a.advertising_id
              AND s.user_platform = a.user_platform
              AND s.installed_at = a.installed_at
              AND s.rarity_category = a.final_rarity_category
              AND s.analysis_type = a.analysis_type
)

SELECT *
FROM FinalUserCountsWithZeros;;

    publish_as_db_view: yes
    sql_trigger_value: SELECT TRUNC((DATE_PART('hour', SYSDATE))/4)  ;;
    sortkeys: ["advertising_id","live_ops_start_time"]
  }

  dimension: advertising_id {
    type: string
    sql: ${TABLE}.advertising_id ;;
  }

  dimension_group: live_ops_start_time {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.live_ops_start_time ;;
  }

  dimension_group: installed {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.installed_at ;;
  }

  dimension: user_platform {
    type: string
    sql: case when ${TABLE}.user_platform = 'Android' then 'android'
              when ${TABLE}.user_platform = 'IPhonePlayer' then 'ios'
        end ;;
  }

  dimension: analysis_type {
    type: string
    sql: ${TABLE}.analysis_type ;;
  }

  dimension: rarity_category {
    type: string
    sql: ${TABLE}.rarity_category ;;
  }

  dimension: total_cards_of_rarity_per_user {
    type: number
    sql: ${TABLE}.total_cards_of_rarity_per_user ;;
  }

  measure: card_count_avg {
    type: average
    sql: ${total_cards_of_rarity_per_user} ;;
  }

  measure: card_count_per25 {
    type: percentile
    sql: ${total_cards_of_rarity_per_user} ;;
    percentile: 25
  }

  measure: card_count_per50 {
    type: percentile
    sql: ${total_cards_of_rarity_per_user} ;;
    percentile: 50
  }

  measure: card_count_per75 {
    type: percentile
    sql: ${total_cards_of_rarity_per_user} ;;
    percentile: 75
  }

  measure: card_count_per95 {
    type: percentile
    sql: ${total_cards_of_rarity_per_user} ;;
    percentile: 90
  }

  measure: count {
    type: count
  }

}
