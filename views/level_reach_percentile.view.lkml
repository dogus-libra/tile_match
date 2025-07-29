view: level_reach_percentile {
  derived_table: {
    distribution: "advertising_id"
    sql:
      WITH base AS (
    SELECT
        p.advertising_id,
        p.installed_at,
        p.user_level_at AS level_number,
        DATEDIFF(hour, p.installed_at, p.event_timestamp) AS hours_since_install,
        DATEDIFF(hour, p.installed_at, GETDATE()) AS user_age_hours
    FROM tile_match.progression p
    WHERE p.event_name = 'LevelCompleted'
)
SELECT
    advertising_id,
    installed_at,
    MAX(CASE WHEN hours_since_install <= 24   AND user_age_hours >= 24    THEN level_number END) AS day1_levels,
    MAX(CASE WHEN hours_since_install <= 72   AND user_age_hours >= 72    THEN level_number END) AS day3_levels,
    MAX(CASE WHEN hours_since_install <= 168  AND user_age_hours >= 168   THEN level_number END) AS day7_levels,
    MAX(CASE WHEN hours_since_install <= 336  AND user_age_hours >= 336   THEN level_number END) AS day14_levels,
    MAX(CASE WHEN hours_since_install <= 504  AND user_age_hours >= 504   THEN level_number END) AS day21_levels,
    MAX(CASE WHEN hours_since_install <= 672  AND user_age_hours >= 672   THEN level_number END) AS day28_levels,
    MAX(CASE WHEN hours_since_install <= 1440 AND user_age_hours >= 1440  THEN level_number END) AS day60_levels,
    MAX(CASE WHEN hours_since_install <= 2160 AND user_age_hours >= 2160  THEN level_number END) AS day90_levels
FROM base
GROUP BY advertising_id, installed_at

 ;;

    publish_as_db_view: yes
    sql_trigger_value: select DATE_TRUNC('day',DATEADD('minute', -540 , getdate() )  )  ;;
    sortkeys: ["advertising_id"]
  }

  dimension: advertising_id {
    type: string
    sql: ${TABLE}.advertising_id ;;
  }
  dimension: day1_levels {
    type: number
    sql: ${TABLE}.day1_levels ;;
  }
  dimension: day3_levels {
    type: number
    sql: ${TABLE}.day3_levels ;;
  }
  dimension: day7_levels {
    type: number
    sql: ${TABLE}.day7_levels ;;
  }
  dimension: day14_levels {
    type: number
    sql: ${TABLE}.day14_levels ;;
  }
  dimension: day21_levels {
    type: number
    sql: ${TABLE}.day21_levels ;;
  }
  dimension: day28_levels {
    type: number
    sql: ${TABLE}.day28_levels ;;
  }
  dimension: day60_levels {
    type: number
    sql: ${TABLE}.day60_levels ;;
  }
  dimension: day90_levels {
    type: number
    sql: ${TABLE}.day90_levels ;;
  }

  measure: day1_levels_avg {
    type: average
    sql: ${day1_levels} ;;
    value_format: "##"
  }

  measure: day1_levels_per10 {
    type: percentile
    percentile: 10
    sql: ${day1_levels} ;;
    value_format: "##"
  }

  measure: day1_levels_per25 {
    type: percentile
    percentile: 25
    sql: ${day1_levels}  ;;
    value_format: "##"
  }

  measure: day1_levels_per50 {
    type: percentile
    percentile: 50
    sql: ${day1_levels}   ;;
    value_format: "##"
  }

  measure: day1_levels_per75 {
    type: percentile
    percentile: 75
    sql: ${day1_levels}   ;;
    value_format: "##"
  }

  measure: day1_levels_per90 {
    type: percentile
    percentile: 90
    sql: ${day1_levels}   ;;
    value_format: "##"
  }

  measure: day3_levels_avg {
    type: average
    sql: ${day3_levels} ;;
    value_format: "##"
  }

  measure: day3_levels_per10 {
    type: percentile
    percentile: 10
    sql: ${day3_levels} ;;
    value_format: "##"
  }

  measure: day3_levels_per25 {
    type: percentile
    percentile: 25
    sql: ${day3_levels}  ;;
    value_format: "##"
  }

  measure: day3_levels_per50 {
    type: percentile
    percentile: 50
    sql: ${day3_levels}   ;;
    value_format: "##"
  }

  measure: day3_levels_per75 {
    type: percentile
    percentile: 75
    sql: ${day3_levels}   ;;
    value_format: "##"
  }

  measure: day3_levels_per90 {
    type: percentile
    percentile: 90
    sql: ${day3_levels}   ;;
    value_format: "##"
  }

  measure: day7_levels_avg {
    type: average
    sql: ${day7_levels} ;;
    value_format: "##"
  }

  measure: day7_levels_per10 {
    type: percentile
    percentile: 10
    sql: ${day7_levels} ;;
    value_format: "##"
  }

  measure: day7_levels_per25 {
    type: percentile
    percentile: 25
    sql: ${day7_levels}  ;;
    value_format: "##"
  }

  measure: day7_levels_per50 {
    type: percentile
    percentile: 50
    sql: ${day7_levels}   ;;
    value_format: "##"
  }

  measure: day7_levels_per75 {
    type: percentile
    percentile: 75
    sql: ${day7_levels}   ;;
    value_format: "##"
  }

  measure: day7_levels_per90 {
    type: percentile
    percentile: 90
    sql: ${day7_levels}   ;;
    value_format: "##"
  }

  measure: day14_levels_avg {
    type: average
    sql: ${day14_levels} ;;
    value_format: "##"
  }

  measure: day14_levels_per10 {
    type: percentile
    percentile: 10
    sql: ${day14_levels} ;;
    value_format: "##"
  }

  measure: day14_levels_per25 {
    type: percentile
    percentile: 25
    sql: ${day14_levels}  ;;
    value_format: "##"
  }

  measure: day14_levels_per50 {
    type: percentile
    percentile: 50
    sql: ${day14_levels}   ;;
    value_format: "##"
  }

  measure: day14_levels_per75 {
    type: percentile
    percentile: 75
    sql: ${day14_levels}   ;;
    value_format: "##"
  }

  measure: day14_levels_per90 {
    type: percentile
    percentile: 90
    sql: ${day14_levels}   ;;
    value_format: "##"
  }

  measure: day21_levels_avg {
    type: average
    sql: ${day21_levels} ;;
    value_format: "##"
  }

  measure: day21_levels_per10 {
    type: percentile
    percentile: 10
    sql: ${day21_levels} ;;
    value_format: "##"
  }

  measure: day21_levels_per25 {
    type: percentile
    percentile: 25
    sql: ${day21_levels}  ;;
    value_format: "##"
  }

  measure: day21_levels_per50 {
    type: percentile
    percentile: 50
    sql: ${day21_levels}   ;;
    value_format: "##"
  }

  measure: day21_levels_per75 {
    type: percentile
    percentile: 75
    sql: ${day21_levels}   ;;
    value_format: "##"
  }

  measure: day21_levels_per90 {
    type: percentile
    percentile: 90
    sql: ${day21_levels}   ;;
    value_format: "##"
  }

  measure: day28_levels_avg {
    type: average
    sql: ${day28_levels} ;;
    value_format: "##"
  }

  measure: day28_levels_per10 {
    type: percentile
    percentile: 10
    sql: ${day28_levels} ;;
    value_format: "##"
  }

  measure: day28_levels_per25 {
    type: percentile
    percentile: 25
    sql: ${day28_levels}  ;;
    value_format: "##"
  }

  measure: day28_levels_per50 {
    type: percentile
    percentile: 50
    sql: ${day28_levels}   ;;
    value_format: "##"
  }

  measure: day28_levels_per75 {
    type: percentile
    percentile: 75
    sql: ${day28_levels}   ;;
    value_format: "##"
  }

  measure: day28_levels_per90 {
    type: percentile
    percentile: 90
    sql: ${day28_levels}   ;;
    value_format: "##"
  }

  measure: day60_levels_avg {
    type: average
    sql: ${day60_levels} ;;
    value_format: "##"
  }

  measure: day60_levels_per10 {
    type: percentile
    percentile: 10
    sql: ${day60_levels} ;;
    value_format: "##"
  }

  measure: day60_levels_per25 {
    type: percentile
    percentile: 25
    sql: ${day60_levels}  ;;
    value_format: "##"
  }

  measure: day60_levels_per50 {
    type: percentile
    percentile: 50
    sql: ${day60_levels}   ;;
    value_format: "##"
  }

  measure: day60_levels_per75 {
    type: percentile
    percentile: 75
    sql: ${day60_levels}   ;;
    value_format: "##"
  }

  measure: day60_levels_per90 {
    type: percentile
    percentile: 90
    sql: ${day60_levels}   ;;
    value_format: "##"
  }

  measure: day90_levels_avg {
    type: average
    sql: ${day90_levels} ;;
    value_format: "##"
  }

  measure: day90_levels_per10 {
    type: percentile
    percentile: 10
    sql: ${day90_levels} ;;
    value_format: "##"
  }

  measure: day90_levels_per25 {
    type: percentile
    percentile: 25
    sql: ${day90_levels}  ;;
    value_format: "##"
  }

  measure: day90_levels_per50 {
    type: percentile
    percentile: 50
    sql: ${day90_levels}   ;;
    value_format: "##"
  }

  measure: day90_levels_per75 {
    type: percentile
    percentile: 75
    sql: ${day90_levels}   ;;
    value_format: "##"
  }

  measure: day90_levels_per90 {
    type: percentile
    percentile: 90
    sql: ${day90_levels}   ;;
    value_format: "##"
  }

  dimension_group: install_dt {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.installed_at ;;
  }

}
