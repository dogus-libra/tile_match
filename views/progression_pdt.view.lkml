view: progression_pdt {
  derived_table: {
    distribution: "advertising_id"
    sql:
        SELECT
           advertising_id, date_trunc('day',event_timestamp) as event_timestamp_day,
           sum(case when event_name = 'LevelCompleted' then 1 else 0 end) as total_level_win,
           max(total_attempt_at_current_level) as max_attempt,
           min(date_trunc('day',event_timestamp)) as event_timestamp_min,
           max(installed_at) as install_dt,
           floor(datediff(hour,install_dt,event_timestamp_min)/24) as install_day_of_user,
           max(user_platform) as user_platform

         FROM tile_match.progression
         GROUP BY advertising_id, event_timestamp_day  ;;

    publish_as_db_view: yes
    sql_trigger_value: SELECT TRUNC((DATE_PART('hour', SYSDATE))/4)  ;;
    sortkeys: ["advertising_id","event_timestamp_day"]
  }

  dimension: advertising_id {
    type: string
    sql: ${TABLE}.advertising_id ;;
  }

  dimension_group: event_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.event_timestamp_day ;;
  }

  dimension_group: installed {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.install_dt ;;
  }

  dimension: install_day_of_user {
    type: number
    sql: ${TABLE}.install_day_of_user ;;
  }

  dimension: max_attempt {
    type: number
    sql: ${TABLE}.max_attempt ;;
  }

  dimension: total_level_win {
    type: number
    sql: ${TABLE}.total_level_win ;;
  }

  dimension: user_platform {
    type: string
    sql: ${TABLE}.user_platform ;;
  }

  measure: level_win_sum {
    type: number
    sql:  SUM(${TABLE}.total_level_win) ;;
  }

  measure: level_win_avg {
    type: number
    sql:  AVG(${TABLE}.total_level_win);;
    value_format: "0.00"
  }

  measure: level_win_per25  {
    type: percentile
    percentile: 25
    sql: ${TABLE}.total_level_win  ;;
    value_format: "0.00"
  }

  measure: level_win_per50  {
    type: percentile
    percentile: 50
    sql: ${TABLE}.total_level_win  ;;
    value_format: "0.00"
  }

  measure: level_win_per75  {
    type: percentile
    percentile: 75
    sql: ${TABLE}.total_level_win  ;;
    value_format: "0.00"
  }

  measure: level_win_per95  {
    type: percentile
    percentile: 95
    sql: ${TABLE}.total_level_win  ;;
    value_format: "0.00"
  }

  measure: level_win_per99  {
    type: percentile
    percentile: 99
    sql: ${TABLE}.total_level_win  ;;
    value_format: "0.00"
  }

  measure: count {
    type: count
  }

}
