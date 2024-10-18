view: session2_pdt {
  derived_table: {
    distribution: "advertising_id"
    sql:
        SELECT
           advertising_id,
           sum(case when event_timestamp between date_trunc('hour', sysdate - 60) and date_trunc('hour', sysdate - 36) then session_time end)/60  as playtime_last24,
           sum(case when event_timestamp between date_trunc('hour', sysdate - 108) and date_trunc('hour', sysdate - 36) then session_time end)/60  as playtime_last72,
           sum(case when event_timestamp between date_trunc('hour', sysdate - 204) and date_trunc('hour', sysdate - 36) then session_time end)/60  as playtime_last168

      FROM tile_match.session where connection_type = 0
      GROUP BY advertising_id ;;

    publish_as_db_view: yes
    sql_trigger_value: SELECT TRUNC((DATE_PART('hour', SYSDATE))/4)  ;;
    sortkeys: ["advertising_id"]
  }

  dimension: advertising_id {
    type: string
    sql: ${TABLE}.advertising_id ;;
  }

  dimension: playtime_last24 {
    type: number
    sql: ${TABLE}.playtime_last24 ;;
  }

  dimension: playtime_last72 {
    type: number
    sql: ${TABLE}.playtime_last72 ;;
  }

  dimension: playtime_last168 {
    type: number
    sql: ${TABLE}.playtime_last168 ;;
  }

  measure: level_win_avg {
    type: number
    sql:  AVG(${TABLE}.total_level_win);;
    value_format: "0.00"
  }

  measure: playtime_last24_per10  {
    type: percentile
    percentile: 10
    sql: ${TABLE}.playtime_last24  ;;
    value_format: "0.00"
  }

  measure: playtime_last24_per20  {
    type: percentile
    percentile: 20
    sql: ${TABLE}.playtime_last24  ;;
    value_format: "0.00"
  }

  measure: playtime_last24_per30  {
    type: percentile
    percentile: 30
    sql: ${TABLE}.playtime_last24  ;;
    value_format: "0.00"
  }

  measure: playtime_last24_per40  {
    type: percentile
    percentile: 40
    sql: ${TABLE}.playtime_last24  ;;
    value_format: "0.00"
  }

  measure: playtime_last24_per50  {
    type: percentile
    percentile: 50
    sql: ${TABLE}.playtime_last24  ;;
    value_format: "0.00"
  }

  measure: playtime_last24_per60  {
    type: percentile
    percentile: 60
    sql: ${TABLE}.playtime_last24  ;;
    value_format: "0.00"
  }

  measure: playtime_last24_per70  {
    type: percentile
    percentile: 70
    sql: ${TABLE}.playtime_last24  ;;
    value_format: "0.00"
  }

  measure: playtime_last24_per80  {
    type: percentile
    percentile: 80
    sql: ${TABLE}.playtime_last24  ;;
    value_format: "0.00"
  }

  measure: playtime_last24_per90  {
    type: percentile
    percentile: 90
    sql: ${TABLE}.playtime_last24  ;;
    value_format: "0.00"
  }

  measure: playtime_last72_per10  {
    type: percentile
    percentile: 10
    sql: ${TABLE}.playtime_last72  ;;
    value_format: "0.00"
  }

  measure: playtime_last72_per20  {
    type: percentile
    percentile: 20
    sql: ${TABLE}.playtime_last72  ;;
    value_format: "0.00"
  }

  measure: playtime_last72_per30  {
    type: percentile
    percentile: 30
    sql: ${TABLE}.playtime_last72  ;;
    value_format: "0.00"
  }

  measure: playtime_last72_per40  {
    type: percentile
    percentile: 40
    sql: ${TABLE}.playtime_last72  ;;
    value_format: "0.00"
  }

  measure: playtime_last72_per50  {
    type: percentile
    percentile: 50
    sql: ${TABLE}.playtime_last72  ;;
    value_format: "0.00"
  }

  measure: playtime_last72_per60  {
    type: percentile
    percentile: 60
    sql: ${TABLE}.playtime_last72  ;;
    value_format: "0.00"
  }

  measure: playtime_last72_per70  {
    type: percentile
    percentile: 70
    sql: ${TABLE}.playtime_last72  ;;
    value_format: "0.00"
  }

  measure: playtime_last72_per80  {
    type: percentile
    percentile: 80
    sql: ${TABLE}.playtime_last72  ;;
    value_format: "0.00"
  }

  measure: playtime_last72_per90  {
    type: percentile
    percentile: 90
    sql: ${TABLE}.playtime_last72  ;;
    value_format: "0.00"
  }

  measure: playtime_last168_per10  {
    type: percentile
    percentile: 10
    sql: ${TABLE}.playtime_last168  ;;
    value_format: "0.00"
  }

  measure: playtime_last168_per20  {
    type: percentile
    percentile: 20
    sql: ${TABLE}.playtime_last168  ;;
    value_format: "0.00"
  }

  measure: playtime_last168_per30  {
    type: percentile
    percentile: 30
    sql: ${TABLE}.playtime_last168  ;;
    value_format: "0.00"
  }

  measure: playtime_last168_per40  {
    type: percentile
    percentile: 40
    sql: ${TABLE}.playtime_last168  ;;
    value_format: "0.00"
  }

  measure: playtime_last168_per50  {
    type: percentile
    percentile: 50
    sql: ${TABLE}.playtime_last168  ;;
    value_format: "0.00"
  }

  measure: playtime_last168_per60  {
    type: percentile
    percentile: 60
    sql: ${TABLE}.playtime_last168  ;;
    value_format: "0.00"
  }

  measure: playtime_last168_per70  {
    type: percentile
    percentile: 70
    sql: ${TABLE}.playtime_last168  ;;
    value_format: "0.00"
  }

  measure: playtime_last168_per80  {
    type: percentile
    percentile: 80
    sql: ${TABLE}.playtime_last168  ;;
    value_format: "0.00"
  }

  measure: playtime_last168_per90  {
    type: percentile
    percentile: 90
    sql: ${TABLE}.playtime_last168  ;;
    value_format: "0.00"
  }

  measure: count {
    type: count
  }

}
