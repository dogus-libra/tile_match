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

  dimension: completed_ad_count {
    type: number
    sql: ${TABLE}.completed_ad_count ;;
  }

  dimension: completed_rewarded_count_in_day {
    type: number
    sql: ${TABLE}.completed_rewarded_count_in_day ;;
  }

  dimension: completed_rewarded_count_in_session {
    type: number
    sql: ${TABLE}.completed_rewarded_count_in_session ;;
  }

  dimension: completed_rewarded_count_alltime {
    type: number
    sql: ${TABLE}.completed_rewarded_count_alltime ;;
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

  dimension: displayed_ad_count {
    type: number
    sql: ${TABLE}.displayed_ad_count ;;
  }

  dimension: displayed_ad_count_in_level {
    type: number
    sql: ${TABLE}.displayed_ad_count_in_level ;;
  }

  dimension: displayed_rewarded_count_in_day {
    type: number
    sql: ${TABLE}.displayed_rewarded_count_in_day ;;
  }

  dimension: displayed_rewarded_count_in_session {
    type: number
    sql: ${TABLE}.displayed_rewarded_count_in_session ;;
  }

  dimension: displayed_rewarded_count_alltime {
    type: number
    sql: ${TABLE}.displayed_rewarded_count_alltime ;;
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

  dimension: goodwill_pass_purchase_details_pass_type {
    type: number
    sql: ${TABLE}.goodwill_pass_purchase_details_pass_type ;;
  }

  dimension: goodwill_pass_purchase_details_step {
    type: number
    sql: ${TABLE}.goodwill_pass_purchase_details_step ;;
  }

  dimension_group: goodwill_pass_purchase_details_start_date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.goodwill_pass_purchase_details_start_date ;;
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

  dimension_group: pay_and_proceed_purchase_details_start_day {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.pay_and_proceed_purchase_details_start_day ;;
  }

  dimension: pay_and_proceed_purchase_details_step {
    type: number
    sql: ${TABLE}.pay_and_proceed_purchase_details_step ;;
  }

  dimension: pay_and_proceed_purchase_details_template_id {
    type: string
    sql: ${TABLE}.pay_and_proceed_purchase_details_template_id ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.position ;;
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

  dimension: rewarded_ad_limit_in_session {
    type: number
    sql: ${TABLE}.rewarded_ad_limit_in_session ;;
  }

  dimension: rewarded_ad_limit_in_day {
    type: number
    sql: ${TABLE}.rewarded_ad_limit_in_day ;;
  }

  dimension: rewarded_ad_type {
    type: number
    sql: ${TABLE}.rewarded_ad_type ;;
  }

  dimension: rewarded_ad_type_str {
    type: string
    sql: case when ${TABLE}.rewarded_ad_type = 0 then  'StartGameWithExtraSlot'
              when ${TABLE}.rewarded_ad_type = 1 then  'StartGameWithBoosters'
              when ${TABLE}.rewarded_ad_type = 2 then  'RetryGameWithBoosters'
              when ${TABLE}.rewarded_ad_type = 3 then  'ContinueGameWithEndGameOffer'
              when ${TABLE}.rewarded_ad_type = 4 then  'GetInGameBoosters'
              when ${TABLE}.rewarded_ad_type = 5 then  'GetExtraLives'

        end ;;
  }

  dimension: rewarded_ad_reward_coin_amount {
    type: number
    sql: ${TABLE}.rewarded_ad_reward_coin_amount ;;
  }

  dimension: rewarded_ad_reward_coin_amount_type {
    type: string
    sql: ${TABLE}.rewarded_ad_reward_coin_amount_type ;;
  }

  dimension: rewarded_ad_reward_environment_token_amount {
    type: number
    sql: ${TABLE}.rewarded_ad_reward_environment_token_amount ;;
  }

  dimension: rewarded_ad_reward_environment_token_amount_type {
    type: string
    sql: ${TABLE}.rewarded_ad_reward_environment_token_amount_type ;;
  }

  dimension: rewarded_ad_reward_event_score_multiplier_amount {
    type: number
    sql: ${TABLE}.rewarded_ad_reward_event_score_multiplier_amount ;;
  }

  dimension: rewarded_ad_reward_event_score_multiplier_amount_type {
    type: string
    sql: ${TABLE}.rewarded_ad_reward_event_score_multiplier_amount_type ;;
  }

  dimension: rewarded_ad_reward_event_token_amount {
    type: number
    sql: ${TABLE}.rewarded_ad_reward_event_token_amount ;;
  }

  dimension: rewarded_ad_reward_event_token_amount_type {
    type: string
    sql: ${TABLE}.rewarded_ad_reward_event_token_amount_type ;;
  }

  dimension: rewarded_ad_reward_extra_slot_amount {
    type: number
    sql: ${TABLE}.rewarded_ad_reward_extra_slot_amount ;;
  }

  dimension: rewarded_ad_reward_extra_slot_amount_type {
    type: string
    sql: ${TABLE}.rewarded_ad_reward_extra_slot_amount_type ;;
  }

  dimension: rewarded_ad_reward_extra_time_amount {
    type: number
    sql: ${TABLE}.rewarded_ad_reward_extra_time_amount ;;
  }

  dimension: rewarded_ad_reward_extra_time_amount_type {
    type: string
    sql: ${TABLE}.rewarded_ad_reward_extra_time_amount_type ;;
  }

  dimension: rewarded_ad_reward_avatar_amount {
    type: number
    sql: ${TABLE}.rewarded_ad_reward_avatar_amount ;;
  }

  dimension: rewarded_ad_reward_avatar_amount_type {
    type: string
    sql: ${TABLE}.rewarded_ad_reward_avatar_amount_type ;;
  }

  dimension: rewarded_ad_reward_magic_wand_amount {
    type: number
    sql: ${TABLE}.rewarded_ad_reward_magic_wand_amount ;;
  }

  dimension: rewarded_ad_reward_magic_wand_amount_type {
    type: string
    sql: ${TABLE}.rewarded_ad_reward_magic_wand_amount_type ;;
  }

  dimension: rewarded_ad_reward_magnet_amount {
    type: number
    sql: ${TABLE}.rewarded_ad_reward_magnet_amount ;;
  }

  dimension: rewarded_ad_reward_magnet_amount_type {
    type: string
    sql: ${TABLE}.rewarded_ad_reward_magnet_amount_type ;;
  }

  dimension: rewarded_ad_reward_shuffle_amount {
    type: number
    sql: ${TABLE}.rewarded_ad_reward_shuffle_amount ;;
  }

  dimension: rewarded_ad_reward_shuffle_amount_type {
    type: string
    sql: ${TABLE}.rewarded_ad_reward_shuffle_amount_type ;;
  }

  dimension: rewarded_ad_reward_glove_amount {
    type: number
    sql: ${TABLE}.rewarded_ad_reward_glove_amount ;;
  }

  dimension: rewarded_ad_reward_glove_amount_type {
    type: string
    sql: ${TABLE}.rewarded_ad_reward_glove_amount_type ;;
  }

  dimension: rewarded_ad_reward_life_amount {
    type: number
    sql: ${TABLE}.rewarded_ad_reward_life_amount ;;
  }

  dimension: rewarded_ad_reward_life_amount_type {
    type: string
    sql: ${TABLE}.rewarded_ad_reward_life_amount_type ;;
  }

  dimension: rewarded_ad_reward_time_freezer_amount {
    type: number
    sql: ${TABLE}.rewarded_ad_reward_time_freezer_amount ;;
  }

  dimension: rewarded_ad_reward_time_freezer_amount_type {
    type: string
    sql: ${TABLE}.rewarded_ad_reward_time_freezer_amount_type ;;
  }

  dimension: rewarded_ad_reward_toss_amount {
    type: number
    sql: ${TABLE}.rewarded_ad_reward_toss_amount ;;
  }

  dimension: rewarded_ad_reward_toss_amount_type {
    type: string
    sql: ${TABLE}.rewarded_ad_reward_toss_amount_type ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
  }

  dimension: session_time {
    type: number
    sql: ${TABLE}.session_time ;;
  }

  dimension: special_offer_details_id {
    type: string
    sql: ${TABLE}.special_offer_details_id ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: step {
    type: number
    sql: ${TABLE}.step ;;
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

  dimension: user_game_mode {
    type: string
    sql: case when ${TABLE}.user_game_mode is null then 'Normal'
              when ${TABLE}.user_game_mode = 1 then 'Grand Mode' end;;
  }

  dimension: user_grand_mode_level {
    type: number
    sql: ${TABLE}.user_grand_mode_level ;;
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

  dimension: user_af_campaign {
    type: string
    sql: ${TABLE}.user_campaign ;;
  }

  dimension: user_af_campaign_code {
    type: string
    sql: ${TABLE}.user_campaign_code ;;
  }

  dimension: user_country_code {
    type: string
    sql: ${TABLE}.user_country_code ;;
  }

  dimension: country_tier {
    type: string
    sql: case when ${user_country_code} in ('AU','AT','BE','BN','CA','KY','DK','FI','FR','DE','GL','HK','IS','IE','IM','IL','LI','LU','NL','NZ','NO','QA','SG','SE','CH','AE','GB','US','ES','IT','JP','KR','SA')
              then 'Tier 1'
              when ${user_country_code} in ('AD','AG','AR','AW','AZ','BS','BH','BB','BY','BA','BW','BR','IO','BG','BQ','CL','CN','CK','CR','HR','CU','CW','CY','CZ','DM','DO','EE','GF','PF','GA','GE','GR','GD','GP','GU','GG','GY','HU','IR','JE','KZ','KW','LV','LT','MO','MY','MV','MT','MQ','MU','YT','MX','ME','NR','NC','MK','OM','PA','PE','PL','PT','PR','RE','RO','RU','ST','RS','SC','SX','SK','SI','ZA','BL','KN','LC','PM','VC','TW','TH','TR','TM','VI','UY')
              then 'Tier 2'
              when ${user_country_code} in ('AF','AL','DZ','AO','AM','BD','BZ','BJ','BT','BO','BF','BI','KH','CM','CV','CF','TD','CO','CG','CD','CI','DJ','EC','EG','SV','SZ','ET','FJ','GM','GH','GT','GN','HT','HN','IN','ID','IQ','JM','JO','KE','XK','KG','LA','LB','LR','LY','MG','MW','ML','MR','MD','MN','MA','MZ','MM','NA','NP','NI','NG','PK','PS','PG','PY','PH','RW','SN','SL','SB','SO','SS','LK','SD','SR','SY','TJ','TZ','TL','TG','TT','TN','UG','UA','UZ','VU','VE','VN','EH','YE','ZM','ZW')
              then 'Tier 3'
              else ${user_country_code} end;;
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

  dimension: user_difficulty_elo_score {
    type: number
    sql: ${TABLE}.user_difficulty_elo_score ;;
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
    sql: case when ${TABLE}.user_platform = 'Android' then 'android'
              when ${TABLE}.user_platform = 'IPhonePlayer' then 'ios'
        end ;;
  }

  dimension_group: user_remote_config_update_date {
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

  dimension: user_split_test_name_Mixed_Balance{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%0612_DefaultLevels%' then 'Default Levels'
               when ${TABLE}.user_split_test_name like '%0612_NewStickers%' then 'New_Stickers'
               when ${TABLE}.user_split_test_name like '%0612_BalancedLevels%' then 'Balanced Levels'
          end ;;
  }

  dimension: user_split_test_name_Rack_Feedback{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%0612_RackFeedbackActive%' then 'Rack Feedback Active'
               when ${TABLE}.user_split_test_name like '%0612_RackFeedbackPassive%' then 'Rack Feedback Passive'
          end ;;
  }

  dimension: user_split_test_name_Live_Event_Calendar{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%0612_FortuneSingle%' then 'Fortune Single'
               when ${TABLE}.user_split_test_name like '%0612_FortuneMulti%' then 'Fortune Multi'
               when ${TABLE}.user_split_test_name like '%0612_CoinRushActive%' then 'Coin Rush Active'
               when ${TABLE}.user_split_test_name like '%0612_PassiveEvents%' then 'Passive Events'
          end ;;
  }

  dimension: user_split_test_name_New_Live_Event_Calendar{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%1312_FortuneSingle%' then 'Fortune Single'
               when ${TABLE}.user_split_test_name like '%1312_FortuneMulti%' then 'Fortune Multi'
          end ;;
  }

  dimension: user_split_test_name_Ekin_Balance{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%2012_Default%' then 'Default Levels'
               when ${TABLE}.user_split_test_name like '%2012_OldDefault%' then 'Old Default Levels'
               when ${TABLE}.user_split_test_name like '%2012_Balanced%' then 'Balanced Levels'
          end ;;
  }

  dimension: user_split_test_name_Pay_and_Proceed{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%2612_Default%' then 'Pay and Proceed Passive'
               when ${TABLE}.user_split_test_name like '%2612_PPActive%' then 'Pay and Proceed Active'
          end ;;
  }

  dimension: user_split_test_name_Streak_Path{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%0301_StreakPathActive%' then 'Streak Path Active'
               when ${TABLE}.user_split_test_name like '%0301_StreakPathPassive%' then 'Streak Path Passive'
          end ;;
  }

  dimension: user_split_test_name_IOS_Android_Balance{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%2201Default%' then 'Default'
               when ${TABLE}.user_split_test_name like '%2201Balanced%' then 'Balanced'
          end ;;
  }

  dimension: user_split_test_name_Banner_IOS{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%3101BannerOff%' then 'Banner Off'
               when ${TABLE}.user_split_test_name like '%3101BannerTop%' then 'Banner Top'
               when ${TABLE}.user_split_test_name like '%3101BannerBottom%' then 'Banner Bottom'
          end ;;
  }

  dimension: user_split_test_name_Melisa_Balance{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%1402Default%' then 'Default'
               when ${TABLE}.user_split_test_name like '%1402Balanced%' then 'Balanced'
          end ;;
  }

  dimension: user_split_test_name_Invite_Friend{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%1402InviteFriendsActive%' then 'Invite Friends Active'
               when ${TABLE}.user_split_test_name like '%1402InviteFriendsPassive%' then 'Invite Friends Passive'
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

  dimension: user_total_valid_attempt_at_current_level {
    type: number
    sql: ${TABLE}.user_total_valid_attempt_at_current_level ;;
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
    drill_fields: [business_event_name, team_name, user_split_test_name, event_name]
  }
}
