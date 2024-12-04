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

  dimension: connection_type {
    type: number
    sql: ${TABLE}.connection_type ;;
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

  dimension: live_ops_complete_ratio {
    type: number
    sql: ${TABLE}.live_ops_complete_ratio ;;
  }

  dimension: live_ops_connection_error {
    type: yesno
    sql: ${TABLE}.live_ops_connection_error ;;
  }

  dimension: live_ops_event_name {
    type: string
    sql: ${TABLE}.live_ops_event_name ;;
  }

  dimension: live_ops_racers_group_id {
    type: string
    sql: ${TABLE}.live_ops_racers_group_id ;;
  }

  dimension: live_ops_ranking {
    type: number
    sql: ${TABLE}.live_ops_ranking ;;
  }

  dimension: live_ops_score {
    type: number
    sql: ${TABLE}.live_ops_score ;;
  }

  dimension_group: live_ops_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.live_ops_start_date ;;
  }

  dimension: live_ops_step {
    type: number
    sql: ${TABLE}.live_ops_step ;;
  }

  dimension: live_ops_template_id {
    type: string
    sql: ${TABLE}.live_ops_template_id ;;
  }

  dimension: live_ops_is_free {
    type: yesno
    sql: ${TABLE}.live_ops_is_free ;;
  }

  dimension: live_ops_bonus_bank_score {
    type: number
    sql: ${TABLE}.live_ops_bonus_bank_score ;;
  }

  dimension: live_ops_default_stage_index {
    type: number
    sql: ${TABLE}.live_ops_default_stage_index ;;
  }

  dimension: live_ops_bonus_bank_reward_collected {
    type: yesno
    sql: ${TABLE}.live_ops_bonus_bank_reward_collected ;;
  }

  dimension: live_ops_default_stage_count {
    type: number
    sql: ${TABLE}.live_ops_default_stage_count ;;
  }

  dimension: live_ops_bonus_bank_max_score {
    type: number
    sql: ${TABLE}.live_ops_bonus_bank_max_score ;;
  }

  dimension: live_ops_pass_type {
    type: string
    sql: ${TABLE}.live_ops_pass_type ;;
  }

  dimension: live_ops_is_accepted {
    type: yesno
    sql: ${TABLE}.live_ops_is_accepted ;;
  }

  dimension: live_ops_purchase_source {
    type: number
    sql: ${TABLE}.live_ops_purchase_source ;;
  }

  dimension: live_ops_purchase_source_str {
    type: string
    sql: case when ${live_ops_purchase_source} = 0 then 'None'
              when ${live_ops_purchase_source} = 1 then 'Store'
              when ${live_ops_purchase_source} = 2 then 'StarterPackPanel'
              when ${live_ops_purchase_source} = 3 then 'StarterPackStore'
              when ${live_ops_purchase_source} = 4 then 'StarterPackEndGame'
              when ${live_ops_purchase_source} = 5 then 'SeasonalPassPremiumOfferPanel'
              when ${live_ops_purchase_source} = 6 then 'SeasonalPassSuperOfferPanel'
              when ${live_ops_purchase_source} = 7 then 'SeasonalPassLastChancePanel'
              when ${live_ops_purchase_source} = 8 then 'SeasonalPassFullScreenPanel'
              when ${live_ops_purchase_source} = 9 then 'SeasonalPassEndGameOfferPanel' end ;;
  }

  dimension: live_ops_store_open_source {
    type: number
    sql: ${TABLE}.live_ops_store_open_source ;;
  }

  dimension: live_ops_store_open_source_str {
    type: string
    sql: case when ${live_ops_store_open_source} = 0 then 'None'
              when ${live_ops_store_open_source} = 1 then 'BoosterExchangePanelMenu'
              when ${live_ops_store_open_source} = 2 then 'BoosterExchangePanelGamePlay'
              when ${live_ops_store_open_source} = 3 then 'CoinIndicatorMenu'
              when ${live_ops_store_open_source} = 4 then 'CoinIndicatorGamePlay'
              when ${live_ops_store_open_source} = 5 then 'LifeIndicatorMenu'
              when ${live_ops_store_open_source} = 6 then 'LifeIndicatorGamePlay'
              when ${live_ops_store_open_source} = 7 then 'ExtraLifePanelMenu'
              when ${live_ops_store_open_source} = 8 then 'ExtraLifePanelGamePlay'
              when ${live_ops_store_open_source} = 9 then 'EndGameOfferPanel'
              when ${live_ops_store_open_source} = 9 then 'MenuStoreButton'
              when ${live_ops_store_open_source} = 9 then 'MenuSwipe' end ;;
  }

  dimension: live_ops_claimed_stage {
    type: number
    sql: ${TABLE}.live_ops_claimed_stage ;;
  }

  dimension: live_ops_quest {
    type: string
    sql: ${TABLE}.live_ops_quest ;;
  }

  dimension: live_ops_engagement_type {
    type: number
    sql: ${TABLE}.live_ops_engagement_type ;;
  }

  dimension: live_ops_target {
    type: number
    sql: ${TABLE}.live_ops_target ;;
  }

  dimension: live_ops_elo_rank {
    type: number
    sql: ${TABLE}.live_ops_elo_rank ;;
  }

  dimension: live_ops_is_bonus {
    type: yesno
    sql: ${TABLE}.live_ops_is_bonus ;;
  }

  dimension: live_ops_difficulty {
    type: number
    sql: ${TABLE}.live_ops_difficulty ;;
  }

  dimension_group: live_ops_start_time {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.live_ops_start_time ;;
  }

  dimension: meta_active_item_count_int {
    type: number
    sql: ${TABLE}.active_item_count_int ;;
  }

  dimension: meta_building_item_count {
    type: number
    sql: ${TABLE}.building_item_count ;;
  }

  dimension: meta_environment_id {
    type: string
    sql: ${TABLE}.environment_id ;;
  }

  dimension: meta_item_id {
    type: string
    sql: ${TABLE}.item_id ;;
  }

  dimension: meta_tap_count {
    type: number
    sql: ${TABLE}.tap_count ;;
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
    sql:  case when ${TABLE}.user_split_test_name like '%MetaTutorialsActive%' then 'MetaTutorialActive'
               when ${TABLE}.user_split_test_name like '%MetaTutorialsPassive%' then 'MetaTutorialsPassive'
          end ;;
  }

  dimension: user_split_test_name_balance {
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%BalancedLevels%' then 'BalancedLevels'
               when ${TABLE}.user_split_test_name like '%OldLevels%' then 'OldLevels'
          end ;;
  }

  dimension: user_split_test_name_elements {
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%DefaultElements%' then 'DefaultElements'
               when ${TABLE}.user_split_test_name like '%SimplifiedElements%' then 'SimplifiedElements'
          end ;;
  }

  dimension: user_split_test_name_simplifiedTutorials {
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%PassiveTutorials%' then 'PassiveTutorials'
               when ${TABLE}.user_split_test_name like '%SimplifiedTutorials%' then 'SimplifiedTutorials'
          end ;;
  }

  dimension: user_split_test_name_challengeLevel {
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%ChallengeLevels%' then 'ChallengeLevels'
               when ${TABLE}.user_split_test_name like '%NormalLevels%' then 'NormalLevels'
          end ;;
  }

  dimension: user_split_test_name_collectAndWin {
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%CollectAndWinActive%' then 'CollectAndWinActive'
               when ${TABLE}.user_split_test_name like '%CollectAndWinPassive%' then 'CollectAndWinPassive'
          end ;;
  }

  dimension: user_split_test_name_TF_TT_levels {
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%2908Default%' then 'DefaultLevels'
               when ${TABLE}.user_split_test_name like '%2908TF%' then 'TileFamilyLevels'
               when ${TABLE}.user_split_test_name like '%2908TT%' then 'TripleTilesLevels'
          end ;;
  }

  dimension: user_split_test_name_more_challenged_levels{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%0609DefaultLevels%' then 'DefaultLevels'
               when ${TABLE}.user_split_test_name like '%0609DefaultChallenged%' then 'DefaultChallenged'
               when ${TABLE}.user_split_test_name like '%0609SimplifiedChallenged%' then 'SimplifiedChallenged'
          end ;;
  }

  dimension: user_split_test_name_TF_challenged{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%1309DefaultChallenged%' then 'DefaultChallenged'
               when ${TABLE}.user_split_test_name like '%1309SimplifiedChallenged%' then 'SimplifiedChallenged'
               when ${TABLE}.user_split_test_name like '%1309TFLevels%' then 'TileFamilyLevels'
          end ;;
  }

  dimension: user_split_test_name_Ruby_Rush{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%1309RubyRushActive%' then 'Ruby Rush Active'
               when ${TABLE}.user_split_test_name like '%1309RubyRushPassive%' then 'Ruby Rush Passive'
          end ;;
  }

  dimension: user_split_test_name_level_test{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%2009DefaultChallenged%' then 'Default Challenged'
               when ${TABLE}.user_split_test_name like '%2009SimplifiedChallenged%' then 'Simplified Challenged'
               when ${TABLE}.user_split_test_name like '%2009NewOrder%' then 'New Order'
               when ${TABLE}.user_split_test_name like '%2009TF%' then 'TF'
          end ;;
  }

  dimension: user_split_test_name_Dynamic_Backgrounds{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%2709_DefaultBackground%' then 'Default Background'
               when ${TABLE}.user_split_test_name like '%2709_DynamicBackgrounds%' then 'Dynamic Backgrounds'
          end ;;
  }

  dimension: user_split_test_name_LevelDetails_PopUp{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%2709_AggresiveLevelDetailsPopUp%' then 'Aggresive Level Details PopUp'
               when ${TABLE}.user_split_test_name like '%2709_DefaultLevelDetailsPopUp%' then 'Default Level Details PopUp'
          end ;;
  }

  dimension: user_split_test_name_New_Balanced_Levels{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%0110BalancedLevels%' then 'Balanced Levels'
               when ${TABLE}.user_split_test_name like '%0110DefaultLevels%' then 'Default Levels'
          end ;;
  }

  dimension: user_split_test_name_Initial_Coin{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%1110_InitialCoin200"%' then 'Initial Coin 200'
               when ${TABLE}.user_split_test_name like '%1110_InitialCoin300%' then 'Initial Coin 300'
               when ${TABLE}.user_split_test_name like '%1110_InitialCoin400%' then 'Initial Coin 400'
               when ${TABLE}.user_split_test_name like '%1110_InitialCoin2000%' then 'Initial Coin 2000'
          end ;;
  }

  dimension: user_split_test_name_Seasonal_Pass{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%1101_SeasonalPassActive%' then 'Seasonal Pass Active'
               when ${TABLE}.user_split_test_name like '%1101_SeasonalPassPassive%' then 'Seasonal Pass Passive'
          end ;;
  }

  dimension: user_split_test_name_Well_Balanced_Levels{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%1110_WellBalancedLevels%' then 'Well Balanced Levels'
               when ${TABLE}.user_split_test_name like '%1110_DefaultLevels%' then 'Default Levels'
          end ;;
  }

  dimension: user_split_test_name_Stamp_Mission{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%2510_StampMissionActive%' then 'Stamp Mission Active'
               when ${TABLE}.user_split_test_name like '%2510_StampMissionPassive%' then 'Stamp Mission Passive'
          end ;;
  }

  dimension: user_split_test_name_Meta_Flow{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%2510_MetaAuto%' then 'Meta Auto'
               when ${TABLE}.user_split_test_name like '%2510_MetaDefault%' then 'Meta Default'
          end ;;
  }

  dimension: user_split_test_name_Pass_Tutorial{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%2510_PassTutorialDefault%' then 'Default'
               when ${TABLE}.user_split_test_name like '%2510_PassTutorialIgnoreInfo%' then 'Ignore Info'
               when ${TABLE}.user_split_test_name like '%2510_PassTutorialIgnoreButton%' then 'Ignore Button'
          end ;;
  }

  dimension: user_split_test_name_Stamp_Mission_Tutorial{
    type: string
    sql: case when ${TABLE}.user_split_test_name like '%2510_StampMissionActive%' then (case when ${TABLE}.user_split_test_name like '%2510_StampMissionTutorialsActive%' then 'Tutorials Active'
               when ${TABLE}.user_split_test_name like '%2510_StampMissionTutorialsPassive%' then 'Tutorials Passive'
          end) end ;;
  }

  dimension: user_split_test_name_Level_Balance{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%2510_BalancedLevels%' then 'Balanced Levels'
               when ${TABLE}.user_split_test_name like '%2510_DefaultLevels%' then 'Default Levels'
          end ;;
  }

  dimension: user_split_test_name_Time_Balance{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%0811_TimeBalanced%' then 'Time Balanced Levels'
               when ${TABLE}.user_split_test_name like '%0811_OldLevels%' then 'Old Levels'
          end ;;
  }

  dimension: user_split_test_name_Real_Time_Balance{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%1311_TimeBalanced%' then 'Time Balanced Levels'
               when ${TABLE}.user_split_test_name like '%1311_OldLevels%' then 'Old Levels'
               when ${TABLE}.user_split_test_name like '%1311_Balanced%' then 'Balanced Levels'
          end ;;
  }

  dimension: user_split_test_name_Oz_Balance{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%2211_DefaultLevels%' then 'Default Levels'
               when ${TABLE}.user_split_test_name like '%2211_BalancedLevels%' then 'Balanced Levels'
          end ;;
  }

  dimension: user_split_test_name_Level_Coin{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%2211_DefaultCoin%' then 'Default Coin'
               when ${TABLE}.user_split_test_name like '%2211_NoCoin%' then 'No Coin'
          end ;;
  }

  dimension: user_split_test_name_Fortune_Forest{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%2211_ActiveFortune%' then 'Fortune Forest Active'
               when ${TABLE}.user_split_test_name like '%2211_PassiveFortune%' then 'Fortune Forest Passive'
          end ;;
  }

  dimension: user_split_test_name_Oz_Hakiki_Balance{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%2811_DefaultLevels%' then 'Default Levels'
               when ${TABLE}.user_split_test_name like '%2811_BalancedLevels%' then 'Balanced Levels'
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
    type: string
    sql: case when ${TABLE}.user_win_streak_group is null then 'Default'
              when ${TABLE}.user_win_streak_group = 1 then 'Streak1'
              when ${TABLE}.user_win_streak_group = 2 then 'Streak2'
              when ${TABLE}.user_win_streak_group = 3 then 'Streak3'
              when ${TABLE}.user_win_streak_group = 4 then 'Streak4'
              when ${TABLE}.user_win_streak_group = 5 then 'Streak5' end;;
  }

  measure: count {
    type: count
    drill_fields: [live_ops_event_name, user_split_test_name, event_name, team_name]
  }

  measure: total_duration {
    type: sum
    sql: ${duration} ;;
  }

  measure: average_duration {
    type: average
    sql: ${duration} ;;
  }
}
