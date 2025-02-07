include: "/models/tile_match.model.lkml"

view: max_attempt_ndt {
  derived_table: {
    distribution: "advertising_id"
    explore_source: progression {
      column: user_level_at {}
      column: advertising_id {}
      column: event_timestamp_date {}
      column: event_timestamp_week {}
      column: event_version {}
      column: user_game_mode {}
      column: connection_type {}
      column: installed_date {}
      column: max_att {}
      column: user_split_test_name {}
      column: user_balance_version {}
      column: user_win_streak_group {}
      column: app_version {}

    }
    publish_as_db_view: yes
    sql_trigger_value: SELECT TRUNC((DATE_PART('hour', SYSDATE))/4)  ;;
    sortkeys: ["user_level_at","installed_date","event_timestamp_date","event_timestamp_week"]
  }

  dimension: user_level_at {
    description: ""
    type: number
  }

  dimension: advertising_id {
    description: ""
    type: string
  }

  dimension: app_version {
    description: ""
    type: string
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

  dimension: user_split_test_name {
    description: ""
    type: string
  }

  dimension: user_balance_version {
    description: ""
    type: string
  }

  dimension: event_version {
    description: ""
    type: string
  }

  dimension: user_game_mode {
    description: ""
    type: string
  }

  dimension: connection_type {
    type: number
    sql: ${TABLE}.connection_type ;;
  }

  dimension: user_win_streak_group {
    description: ""
    type: string
  }

  dimension: max_att {
    description: ""
    value_format: "##.00"
    type: number
  }
}
