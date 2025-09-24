view: time_remain_pdt {
  derived_table: {
    distribution: "advertising_id"
    sql:
        SELECT
           advertising_id, date_trunc('day',event_timestamp) as event_timestamp_day,
           sum( time_remain ) as total_time_remain_sec,
           min(date_trunc('day',event_timestamp)) as event_timestamp_min,
           max(installed_at) as install_dt,
           floor(datediff(hour,install_dt,event_timestamp_min)/24) as install_day_of_user,
           max(user_platform) as user_platform,
           min(app_version) as app_version,
           min(user_level_at) as user_level_at_begining

      FROM tile_match.progression
      WHERE event_name = 'LevelCompleted'
      GROUP BY  advertising_id, event_timestamp_day  ;;

    publish_as_db_view: yes
    sql_trigger_value: SELECT TRUNC((DATE_PART('hour', SYSDATE))/4)  ;;
    sortkeys: ["advertising_id","event_timestamp_day"]
  }

  dimension: advertising_id {
    type: string
    sql: ${TABLE}.advertising_id ;;
  }

  dimension: app_version {
    type: string
    sql: ${TABLE}.app_version ;;
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

  dimension: total_time_remain_sec {
    type: number
    sql: ${TABLE}.total_time_remain_sec ;;
  }

  dimension: user_platform {
    type: string
    sql: case when ${TABLE}.user_platform = 'Android' then 'android'
              when ${TABLE}.user_platform = 'IPhonePlayer' then 'ios'
        end ;;
  }

  dimension: user_level_at_begining {
    type: number
    sql: ${TABLE}.user_level_at_begining ;;
  }

  measure: time_remain_sec_avg {
    type: number
    sql:  AVG(${TABLE}.total_time_remain_sec);;
    value_format: "0.00"
  }

  measure: time_remain_sec_per10  {
    type: percentile
    percentile: 10
    sql: ${TABLE}.total_time_remain_sec  ;;
    value_format: "0.00"
  }

  measure: time_remain_sec_per25  {
    type: percentile
    percentile: 25
    sql: ${TABLE}.total_time_remain_sec  ;;
    value_format: "0.00"
  }

  measure: time_remain_sec_per50  {
    type: percentile
    percentile: 50
    sql: ${TABLE}.total_time_remain_sec  ;;
    value_format: "0.00"
  }

  measure: time_remain_sec_per75  {
    type: percentile
    percentile: 75
    sql: ${TABLE}.total_time_remain_sec  ;;
    value_format: "0.00"
  }

  measure: time_remain_sec_per90  {
    type: percentile
    percentile: 90
    sql: ${TABLE}.total_time_remain_sec  ;;
    value_format: "0.00"
  }

  measure: time_remain_sec_per95  {
    type: percentile
    percentile: 95
    sql: ${TABLE}.total_time_remain_sec  ;;
    value_format: "0.00"
  }

  measure: time_remain_sec_per99  {
    type: percentile
    percentile: 99
    sql: ${TABLE}.total_time_remain_sec  ;;
    value_format: "0.00"
  }

  measure: count {
    type: count
  }

}
