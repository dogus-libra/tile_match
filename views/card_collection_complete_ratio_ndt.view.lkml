include: "/models/tile_match.model.lkml"

view: card_collection_complete_ratio_ndt {
  derived_table: {
    distribution: "advertising_id"
    explore_source: live_ops {
      column: advertising_id {}
      column: live_ops_start_time_date {}
      column: live_ops_start_time_time {}
      column: installed_date {}
      column: user_platform {}
      column: event_stage_index {}
      column: max_collection_complete_ratio {}
      column: sum_package_card_count {}
      column: event_name {}
      filters: {
        field: live_ops.event_name
        value: "CardCollectionPackageEarned"
      }

    }
    publish_as_db_view: yes
    sql_trigger_value: SELECT TRUNC((DATE_PART('hour', SYSDATE))/4)  ;;
    sortkeys: ["advertising_id","live_ops_start_time_date"]
  }
  dimension: advertising_id {
    description: ""
  }

  dimension: user_platform {
    description: ""
  }

  dimension: event_name {
    description: ""
  }

  dimension: event_stage_index {
    description: ""
  }

  dimension: max_collection_complete_ratio {
    type: number
    description: ""
  }

  dimension: sum_package_card_count {
    description: ""
  }

  dimension: card_collection_set_completed_count {
    type: number
    description: ""
  }

  dimension: installed_date {
    description: ""
    type: date
  }

  dimension: live_ops_start_time_date {
    description: ""
    type: date
  }

  dimension: live_ops_start_time_time {
    description: ""
    type: date
  }

  measure: count {
    type: count
  }

  measure: collection_complete_ratio_per25 {
    type: percentile
    percentile: 25
    sql: ${max_collection_complete_ratio}::double precision;;
    value_format: "0.00"
  }

  measure: collection_complete_ratio_per50 {
    type: percentile
    percentile: 50
    sql: ${max_collection_complete_ratio}::double precision;;
    value_format: "0.00"
  }

  measure: collection_complete_ratio_per75 {
    type: percentile
    percentile: 75
    sql: ${max_collection_complete_ratio}::double precision;;
    value_format: "0.00"
  }

  measure: collection_complete_ratio_per90 {
    type: percentile
    percentile: 90
    sql: ${max_collection_complete_ratio}::double precision;;
    value_format: "0.00"
  }

  measure: unique_card_count_per25 {
    type: number
    sql: case when  ${live_ops_start_time_date} <= to_timestamp('29.09.2025 08:00:00', 'DD-MM-YYYY HH24:MI:SS')  then ${collection_complete_ratio_per25} * 81
              when  ${live_ops_start_time_date} > to_timestamp('29.09.2025 08:00:00', 'DD-MM-YYYY HH24:MI:SS')  then ${collection_complete_ratio_per25} * 108
              else null end;;
    value_format: "0"
  }

  measure: unique_card_count_per50 {
    type: number
    sql: case when  ${live_ops_start_time_date} <= to_timestamp('29.09.2025 08:00:00', 'DD-MM-YYYY HH24:MI:SS')  then ${collection_complete_ratio_per50} * 81
              when  ${live_ops_start_time_date} > to_timestamp('29.09.2025 08:00:00', 'DD-MM-YYYY HH24:MI:SS')  then ${collection_complete_ratio_per50} * 108
              else null end;;
    value_format: "0"
  }

  measure: unique_card_count_per75 {
    type: number
    sql: case when  ${live_ops_start_time_date} <= to_timestamp('29.09.2025 08:00:00', 'DD-MM-YYYY HH24:MI:SS')  then ${collection_complete_ratio_per75} * 81
              when  ${live_ops_start_time_date} > to_timestamp('29.09.2025 08:00:00', 'DD-MM-YYYY HH24:MI:SS')  then ${collection_complete_ratio_per75} * 108
              else null end;;
    value_format: "0"
  }

  measure: unique_card_count_per90 {
    type: number
    sql: case when  ${live_ops_start_time_date} <= to_timestamp('29.09.2025 08:00:00', 'DD-MM-YYYY HH24:MI:SS')  then ${collection_complete_ratio_per90} * 81
              when  ${live_ops_start_time_date} > to_timestamp('29.09.2025 08:00:00', 'DD-MM-YYYY HH24:MI:SS')  then ${collection_complete_ratio_per90} * 108
              else null end;;
    value_format: "0"
  }

  measure: total_card_count_avg {
    type: average
    sql: ${sum_package_card_count};;
    value_format: "0"
  }

  measure: total_card_count_max {
    type: max
    sql: ${sum_package_card_count};;
    value_format: "0"
  }

  measure: total_card_count_per25 {
    type: percentile
    percentile: 25
    sql: ${sum_package_card_count};;
  }

  measure: total_card_count_per50 {
    type: percentile
    percentile: 50
    sql: ${sum_package_card_count};;
    value_format: "0"
  }

  measure: total_card_count_per75 {
    type: percentile
    percentile: 75
    sql: ${sum_package_card_count};;
    value_format: "0"
  }

  measure: total_card_count_per90 {
    type: percentile
    percentile: 90
    sql: ${sum_package_card_count};;
    value_format: "0"
  }

  measure: total_card_count_per99 {
    type: percentile
    percentile: 99
    sql: ${sum_package_card_count};;
    value_format: "0"
  }

}
