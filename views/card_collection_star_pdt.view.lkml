view: card_collection_star_pdt {
  derived_table: {
    distribution: "advertising_id"
    sql:

WITH UnpivotedCards AS (

          SELECT live_ops_start_time, advertising_id,
                 packed_cards_1_rarity AS rarity, packed_cards_1_count AS count,
                 user_platform, installed_at
          FROM tile_match.live_ops WHERE event_name = 'CardCollectionPackageEarned' AND event_stage_index = 0

          UNION ALL

          SELECT live_ops_start_time, advertising_id, packed_cards_2_rarity, packed_cards_2_count,
                 user_platform, installed_at
          FROM tile_match.live_ops WHERE event_name = 'CardCollectionPackageEarned' AND event_stage_index = 0

          UNION ALL

          SELECT live_ops_start_time, advertising_id, packed_cards_3_rarity, packed_cards_3_count,
                 user_platform, installed_at
          FROM tile_match.live_ops WHERE event_name = 'CardCollectionPackageEarned' AND event_stage_index = 0

          UNION ALL

          SELECT live_ops_start_time, advertising_id, packed_cards_4_rarity, packed_cards_4_count,
                 user_platform, installed_at
          FROM tile_match.live_ops WHERE event_name = 'CardCollectionPackageEarned' AND event_stage_index = 0

          UNION ALL

          SELECT live_ops_start_time, advertising_id, packed_cards_5_rarity, packed_cards_5_count,
                 user_platform, installed_at
          FROM tile_match.live_ops WHERE event_name = 'CardCollectionPackageEarned' AND event_stage_index = 0

          UNION ALL

          SELECT live_ops_start_time, advertising_id, packed_cards_6_rarity, packed_cards_6_count,
                 user_platform, installed_at
          FROM tile_match.live_ops WHERE event_name = 'CardCollectionPackageEarned' AND event_stage_index = 0
),

      DuplicateStars AS (

          SELECT
            live_ops_start_time,
            advertising_id,
            user_platform,
            installed_at,
            rarity AS star_value
          FROM
            UnpivotedCards
          WHERE
            rarity IN (1, 2, 3, 4, 5)
            AND count > 1
),

      UserTotalStars AS (

          SELECT
            live_ops_start_time,
            advertising_id,
            user_platform,
            installed_at,
            SUM(star_value) AS total_stars
          FROM
            DuplicateStars
          GROUP BY
            1, 2, 3, 4
),

      AllEventParticipants AS ( --hiç yıldız kazanmayan kullanıcıları dahil etmemizi sağlar

          SELECT DISTINCT
            live_ops_start_time,
            advertising_id,
            user_platform,
            installed_at
          FROM
            UnpivotedCards
          WHERE
            rarity IN (1, 2, 3, 4, 5)
),

      FinalUserStarsWithZeros AS (

          SELECT
            p.live_ops_start_time,
            p.advertising_id,
            p.user_platform,
            p.installed_at,
            COALESCE(s.total_stars, 0) AS total_stars
          FROM
            AllEventParticipants AS p
          LEFT JOIN
            UserTotalStars AS s
            ON p.live_ops_start_time = s.live_ops_start_time
            AND p.advertising_id = s.advertising_id
)

SELECT *
FROM FinalUserStarsWithZeros ;;

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

  dimension: total_stars {
    type: number
    sql: ${TABLE}.total_stars ;;
  }

  measure: total_stars_count_avg {
    type: average
    sql: ${total_stars} ;;
  }

  measure: total_stars_count_per25 {
    type: percentile
    sql: ${total_stars} ;;
    percentile: 25
  }

  measure: total_stars_count_per50 {
    type: percentile
    sql: ${total_stars} ;;
    percentile: 50
  }

  measure: total_stars_count_per75 {
    type: percentile
    sql: ${total_stars} ;;
    percentile: 75
  }

  measure: total_stars_count_per95 {
    type: percentile
    sql: ${total_stars} ;;
    percentile: 90
  }

  measure: count {
    type: count
  }

}
