view: progression3_pdt {
  derived_table: {
    distribution: "advertising_id"
    sql:

      SELECT
          advertising_id,
          user_level_at,
          max(coalesce(user_win_streak_count,0)) AS max_win_streak,
          max(user_platform) as user_platform,
          max(installed_at) as install_dt,
          max(app_version) as app_version,
          max(date_trunc('day',event_timestamp)) as event_timestamp
      FROM
          tile_match.progression
      WHERE
          event_name = 'LevelStarted'
      GROUP BY
          advertising_id, user_level_at
      ORDER BY
          advertising_id, user_level_at ;;

    publish_as_db_view: yes
    sql_trigger_value: SELECT TRUNC((DATE_PART('hour', SYSDATE))/4)  ;;
    sortkeys: ["advertising_id","user_level_at"]
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
    sql: ${TABLE}.event_timestamp ;;
  }

  dimension_group: installed {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.install_dt ;;
  }

  dimension: user_win_streak_count {
    type: number
    sql: ${TABLE}.max_win_streak ;;
  }

  dimension: user_level_at {
    type: number
    sql: ${TABLE}.user_level_at ;;
  }

  dimension: user_platform {
    type: string
    sql: case when ${TABLE}.user_platform = 'Android' then 'android'
              when ${TABLE}.user_platform = 'IPhonePlayer' then 'ios'
        end ;;
  }

  measure: win_streak_avg {
    type: number
    sql:  AVG(${TABLE}.max_win_streak);;
    value_format: "0.00"
  }

  measure: win_streak_per10  {
    type: percentile
    percentile: 10
    sql: ${TABLE}.max_win_streak  ;;
    value_format: "0.00"
  }

  measure: win_streak_per25  {
    type: percentile
    percentile: 25
    sql: ${TABLE}.max_win_streak  ;;
    value_format: "0.00"
  }

  measure: win_streak_per50  {
    type: percentile
    percentile: 50
    sql: ${TABLE}.max_win_streak  ;;
    value_format: "0.00"
  }

  measure: win_streak_per75  {
    type: percentile
    percentile: 75
    sql: ${TABLE}.max_win_streak  ;;
    value_format: "0.00"
  }

  measure: win_streak_per90  {
    type: percentile
    percentile: 90
    sql: ${TABLE}.max_win_streak  ;;
    value_format: "0.00"
  }

  measure: win_streak_per95  {
    type: percentile
    percentile: 95
    sql: ${TABLE}.max_win_streak  ;;
    value_format: "0.00"
  }

  measure: win_streak_per99  {
    type: percentile
    percentile: 99
    sql: ${TABLE}.max_win_streak  ;;
    value_format: "0.00"
  }

  measure: count {
    type: count
  }

}
