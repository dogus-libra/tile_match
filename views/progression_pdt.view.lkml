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
           max(user_session_count) as  max_session_count,
           1.0*(total_level_win) / max_session_count as level_comp_per_session,
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

  dimension: level_comp_per_session {
    type: number
    sql:  ${TABLE}.level_comp_per_session ;;
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
    sql: case when ${TABLE}.user_platform = 'Android' then 'android'
              when ${TABLE}.user_platform = 'IPhonePlayer' then 'ios'
        end ;;
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

  measure: level_win_per10  {
    type: percentile
    percentile: 10
    sql: ${TABLE}.total_level_win  ;;
    value_format: "0.00"
  }

  measure: level_win_per20  {
    type: percentile
    percentile: 20
    sql: ${TABLE}.total_level_win  ;;
    value_format: "0.00"
  }

  measure: level_win_per25  {
    type: percentile
    percentile: 25
    sql: ${TABLE}.total_level_win  ;;
    value_format: "0.00"
  }

  measure: level_win_per30  {
    type: percentile
    percentile: 30
    sql: ${TABLE}.total_level_win  ;;
    value_format: "0.00"
  }

  measure: level_win_per40  {
    type: percentile
    percentile: 40
    sql: ${TABLE}.total_level_win  ;;
    value_format: "0.00"
  }

  measure: level_win_per50  {
    type: percentile
    percentile: 50
    sql: ${TABLE}.total_level_win  ;;
    value_format: "0.00"
  }

  measure: level_win_per60  {
    type: percentile
    percentile: 60
    sql: ${TABLE}.total_level_win  ;;
    value_format: "0.00"
  }

  measure: level_win_per70  {
    type: percentile
    percentile: 70
    sql: ${TABLE}.total_level_win  ;;
    value_format: "0.00"
  }

  measure: level_win_per75  {
    type: percentile
    percentile: 75
    sql: ${TABLE}.total_level_win  ;;
    value_format: "0.00"
  }

  measure: level_win_per80  {
    type: percentile
    percentile: 80
    sql: ${TABLE}.total_level_win  ;;
    value_format: "0.00"
  }

  measure: level_win_per90  {
    type: percentile
    percentile: 90
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

  measure: level_comp_per_sess_avg {
    type: average
    sql:  ${TABLE}.level_comp_per_session;;
  }

  measure: level_comp_per_sess_per25 {
    type: percentile
    percentile: 25
    sql:  ${TABLE}.level_comp_per_session;;
  }

  measure: level_comp_per_sess_per50 {
    type: percentile
    percentile: 50
    sql:  ${TABLE}.level_comp_per_session;;
  }

  measure: level_comp_per_sess_per75 {
    type: percentile
    percentile: 75
    sql:  ${TABLE}.level_comp_per_session;;
  }

  measure: count {
    type: count
  }

}
