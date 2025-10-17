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
      column: app_version {}
      column: event_package_type {}
      column: event_name {}
      filters: {
        field: live_ops.event_type
        value: "CardCollection"
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

  dimension: event_package_type {
    description: ""
  }

  dimension: event_name {
    description: ""
  }

  dimension: app_version {
    description: ""
  }

  dimension: event_stage_index {
    description: ""
  }

  dimension: max_collection_complete_ratio {
    type: number
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

}
