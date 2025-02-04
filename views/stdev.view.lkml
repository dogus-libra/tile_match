view: stdev{
  derived_table: {
    distribution: "event_timestamp_date"
    explore_source: progression {
      column: event_timestamp_date {}
      column: user_level_at {}
      column: stdev_time_remain {}
      column: app_version {}
      column: user_split_test_name {}
      column: advertising_id {}

      filters: {
        field: progression.event_timestamp_date
        value: "180 days ago for 180 days"
      }
      filters: {
        field: progression.user_level_at
        value: "[1, 500]"
      }
      filters: {
        field: progression.event_name
        value: "LevelCompleted"
      }
    }
    publish_as_db_view: yes
    sql_trigger_value: select DATE_TRUNC('day',getdate())  ;;
    sortkeys: ["user_level_at"]
  }

  dimension: app_version {
    description: ""
    type: string
  }

  dimension: advertising_id {
    description: ""
    type: string
  }

  dimension: event_timestamp_date {
    description: ""
    type: date
  }

  dimension: user_level_at {
    description: ""
    type: number
  }

  dimension: stdev_time_remain {
    description: ""
    value_format: "##.00"
    type: number
  }

  dimension: user_split_test_name {
    description: ""
    type: string
  }

  measure: count {
    type: count
  }
}
