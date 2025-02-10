view: progression2_pdt {
  derived_table: {
    distribution: "advertising_id"
    sql:
        SELECT
           advertising_id,
           sum(case when event_name = 'LevelCompleted' and event_timestamp between date_trunc('hour', sysdate - 60) and date_trunc('hour', sysdate - 36) then 1 else 0 end) as win_count_last24,
           sum(case when event_name = 'LevelCompleted' and event_timestamp between date_trunc('hour', sysdate - 108) and date_trunc('hour', sysdate - 36) then 1 else 0 end) as win_count_last72,
           sum(case when event_name = 'LevelCompleted' and event_timestamp between date_trunc('hour', sysdate - 204) and date_trunc('hour', sysdate - 36) then 1 else 0 end) as win_count_last168

      FROM tile_match.progression
      GROUP BY advertising_id  ;;

    publish_as_db_view: yes
    sql_trigger_value: SELECT TRUNC((DATE_PART('hour', SYSDATE))/4)  ;;
    sortkeys: ["advertising_id"]
  }

  dimension: advertising_id {
    type: string
    sql: ${TABLE}.advertising_id ;;
  }

  dimension: win_count_last24 {
    type: number
    sql: ${TABLE}.win_count_last24 ;;
  }

  dimension: win_count_last72 {
    type: number
    sql: ${TABLE}.win_count_last72 ;;
  }

  dimension: win_count_last168 {
    type: number
    sql: ${TABLE}.win_count_last168 ;;
  }

  measure: level_win_avg {
    type: number
    sql:  AVG(${TABLE}.total_level_win);;
    value_format: "0.00"
  }

  measure: 24level_win_per10  {
    type: percentile
    percentile: 10
    sql: ${TABLE}.win_count_last24  ;;
    value_format: "0.00"
  }

  measure: 24level_win_per20  {
    type: percentile
    percentile: 20
    sql: ${TABLE}.win_count_last24  ;;
    value_format: "0.00"
  }

  measure: 24level_win_per30  {
    type: percentile
    percentile: 30
    sql: ${TABLE}.win_count_last24  ;;
    value_format: "0.00"
  }

  measure: 24level_win_per40  {
    type: percentile
    percentile: 40
    sql: ${TABLE}.win_count_last24  ;;
    value_format: "0.00"
  }

  measure: 24level_win_per50  {
    type: percentile
    percentile: 50
    sql: ${TABLE}.win_count_last24  ;;
    value_format: "0.00"
  }

  measure: 24level_win_per60  {
    type: percentile
    percentile: 60
    sql: ${TABLE}.win_count_last24  ;;
    value_format: "0.00"
  }

  measure: 24level_win_per70  {
    type: percentile
    percentile: 70
    sql: ${TABLE}.win_count_last24  ;;
    value_format: "0.00"
  }

  measure: 24level_win_per80  {
    type: percentile
    percentile: 80
    sql: ${TABLE}.win_count_last24  ;;
    value_format: "0.00"
  }

  measure: 24level_win_per90  {
    type: percentile
    percentile: 90
    sql: ${TABLE}.win_count_last24  ;;
    value_format: "0.00"
  }

  measure: 72level_win_per10  {
    type: percentile
    percentile: 10
    sql: ${TABLE}.win_count_last72  ;;
    value_format: "0.00"
  }

  measure: 72level_win_per20  {
    type: percentile
    percentile: 20
    sql: ${TABLE}.win_count_last72  ;;
    value_format: "0.00"
  }

  measure: 72level_win_per30  {
    type: percentile
    percentile: 30
    sql: ${TABLE}.win_count_last72  ;;
    value_format: "0.00"
  }

  measure: 72level_win_per40  {
    type: percentile
    percentile: 40
    sql: ${TABLE}.win_count_last72  ;;
    value_format: "0.00"
  }

  measure: 72level_win_per50  {
    type: percentile
    percentile: 50
    sql: ${TABLE}.win_count_last72  ;;
    value_format: "0.00"
  }

  measure: 72level_win_per60  {
    type: percentile
    percentile: 60
    sql: ${TABLE}.win_count_last72  ;;
    value_format: "0.00"
  }

  measure: 72level_win_per70  {
    type: percentile
    percentile: 70
    sql: ${TABLE}.win_count_last72  ;;
    value_format: "0.00"
  }

  measure: 72level_win_per80  {
    type: percentile
    percentile: 80
    sql: ${TABLE}.win_count_last72  ;;
    value_format: "0.00"
  }

  measure: 72level_win_per90  {
    type: percentile
    percentile: 90
    sql: ${TABLE}.win_count_last72  ;;
    value_format: "0.00"
  }

  measure: 168level_win_per10  {
    type: percentile
    percentile: 10
    sql: ${TABLE}.win_count_last168  ;;
    value_format: "0.00"
  }

  measure: 168level_win_per20  {
    type: percentile
    percentile: 20
    sql: ${TABLE}.win_count_last168  ;;
    value_format: "0.00"
  }

  measure: 168level_win_per30  {
    type: percentile
    percentile: 30
    sql: ${TABLE}.win_count_last168  ;;
    value_format: "0.00"
  }

  measure: 168level_win_per40  {
    type: percentile
    percentile: 40
    sql: ${TABLE}.win_count_last168  ;;
    value_format: "0.00"
  }

  measure: 168level_win_per50  {
    type: percentile
    percentile: 50
    sql: ${TABLE}.win_count_last168  ;;
    value_format: "0.00"
  }

  measure: 168level_win_per60  {
    type: percentile
    percentile: 60
    sql: ${TABLE}.win_count_last168  ;;
    value_format: "0.00"
  }

  measure: 168level_win_per70  {
    type: percentile
    percentile: 70
    sql: ${TABLE}.win_count_last168  ;;
    value_format: "0.00"
  }

  measure: 168level_win_per80  {
    type: percentile
    percentile: 80
    sql: ${TABLE}.win_count_last168  ;;
    value_format: "0.00"
  }

  measure: 168level_win_per90  {
    type: percentile
    percentile: 90
    sql: ${TABLE}.win_count_last168  ;;
    value_format: "0.00"
  }

  measure: count {
    type: count
  }

}
