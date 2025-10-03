view: social {
  sql_table_name: tile_match.social ;;

  dimension: advertising_id {
    type: string
    sql: ${TABLE}.advertising_id ;;
  }
  dimension: app_version {
    type: string
    sql: ${TABLE}.app_version ;;
  }
  dimension_group: arrival_ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.arrival_ts ;;
  }
  dimension: build_no {
    type: number
    sql: ${TABLE}.build_no ;;
  }
  dimension: connection_type {
    type: number
    sql: ${TABLE}.connection_type ;;
  }
  dimension: ego_free_win_streak_count {
    type: string
    sql: ${TABLE}.ego_free_win_streak_count ;;
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
  dimension: team_activity {
    type: number
    sql: ${TABLE}.team_activity ;;
  }
  dimension: team_event_message_text {
    type: string
    sql: ${TABLE}.team_event_message_text ;;
  }
  dimension: team_event_team_id {
    type: string
    sql: ${TABLE}.team_event_team_id ;;
  }
  dimension: team_event_user_id {
    type: string
    sql: ${TABLE}.team_event_user_id ;;
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
  dimension: user_adjust_ad_id {
    type: string
    sql: ${TABLE}.user_adjust_ad_id ;;
  }
  dimension: user_af_campaign {
    type: string
    sql: ${TABLE}.user_af_campaign ;;
  }
  dimension: user_af_campaign_code {
    type: string
    sql: ${TABLE}.user_af_campaign_code ;;
  }
  dimension: user_apps_flyer_id {
    type: string
    sql: ${TABLE}.user_apps_flyer_id ;;
  }
  dimension: user_available_events {
    type: string
    sql: ${TABLE}.user_available_events ;;
  }
  dimension: user_avatar_id {
    type: string
    sql: ${TABLE}.user_avatar_id ;;
  }
  dimension: user_balance_version {
    type: string
    sql: ${TABLE}.user_balance_version ;;
  }
  dimension: user_bonus_level_at {
    type: number
    sql: ${TABLE}.user_bonus_level_at ;;
  }
  dimension: user_campaign {
    type: string
    sql: ${TABLE}.user_campaign ;;
  }
  dimension: user_campaign_code {
    type: string
    sql: ${TABLE}.user_campaign_code ;;
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
  dimension: user_difficulty_elo_score {
    type: number
    sql: ${TABLE}.user_difficulty_elo_score ;;
  }
  dimension: user_elo_rank {
    type: number
    sql: ${TABLE}.user_elo_rank ;;
  }
  dimension: user_fb_install_referrer_account_id {
    type: string
    sql: ${TABLE}.user_fb_install_referrer_account_id ;;
  }
  dimension: user_fb_install_referrer_ad_id {
    type: string
    sql: ${TABLE}.user_fb_install_referrer_ad_id ;;
  }
  dimension: user_fb_install_referrer_ad_objective_name {
    type: string
    sql: ${TABLE}.user_fb_install_referrer_ad_objective_name ;;
  }
  dimension: user_fb_install_referrer_adgroup_id {
    type: string
    sql: ${TABLE}.user_fb_install_referrer_adgroup_id ;;
  }
  dimension: user_fb_install_referrer_adgroup_name {
    type: string
    sql: ${TABLE}.user_fb_install_referrer_adgroup_name ;;
  }
  dimension: user_fb_install_referrer_campaign_group_id {
    type: string
    sql: ${TABLE}.user_fb_install_referrer_campaign_group_id ;;
  }
  dimension: user_fb_install_referrer_campaign_group_name {
    type: string
    sql: ${TABLE}.user_fb_install_referrer_campaign_group_name ;;
  }
  dimension: user_fb_install_referrer_campaign_id {
    type: string
    sql: ${TABLE}.user_fb_install_referrer_campaign_id ;;
  }
  dimension: user_fb_install_referrer_campaign_name {
    type: string
    sql: ${TABLE}.user_fb_install_referrer_campaign_name ;;
  }
  dimension: user_fb_install_referrer_publisher_platform {
    type: string
    sql: ${TABLE}.user_fb_install_referrer_publisher_platform ;;
  }
  dimension: user_game_mode {
    type: number
    sql: ${TABLE}.user_game_mode ;;
  }
  dimension: user_grand_mode_level {
    type: number
    sql: ${TABLE}.user_grand_mode_level ;;
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
    type: number
    sql: ${TABLE}.user_level_id ;;
  }
  dimension: user_level_id_string {
    type: string
    sql: ${TABLE}.user_level_id_string ;;
  }
  dimension_group: user_level_update {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.user_level_update_date ;;
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
  dimension_group: user_remote_config_update {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.user_remote_config_update_date ;;
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
  dimension: user_total_valid_attempt_at_current_level {
    type: number
    sql: ${TABLE}.user_total_valid_attempt_at_current_level ;;
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
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	user_fb_install_referrer_adgroup_name,
	user_fb_install_referrer_campaign_name,
	user_fb_install_referrer_campaign_group_name,
	user_fb_install_referrer_ad_objective_name,
	team_name,
	user_split_test_name,
	event_name
	]
  }

}
