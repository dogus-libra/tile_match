# The name of this view in Looker is "Live Ops"
view: live_ops {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: tile_match.live_ops ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Active Item Count" in Explore.

  dimension: active_item_count {
    type: string
    sql: ${TABLE}.active_item_count ;;
  }

  dimension: active_item_count_int {
    type: number
    sql: ${TABLE}.active_item_count_int ;;
  }

  dimension: advertising_id {
    type: string
    sql: ${TABLE}.advertising_id ;;
  }

  dimension: app_version {
    type: string
    sql: ${TABLE}.app_version ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: arrival_ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.arrival_ts ;;
  }

  dimension: build_no {
    type: number
    sql: ${TABLE}.build_no ;;
  }

  dimension: building_item_count {
    type: number
    sql: ${TABLE}.building_item_count ;;
  }

  dimension: connection_type {
    type: number
    sql: ${TABLE}.connection_type ;;
  }

  dimension: environment_id {
    type: string
    sql: ${TABLE}.environment_id ;;
  }

  dimension: event_id {
    type: string
    sql: ${TABLE}.event_id ;;
  }

  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
  }

  dimension: event_previous_id {
    type: string
    sql: ${TABLE}.event_previous_id ;;
  }

  dimension_group: event_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.event_timestamp ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}.event_type ;;
  }

  dimension: event_version {
    type: string
    sql: ${TABLE}.event_version ;;
  }

  dimension_group: installed {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.installed_at ;;
  }

  dimension: inventory_avatar {
    type: number
    sql: ${TABLE}.inventory_avatar ;;
  }

  dimension: inventory_coin {
    type: number
    sql: ${TABLE}.inventory_coin ;;
  }

  dimension: inventory_environment_token {
    type: number
    sql: ${TABLE}.inventory_environment_token ;;
  }

  dimension: inventory_event_score_multiplier {
    type: number
    sql: ${TABLE}.inventory_event_score_multiplier ;;
  }

  dimension: inventory_event_token {
    type: number
    sql: ${TABLE}.inventory_event_token ;;
  }

  dimension: inventory_extra_slot {
    type: number
    sql: ${TABLE}.inventory_extra_slot ;;
  }

  dimension: inventory_extra_time {
    type: number
    sql: ${TABLE}.inventory_extra_time ;;
  }

  dimension: inventory_glove {
    type: number
    sql: ${TABLE}.inventory_glove ;;
  }

  dimension: inventory_life {
    type: number
    sql: ${TABLE}.inventory_life ;;
  }

  dimension: inventory_magic_wand {
    type: number
    sql: ${TABLE}.inventory_magic_wand ;;
  }

  dimension: inventory_magnet {
    type: number
    sql: ${TABLE}.inventory_magnet ;;
  }

  dimension: inventory_shuffle {
    type: number
    sql: ${TABLE}.inventory_shuffle ;;
  }

  dimension: inventory_time_freezer {
    type: number
    sql: ${TABLE}.inventory_time_freezer ;;
  }

  dimension: inventory_toss {
    type: number
    sql: ${TABLE}.inventory_toss ;;
  }

  dimension: ip_address {
    type: string
    sql: ${TABLE}.ip_address ;;
  }

  dimension_group: request {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.request_time ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
  }

  dimension: session_time {
    type: number
    sql: ${TABLE}.session_time ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_session_time {
    type: sum
    sql: ${session_time} ;;  }
  measure: average_session_time {
    type: average
    sql: ${session_time} ;;  }

  dimension: team_activity {
    type: number
    sql: ${TABLE}.team_activity ;;
  }

  dimension: team_id {
    type: number
    sql: ${TABLE}.team_id ;;
  }

  dimension: team_name {
    type: string
    sql: ${TABLE}.team_name ;;
  }

  dimension: team_score {
    type: number
    sql: ${TABLE}.team_score ;;
  }

  dimension: team_size {
    type: number
    sql: ${TABLE}.team_size ;;
  }

  dimension: team_user_life_help_count {
    type: number
    sql: ${TABLE}.team_user_life_help_count ;;
  }

  dimension: team_user_life_req_count {
    type: number
    sql: ${TABLE}.team_user_life_req_count ;;
  }

  dimension: team_user_lifetime_life_help_count {
    type: number
    sql: ${TABLE}.team_user_lifetime_life_help_count ;;
  }

  dimension: team_user_lifetime_life_req_count {
    type: number
    sql: ${TABLE}.team_user_lifetime_life_req_count ;;
  }

  dimension: team_user_lifetime_message_count {
    type: number
    sql: ${TABLE}.team_user_lifetime_message_count ;;
  }

  dimension: team_user_message_count {
    type: number
    sql: ${TABLE}.team_user_message_count ;;
  }

  dimension: user_active_events {
    type: string
    sql: ${TABLE}.user_active_events ;;
  }

  dimension: user_adgroup {
    type: string
    sql: ${TABLE}.user_adgroup ;;
  }

  dimension: user_available_events {
    type: string
    sql: ${TABLE}.user_available_events ;;
  }

  dimension: user_avatar_id {
    type: string
    sql: ${TABLE}.user_avatar_id ;;
  }

  dimension: user_bonus_level_at {
    type: number
    sql: ${TABLE}.user_bonus_level_at ;;
  }

  dimension: user_campaign {
    type: string
    sql: ${TABLE}.user_campaign ;;
  }

  dimension: user_country_code {
    type: string
    sql: ${TABLE}.user_country_code ;;
  }

  dimension: user_creative {
    type: string
    sql: ${TABLE}.user_creative ;;
  }

  dimension: user_current_elo_score {
    type: number
    sql: ${TABLE}.user_current_elo_score ;;
  }

  dimension: user_current_fps {
    type: number
    sql: ${TABLE}.user_current_fps ;;
  }

  dimension: user_device {
    type: string
    sql: ${TABLE}.user_device ;;
  }

  dimension: user_elo_rank {
    type: number
    sql: ${TABLE}.user_elo_rank ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_is_bonus_mode_active {
    type: yesno
    sql: ${TABLE}.user_is_bonus_mode_active ;;
  }

  dimension: user_level_at {
    type: number
    sql: ${TABLE}.user_level_at ;;
  }

  dimension: user_level_id {
    type: string
    sql: ${TABLE}.user_level_id ;;
  }

  dimension: user_manufacturer {
    type: string
    sql: ${TABLE}.user_manufacturer ;;
  }

  dimension: user_network {
    type: string
    sql: ${TABLE}.user_network ;;
  }

  dimension: user_notification_state {
    type: yesno
    sql: ${TABLE}.user_notification_state ;;
  }

  dimension: user_os_version {
    type: string
    sql: ${TABLE}.user_os_version ;;
  }

  dimension: user_pass_stage {
    type: number
    sql: ${TABLE}.user_pass_stage ;;
  }

  dimension: user_pass_type {
    type: string
    sql: ${TABLE}.user_pass_type ;;
  }

  dimension: user_platform {
    type: string
    sql: ${TABLE}.user_platform ;;
  }

  dimension: user_session_count {
    type: number
    sql: ${TABLE}.user_session_count ;;
  }

  dimension: user_split_test_name {
    type: string
    sql: ${TABLE}.user_split_test_name ;;
  }

  dimension: user_test_routing_value {
    type: number
    sql: ${TABLE}.user_test_routing_value ;;
  }

  dimension: user_total_attempt_at_current_lvl {
    type: number
    sql: ${TABLE}.user_total_attempt_at_current_lvl ;;
  }

  dimension: user_total_payment {
    type: number
    sql: ${TABLE}.user_total_payment ;;
  }

  dimension: user_total_session_time {
    type: number
    sql: ${TABLE}.user_total_session_time ;;
  }

  dimension: user_win_streak_count {
    type: number
    sql: ${TABLE}.user_win_streak_count ;;
  }

  dimension: user_win_streak_group {
    type: number
    sql: ${TABLE}.user_win_streak_group ;;
  }
  measure: count {
    type: count
    drill_fields: [team_name, user_split_test_name, event_name]
  }
}
