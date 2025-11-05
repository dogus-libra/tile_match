view: card_collection_complete_duration_pdt {
  derived_table: {
    distribution: "advertising_id"
    sql:

WITH BaseLogs AS (

          SELECT
            live_ops_start_time,
            advertising_id,
            event_timestamp,
            live_ops_complete_ratio,
            installed_at,
            user_platform
          FROM
            tile_match.live_ops
          WHERE
            event_name = 'CardCollectionPackageEarned'AND
            event_stage_index = 0
),

        UserStartAndCompletion AS (

          SELECT
            live_ops_start_time,
            advertising_id,
            installed_at,
            user_platform,
            MIN(event_timestamp) AS user_start_timestamp,
            MIN(CASE WHEN live_ops_complete_ratio = 1 THEN event_timestamp ELSE NULL END) AS user_completion_timestamp
          FROM
            BaseLogs
          GROUP BY
            1, 2, 3, 4
),

        CompletionCalculations AS (

          SELECT
            live_ops_start_time,
            advertising_id,
            installed_at,
            user_platform
            user_start_timestamp,
            user_completion_timestamp,

            (EXTRACT(EPOCH FROM (user_completion_timestamp - user_start_timestamp))) / 86400.0 AS duration_from_user_start_days,

            FLOOR((EXTRACT(EPOCH FROM (user_completion_timestamp - user_start_timestamp))) / 86400.0) AS completion_on_users_day_num,

            (EXTRACT(EPOCH FROM (user_completion_timestamp - live_ops_start_time))) / 86400.0 AS duration_from_event_start_days,

            FLOOR((EXTRACT(EPOCH FROM (user_completion_timestamp - live_ops_start_time))) / 86400.0) AS completion_on_event_day_num
          FROM
            UserStartAndCompletion
          WHERE
            user_start_timestamp IS NOT NULL
)

SELECT *
FROM CompletionCalculations
      ;;

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

  dimension_group: user_start_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.user_start_timestamp ;;
  }

  dimension_group: user_completion_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.user_completion_timestamp ;;
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

  dimension: duration_from_user_start_days {
    type: number
    sql: ${TABLE}.duration_from_user_start_days ;;
  }

  dimension: completion_on_users_day {
    type: number
    sql: ${TABLE}.completion_on_users_day_num ;;
  }

  dimension: duration_from_event_start_days {
    type: number
    sql: ${TABLE}.duration_from_event_start_days ;;
  }

  dimension: completion_on_event_day {
    type: number
    sql: ${TABLE}.completion_on_event_day_num ;;
  }

  measure: count {
    type: count
  }

}
