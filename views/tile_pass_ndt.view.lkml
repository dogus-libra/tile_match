include: "/models/tile_match.model.lkml"

view: tile_pass_ndt {
  derived_table: {
    distribution: "advertising_id"
    explore_source: live_ops {
      column: advertising_id {}
      column: live_ops_start_date {}
      column: live_ops_start_month {}
      column: installed_date {}
      column: tile_pass_start_time {}
      column: tile_pass_10th_stage_time {}
      column: tile_pass_20th_stage_time {}
      column: tile_pass_30th_stage_time {}
      column: user_platform {}
      filters: {
        field: live_ops.tile_pass_start_time
        value: "NOT NULL"
      }
    }
    publish_as_db_view: yes
    sql_trigger_value: select DATE_TRUNC('day',getdate())  ;;
    sortkeys: ["advertising_id","live_ops_start_date"]
  }
  dimension: advertising_id {
    description: ""
  }

  dimension: user_platform {
    description: ""
  }

  dimension: installed_date {
    description: ""
    type: date
  }

  dimension: live_ops_start_date {
    type: date_month
  }

  dimension: live_ops_start_month {
    type: date_month
  }

  dimension: tile_pass_start_time {
    description: ""
    type: date
  }

  dimension: tile_pass_10th_stage_time {
    description: ""
    type: date
  }

  dimension: tile_pass_20th_stage_time {
    description: ""
    type: date
  }

  dimension: tile_pass_30th_stage_time {
    description: ""
    type: date
  }

  dimension: tile_pass_1to10_time {
    description: ""
    type: number
    sql: datediff(day,${tile_pass_start_time},${tile_pass_10th_stage_time}) ;;
  }

  dimension: tile_pass_1to20_time {
    description: ""
    type: number
    sql: datediff(day,${tile_pass_start_time},${tile_pass_20th_stage_time}) ;;
  }

  dimension: tile_pass_1to30_time {
    description: ""
    type: number
    sql: datediff(day,${tile_pass_start_time},${tile_pass_30th_stage_time}) ;;
  }

  dimension: tile_pass_1to30_time_hour {
    description: ""
    type: number
    sql: datediff(hour,date_trunc('month',${tile_pass_30th_stage_time}),${tile_pass_30th_stage_time}) ;;
  }

  measure: tile_pass_1to10_time_avg {
    type: average
    sql: ${tile_pass_1to10_time}::double precision;;
    value_format: "0.00"
  }

  measure: tile_pass_1to10_time_per25 {
    type: percentile
    percentile: 25
    sql: ${tile_pass_1to10_time}::double precision;;
    value_format: "0.00"
  }

  measure: tile_pass_1to10_time_per50 {
    type: percentile
    percentile: 50
    sql: ${tile_pass_1to10_time}::double precision;;
    value_format: "0.00"
  }

  measure: tile_pass_1to10_time_per75 {
    type: percentile
    percentile: 75
    sql: ${tile_pass_1to10_time}::double precision;;
    value_format: "0.00"
  }

  measure: tile_pass_1to20_time_avg {
    type: average
    sql: ${tile_pass_1to20_time}::double precision;;
    value_format: "0.00"
  }

  measure: tile_pass_1to20_time_per25 {
    type: percentile
    percentile: 25
    sql: ${tile_pass_1to20_time}::double precision;;
    value_format: "0.00"
  }

  measure: tile_pass_1to20_time_per50 {
    type: percentile
    percentile: 50
    sql: ${tile_pass_1to20_time}::double precision;;
    value_format: "0.00"
  }

  measure: tile_pass_1to20_time_per75 {
    type: percentile
    percentile: 75
    sql: ${tile_pass_1to20_time}::double precision;;
    value_format: "0.00"
  }

  measure: tile_pass_1to30_time_avg {
    type: average
    sql: ${tile_pass_1to30_time}::double precision;;
    value_format: "0.00"
  }

  measure: tile_pass_1to30_time_per25 {
    type: percentile
    percentile: 25
    sql: ${tile_pass_1to30_time}::double precision;;
    value_format: "0.00"
  }

  measure: tile_pass_1to30_time_per50 {
    type: percentile
    percentile: 50
    sql: ${tile_pass_1to30_time}::double precision;;
    value_format: "0.00"
  }

  measure: tile_pass_1to30_time_per75 {
    type: percentile
    percentile: 75
    sql: ${tile_pass_1to30_time}::double precision;;
    value_format: "0.00"
  }

}
