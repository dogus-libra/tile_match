include: "/models/tile_match.model.lkml"

view: max_attempt_ndt {
  derived_table: {
    distribution: "advertising_id"
    explore_source: progression {
      column: user_level_at {}
      column: advertising_id {}
      column: event_timestamp_date {}
      column: event_timestamp_week {}
      column: installed_date {}
      column: max_att {}

    }
    publish_as_db_view: yes
    sql_trigger_value: select DATE_TRUNC('day',getdate())  ;;
    sortkeys: ["user_level_at","installed_date","event_timestamp_date","event_timestamp_week"]
  }

  dimension: user_level_at {
    description: ""
    type: number
  }

  dimension: advertising_id {
    description: ""
  }

  dimension: event_timestamp_date {
    description: ""
    type: date
  }

  dimension: event_timestamp_week {
    description: ""
    type: date
  }

  dimension: installed_date {
    description: ""
    type: date
  }

  dimension: install_day_of_user {
    type: number
    sql: FLOOR(DATEDIFF(hour,${TABLE}.installed_date,${TABLE}.event_timestamp_date)/24) ;;
  }

  dimension: max_att {
    description: ""
    value_format: "##.00"
    type: number
  }
}
