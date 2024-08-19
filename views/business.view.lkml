# The name of this view in Looker is "Business"
view: business {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: tile_match.business ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Advertising ID" in Explore.

  dimension: advertising_id {
    type: string
    sql: ${TABLE}.advertising_id ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_amount {
    type: sum
    sql: ${amount} ;;  }
  measure: average_amount {
    type: average
    sql: ${amount} ;;  }

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

  dimension: business_event_name {
    type: string
    sql: ${TABLE}.business_event_name ;;
  }

  dimension: connection_type {
    type: number
    sql: ${TABLE}.connection_type ;;
  }

  dimension: currency_change_avatar_amount_type {
    type: string
    sql: ${TABLE}.currency_change_avatar_amount_type ;;
  }

  dimension: currency_change_avatar_change_amount {
    type: number
    sql: ${TABLE}.currency_change_avatar_change_amount ;;
  }

  dimension: currency_change_avatar_current_amount {
    type: number
    sql: ${TABLE}.currency_change_avatar_current_amount ;;
  }

  dimension: currency_change_coin_amount_type {
    type: string
    sql: ${TABLE}.currency_change_coin_amount_type ;;
  }

  dimension: currency_change_coin_change_amount {
    type: number
    sql: ${TABLE}.currency_change_coin_change_amount ;;
  }

  dimension: currency_change_coin_current_amount {
    type: number
    sql: ${TABLE}.currency_change_coin_current_amount ;;
  }

  dimension: currency_change_environment_token_amount_type {
    type: string
    sql: ${TABLE}.currency_change_environment_token_amount_type ;;
  }

  dimension: currency_change_environment_token_change_amount {
    type: number
    sql: ${TABLE}.currency_change_environment_token_change_amount ;;
  }

  dimension: currency_change_environment_token_current_amount {
    type: number
    sql: ${TABLE}.currency_change_environment_token_current_amount ;;
  }

  dimension: currency_change_event_score_multiplier_amount_type {
    type: string
    sql: ${TABLE}.currency_change_event_score_multiplier_amount_type ;;
  }

  dimension: currency_change_event_score_multiplier_change_amount {
    type: number
    sql: ${TABLE}.currency_change_event_score_multiplier_change_amount ;;
  }

  dimension: currency_change_event_score_multiplier_current_amount {
    type: number
    sql: ${TABLE}.currency_change_event_score_multiplier_current_amount ;;
  }

  dimension: currency_change_event_token_amount_type {
    type: string
    sql: ${TABLE}.currency_change_event_token_amount_type ;;
  }

  dimension: currency_change_event_token_change_amount {
    type: number
    sql: ${TABLE}.currency_change_event_token_change_amount ;;
  }

  dimension: currency_change_event_token_current_amount {
    type: number
    sql: ${TABLE}.currency_change_event_token_current_amount ;;
  }

  dimension: currency_change_extra_slot_amount_type {
    type: string
    sql: ${TABLE}.currency_change_extra_slot_amount_type ;;
  }

  dimension: currency_change_extra_slot_change_amount {
    type: number
    sql: ${TABLE}.currency_change_extra_slot_change_amount ;;
  }

  dimension: currency_change_extra_slot_current_amount {
    type: number
    sql: ${TABLE}.currency_change_extra_slot_current_amount ;;
  }

  dimension: currency_change_extra_time_amount_type {
    type: string
    sql: ${TABLE}.currency_change_extra_time_amount_type ;;
  }

  dimension: currency_change_extra_time_change_amount {
    type: number
    sql: ${TABLE}.currency_change_extra_time_change_amount ;;
  }

  dimension: currency_change_extra_time_current_amount {
    type: number
    sql: ${TABLE}.currency_change_extra_time_current_amount ;;
  }

  dimension: currency_change_glove_amount_type {
    type: string
    sql: ${TABLE}.currency_change_glove_amount_type ;;
  }

  dimension: currency_change_glove_change_amount {
    type: number
    sql: ${TABLE}.currency_change_glove_change_amount ;;
  }

  dimension: currency_change_glove_current_amount {
    type: number
    sql: ${TABLE}.currency_change_glove_current_amount ;;
  }

  dimension: currency_change_life_amount_type {
    type: string
    sql: ${TABLE}.currency_change_life_amount_type ;;
  }

  dimension: currency_change_life_change_amount {
    type: number
    sql: ${TABLE}.currency_change_life_change_amount ;;
  }

  dimension: currency_change_life_current_amount {
    type: number
    sql: ${TABLE}.currency_change_life_current_amount ;;
  }

  dimension: currency_change_magic_wand_amount_type {
    type: string
    sql: ${TABLE}.currency_change_magic_wand_amount_type ;;
  }

  dimension: currency_change_magic_wand_change_amount {
    type: number
    sql: ${TABLE}.currency_change_magic_wand_change_amount ;;
  }

  dimension: currency_change_magic_wand_current_amount {
    type: number
    sql: ${TABLE}.currency_change_magic_wand_current_amount ;;
  }

  dimension: currency_change_magnet_amount_type {
    type: string
    sql: ${TABLE}.currency_change_magnet_amount_type ;;
  }

  dimension: currency_change_magnet_change_amount {
    type: number
    sql: ${TABLE}.currency_change_magnet_change_amount ;;
  }

  dimension: currency_change_magnet_current_amount {
    type: number
    sql: ${TABLE}.currency_change_magnet_current_amount ;;
  }

  dimension: currency_change_shuffle_amount_type {
    type: string
    sql: ${TABLE}.currency_change_shuffle_amount_type ;;
  }

  dimension: currency_change_shuffle_change_amount {
    type: number
    sql: ${TABLE}.currency_change_shuffle_change_amount ;;
  }

  dimension: currency_change_shuffle_current_amount {
    type: number
    sql: ${TABLE}.currency_change_shuffle_current_amount ;;
  }

  dimension: currency_change_time_freezer_amount_type {
    type: string
    sql: ${TABLE}.currency_change_time_freezer_amount_type ;;
  }

  dimension: currency_change_time_freezer_change_amount {
    type: number
    sql: ${TABLE}.currency_change_time_freezer_change_amount ;;
  }

  dimension: currency_change_time_freezer_current_amount {
    type: number
    sql: ${TABLE}.currency_change_time_freezer_current_amount ;;
  }

  dimension: currency_change_toss_amount_type {
    type: string
    sql: ${TABLE}.currency_change_toss_amount_type ;;
  }

  dimension: currency_change_toss_change_amount {
    type: number
    sql: ${TABLE}.currency_change_toss_change_amount ;;
  }

  dimension: currency_change_toss_current_amount {
    type: number
    sql: ${TABLE}.currency_change_toss_current_amount ;;
  }

  dimension: currency_code {
    type: string
    sql: ${TABLE}.currency_code ;;
  }

  dimension: duration {
    type: number
    sql: ${TABLE}.duration ;;
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

  dimension: initialized {
    type: yesno
    sql: ${TABLE}.initialized ;;
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

  dimension: package_coefficient {
    type: number
    sql: ${TABLE}.package_coefficient ;;
  }

  dimension: package_id {
    type: number
    sql: ${TABLE}.package_id ;;
  }

  dimension: purchase_source {
    type: number
    sql: ${TABLE}.purchase_source ;;
  }

  dimension: receipt_info {
    type: string
    sql: ${TABLE}.receipt_info ;;
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

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: store_visit_source {
    type: number
    sql: ${TABLE}.store_visit_source ;;
  }

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

  dimension: user_split_test_name_target {
    type: string
    sql:  case when ${TABLE}.user_split_test_name = '2' then 'W/out Target'
               when ${TABLE}.user_split_test_name = '6' then 'Target'
          end ;;
  }

  dimension: user_split_test_name_tutorial {
    type: string
    sql:  case when ${TABLE}.user_split_test_name = '["MetaTutorialsActive","BalancedLevels"]' OR ${TABLE}.user_split_test_name = '["MetaTutorialsActive","OldLevels"]' then 'MetaTutorialActive'
               when ${TABLE}.user_split_test_name = '["MetaTutorialsPassive","BalancedLevels"]' OR ${TABLE}.user_split_test_name = '["MetaTutorialsPassive","OldLevels"]' then 'MetaTutorialPasssive'
          end ;;
  }

  dimension: user_split_test_name_balance {
    type: string
    sql:  case when ${TABLE}.user_split_test_name = '["MetaTutorialsPassive","BalancedLevels"]' OR ${TABLE}.user_split_test_name = '["MetaTutorialsActive","BalancedLevels"]' then 'BalancedLevels'
               when ${TABLE}.user_split_test_name = '["MetaTutorialsActive","OldLevels"]' OR ${TABLE}.user_split_test_name = '["MetaTutorialsPassive","OldLevels"]' then 'OldLevels'
          end ;;
  }

  dimension: user_split_test_name_elements {
    type: string
    sql:  case when ${TABLE}.user_split_test_name = '["DefaultElements","PassiveTutorials"]' OR ${TABLE}.user_split_test_name = '["DefaultElements","SimplifiedTutorials"]' then 'DefaultElements'
               when ${TABLE}.user_split_test_name = '["SimplifiedElements","PassiveTutorials"]' OR ${TABLE}.user_split_test_name = '["SimplifiedElements","SimplifiedTutorials"]' then 'SimplifiedElements'
          end ;;
  }

  dimension: user_split_test_name_simplifiedTutorials {
    type: string
    sql:  case when ${TABLE}.user_split_test_name = '["DefaultElements","PassiveTutorials"]' OR ${TABLE}.user_split_test_name = '["SimplifiedElements","PassiveTutorials"]' then 'PassiveTutorials'
               when ${TABLE}.user_split_test_name = '["DefaultElements","SimplifiedTutorials"]' OR ${TABLE}.user_split_test_name = '["SimplifiedElements","SimplifiedTutorials"]' then 'SimplifiedTutorials'
          end ;;
  }

  dimension: user_split_test_name_challengeLevel {
    type: string
    sql:  case when ${TABLE}.user_split_test_name = '["1608ChallengeLevels","CollectAndWinActive"]' OR ${TABLE}.user_split_test_name = '["1608ChallengeLevels","CollectAndWinPassive"]' then 'ChallengeLevels'
               when ${TABLE}.user_split_test_name = '["1608NormalLevels","CollectAndWinActive"]' OR ${TABLE}.user_split_test_name = '["1608NormalLevels","CollectAndWinPassive"]' then 'NormalLevels'
          end ;;
  }

  dimension: user_split_test_name_collectAndWin {
    type: string
    sql:  case when ${TABLE}.user_split_test_name = '["1608ChallengeLevels","CollectAndWinActive"]' OR ${TABLE}.user_split_test_name = '["1608NormalLevels","CollectAndWinActive"]' then 'CollectAndWinActive'
               when ${TABLE}.user_split_test_name = '["1608ChallengeLevels","CollectAndWinPassive"]' OR ${TABLE}.user_split_test_name = '["1608NormalLevels","CollectAndWinPassive"]' then 'CollectAndWinPassive'
          end ;;
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
    drill_fields: [business_event_name, team_name, user_split_test_name, event_name]
  }
}
