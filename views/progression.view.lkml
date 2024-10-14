# The name of this view in Looker is "Progression"
view: progression {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: tile_match.progression ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Advertising ID" in Explore.

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

  dimension: boosters {
    type: string
    sql: ${TABLE}.boosters ;;
  }

  dimension: boosters_magnet_num {
    type: number
    sql: case when ${TABLE}.event_name = 'LevelCompleted' and ${TABLE}.boosters like '%magnet%' then (split_part(split_part(${TABLE}.boosters, 'magnet:', 2), '|', 1))::INT else 0 end ;;
  }

  dimension: boosters_toss_num {
    type: number
    sql: case when ${TABLE}.event_name = 'LevelCompleted' and ${TABLE}.boosters like '%toss%' then (split_part(split_part(${TABLE}.boosters, 'toss:', 2), '|', 1))::INT else 0 end ;;
  }

  dimension: boosters_glove_num {
    type: number
    sql: case when ${TABLE}.event_name = 'LevelCompleted' and ${TABLE}.boosters like '%glove%' then (split_part(split_part(${TABLE}.boosters, 'glove:', 2), '|', 1))::INT else 0 end ;;
  }

  dimension: boosters_extraslot_num {
    type: number
    sql: case when ${TABLE}.event_name = 'LevelCompleted' and ${TABLE}.boosters like '%extraslot%' then (split_part(split_part(${TABLE}.boosters, 'extraslot:', 2), '|', 1))::INT else 0 end ;;
  }

  dimension: boosters_extratime_num {
    type: number
    sql: case when ${TABLE}.event_name = 'LevelCompleted' and ${TABLE}.boosters like '%extratime%' then (split_part(split_part(${TABLE}.boosters, 'extratime:', 2), '|', 1))::INT else 0 end ;;
  }

  dimension: boosters_shuffle_num {
    type: number
    sql: case when ${TABLE}.event_name = 'LevelCompleted' and ${TABLE}.boosters like '%shuffle%' then (split_part(split_part(${TABLE}.boosters, 'shuffle:', 2), '|', 1))::INT else 0 end  ;;
  }

  dimension: boosters_timefreezer_num {
    type: number
    sql: case when ${TABLE}.event_name = 'LevelCompleted' and ${TABLE}.boosters like '%timefreezer%' then (split_part(split_part(${TABLE}.boosters, 'timefreezer:', 2), '|', 1))::INT else 0 end ;;
  }

  dimension: boosters_magicwand_num {
    type: number
    sql: case when ${TABLE}.event_name = 'LevelCompleted' and ${TABLE}.boosters like '%magicwand%' then (split_part(split_part(${TABLE}.boosters, 'magicwand:', 2), '|', 1))::INT else 0 end ;;
  }

  dimension: boosters_ingame_num {
    type: number
    sql:  ${boosters_extraslot_num} + ${boosters_glove_num} + ${boosters_magicwand_num} + ${boosters_shuffle_num} + ${boosters_timefreezer_num} + ${boosters_toss_num} ;;
  }

  dimension: boosters_pregame_num {
    type: number
    sql:  ${boosters_extratime_num} + ${boosters_magnet_num}  ;;
  }

  dimension: build_no {
    type: number
    sql: ${TABLE}.build_no ;;
  }

  dimension: connection_type {
    type: number
    sql: ${TABLE}.connection_type ;;
  }

  dimension: end_game_offer {
    type: string
    sql: ${TABLE}.end_game_offer ;;
  }

  dimension: extra_move_count {
    type: number
    sql: (length(${TABLE}.end_game_offer) - length(replace(${TABLE}.end_game_offer, 'failtype', ''))) / length('failtype') ;;
  }

  dimension: event_id {
    type: string
    sql: ${TABLE}.event_id ;;
  }

  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
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

  dimension: fail_type {
    type: string
    sql: ${TABLE}.fail_type ;;
  }

  dimension_group: installed {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.installed_at ;;
  }

  dimension: install_day_of_user {
    type: number
    sql: FLOOR(DATEDIFF(hour,${TABLE}.installed_at,${TABLE}.event_timestamp)/24) ;;
  }

  dimension: ip_address {
    type: string
    sql: ${TABLE}.ip_address ;;
  }

  dimension: move_count {
    type: number
    sql: ${TABLE}.move_count ;;
  }

  dimension: obstacles {
    type: string
    sql: ${TABLE}.obstacles ;;
  }

  dimension: previous_event_id {
    type: string
    sql: ${TABLE}.previous_event_id ;;
  }

  dimension_group: request {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.request_time ;;
  }

  dimension: session_id {
    type: string
    # hidden: yes
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

  dimension: target_acorn_nut {
    type: number
    sql: ${TABLE}.target_acorn_nut ;;
  }

  dimension: target_apple {
    type: number
    sql: ${TABLE}.target_apple ;;
  }

  dimension: target_armchair {
    type: number
    sql: ${TABLE}.target_armchair ;;
  }

  dimension: target_avocado {
    type: number
    sql: ${TABLE}.target_avocado ;;
  }

  dimension: target_banana {
    type: number
    sql: ${TABLE}.target_banana ;;
  }

  dimension: target_broom {
    type: number
    sql: ${TABLE}.target_broom ;;
  }

  dimension: target_brush {
    type: number
    sql: ${TABLE}.target_brush ;;
  }

  dimension: target_carrot {
    type: number
    sql: ${TABLE}.target_carrot ;;
  }

  dimension: target_cherry {
    type: number
    sql: ${TABLE}.target_cherry ;;
  }

  dimension: target_coconut {
    type: number
    sql: ${TABLE}.target_coconut ;;
  }

  dimension: target_flame {
    type: number
    sql: ${TABLE}.target_flame ;;
  }

  dimension: target_frame {
    type: number
    sql: ${TABLE}.target_frame ;;
  }

  dimension: target_grape {
    type: number
    sql: ${TABLE}.target_grape ;;
  }

  dimension: target_hammer {
    type: number
    sql: ${TABLE}.target_hammer ;;
  }

  dimension: target_lemon {
    type: number
    sql: ${TABLE}.target_lemon ;;
  }

  dimension: target_light {
    type: number
    sql: ${TABLE}.target_light ;;
  }

  dimension: target_orange {
    type: number
    sql: ${TABLE}.target_orange ;;
  }

  dimension: target_pear {
    type: number
    sql: ${TABLE}.target_pear ;;
  }

  dimension: target_pumpkin {
    type: number
    sql: ${TABLE}.target_pumpkin ;;
  }

  dimension: target_shirt {
    type: number
    sql: ${TABLE}.target_shirt ;;
  }

  dimension: target_strawberry {
    type: number
    sql: ${TABLE}.target_strawberry ;;
  }

  dimension: target_table {
    type: number
    sql: ${TABLE}.target_table ;;
  }

  dimension: target_teddybear {
    type: number
    sql: ${TABLE}.target_teddybear ;;
  }

  dimension: target_tile {
    type: number
    sql: ${TABLE}.target_tile ;;
  }

  dimension: target_watermelon {
    type: number
    sql: ${TABLE}.target_watermelon ;;
  }

  dimension: time_begin {
    type: number
    sql: ${TABLE}.time_begin ;;
  }

  dimension: time_remain {
    type: number
    sql: ${TABLE}.time_remain ;;
  }

  dimension: level_play_time {
    type: number
    sql:  ${time_begin_streak} - ${TABLE}.time_remain;;
  }

  dimension: time_begin_streak {
    type: number
    sql:  case when ${user_win_streak_group} = 'Streak2' then ${time_begin} + 15
               when ${user_win_streak_group} = 'Streak3' then ${time_begin} + 15
               when ${user_win_streak_group} = 'Streak4' then ${time_begin} + 30
               when ${user_win_streak_group} = 'Streak5' then ${time_begin} + 30
               when ${event_name} = 'LevelStarted' and ${boosters} like '%extratime:1%' then ${time_begin} + 15
               else ${time_begin} end ;;
  }

  dimension: tiles_on_board {
    type: string
    sql: ${TABLE}.tiles_on_board ;;
  }

  dimension: remain_tile_count {
    type: string
    sql: ${TABLE}.remain_tile_count ;;
  }

  dimension: total_tile_count {
    type: string
    sql: ${TABLE}.total_tile_count ;;
  }

  dimension: total_attempt_at_current_level {
    type: string
    sql: ${TABLE}.total_attempt_at_current_level ;;
  }

  dimension: user_adgroup {
    type: string
    sql: ${TABLE}.user_adgroup ;;
  }

  dimension: user_balance_version {
    type: string
    sql: ${TABLE}.user_balance_version ;;
  }

  dimension: pivot_balance_version_list {
    type: string
    sql: {% if ${user_balance_version}._is_filtered %} ${user_balance_version} {% else %} 'Balance Version' {% endif %};;
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

  dimension: user_current_fps {
    type: number
    sql: ${TABLE}.user_current_fps ;;
  }

  dimension: user_device {
    type: string
    sql: ${TABLE}.user_device ;;
  }

  dimension: user_level_at {
    type: number
    sql: ${TABLE}.user_level_at ;;
  }

  dimension: user_level_id {
    type: number
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

  measure: stdev_time_remain {
    type: number
    sql: stddev(case when ${time_remain}>0 and ${time_remain}<600 then ${time_remain} end ) ;;
    value_format: "##.00"
  }

  measure: max_att {
    type: max
    sql: ${user_total_attempt_at_current_lvl} ;;
    value_format: "##.00"
  }

  measure: level_play_time_per10 {
    type: percentile
    percentile: 10
    sql: ${level_play_time} ;;
    value_format: "##"
  }

  measure: level_play_time_per20 {
    type: percentile
    percentile: 20
    sql: ${level_play_time} ;;
    value_format: "##"
  }

  measure: level_play_time_per25 {
    type: percentile
    percentile: 25
    sql: ${level_play_time} ;;
    value_format: "##"
  }

  measure: level_play_time_per30 {
    type: percentile
    percentile: 30
    sql: ${level_play_time} ;;
    value_format: "##"
  }

  measure: level_play_time_per40 {
    type: percentile
    percentile: 40
    sql: ${level_play_time} ;;
    value_format: "##"
  }

  measure: level_play_time_per50 {
    type: percentile
    percentile: 50
    sql: ${level_play_time} ;;
    value_format: "##"
  }

  measure: level_play_time_per60 {
    type: percentile
    percentile: 60
    sql: ${level_play_time} ;;
    value_format: "##"
  }

  measure: level_play_time_per70 {
    type: percentile
    percentile: 70
    sql: ${level_play_time} ;;
    value_format: "##"
  }

  measure: level_play_time_per75 {
    type: percentile
    percentile: 75
    sql: ${level_play_time} ;;
    value_format: "##"
  }

  measure: level_play_time_per80 {
    type: percentile
    percentile: 80
    sql: ${level_play_time} ;;
    value_format: "##"
  }

  measure: level_play_time_per90 {
    type: percentile
    percentile: 90
    sql: ${level_play_time} ;;
    value_format: "##"
  }

  measure: level_play_time_per95 {
    type: percentile
    percentile: 95
    sql: ${level_play_time} ;;
    value_format: "##"
  }

  measure: level_play_time_per99 {
    type: percentile
    percentile: 99
    sql: ${level_play_time} ;;
    value_format: "##"
  }

  measure: level_play_time_avg {
    type: average
    sql: ${level_play_time} ;;
    value_format: "##"
  }

  measure: time_remain_per10 {
    type: percentile
    percentile: 10
    sql: ${time_remain} ;;
    value_format: "##"
  }

  measure: time_remain_per20 {
    type: percentile
    percentile: 20
    sql: ${time_remain} ;;
    value_format: "##"
  }

  measure: time_remain_per30 {
    type: percentile
    percentile: 30
    sql: ${time_remain} ;;
    value_format: "##"
  }

  measure: time_remain_per40 {
    type: percentile
    percentile: 40
    sql: ${time_remain} ;;
    value_format: "##"
  }

  measure: time_remain_per50 {
    type: percentile
    percentile: 50
    sql: ${time_remain} ;;
    value_format: "##"
  }

  measure: time_remain_per60 {
    type: percentile
    percentile: 60
    sql: ${time_remain} ;;
    value_format: "##"
  }

  measure: time_remain_per70 {
    type: percentile
    percentile: 70
    sql: ${time_remain} ;;
    value_format: "##"
  }

  measure: time_remain_per80 {
    type: percentile
    percentile: 80
    sql: ${time_remain} ;;
    value_format: "##"
  }

  measure: time_remain_per90 {
    type: percentile
    percentile: 90
    sql: ${time_remain} ;;
    value_format: "##"
  }

  measure: time_remain_avg {
    type: average
    sql: ${time_remain} ;;
    value_format: "##"
  }

  measure: level_attempt_per10 {
    type: percentile
    percentile: 10
    sql: ${user_total_attempt_at_current_lvl} ;;
    value_format: "##"
  }

  measure: level_attempt_per20 {
    type: percentile
    percentile: 20
    sql: ${user_total_attempt_at_current_lvl} ;;
    value_format: "##"
  }

  measure: level_attempt_per30 {
    type: percentile
    percentile: 30
    sql: ${user_total_attempt_at_current_lvl} ;;
    value_format: "##"
  }

  measure: level_attempt_per40 {
    type: percentile
    percentile: 40
    sql: ${user_total_attempt_at_current_lvl} ;;
    value_format: "##"
  }

  measure: level_attempt_per50 {
    type: percentile
    percentile: 50
    sql: ${user_total_attempt_at_current_lvl} ;;
    value_format: "##"
  }

  measure: level_attempt_per60 {
    type: percentile
    percentile: 60
    sql: ${user_total_attempt_at_current_lvl} ;;
    value_format: "##"
  }

  measure: level_attempt_per70 {
    type: percentile
    percentile: 70
    sql: ${user_total_attempt_at_current_lvl} ;;
    value_format: "##"
  }

  measure: level_attempt_per80 {
    type: percentile
    percentile: 80
    sql: ${user_total_attempt_at_current_lvl} ;;
    value_format: "##"
  }

  measure: level_attempt_per90 {
    type: percentile
    percentile: 90
    sql: ${user_total_attempt_at_current_lvl} ;;
    value_format: "##"
  }

  measure: level_attempt_avg {
    type: average
    sql: ${user_total_attempt_at_current_lvl} ;;
    value_format: "##"
  }

  measure: extra_move_count_per10 {
    type: percentile
    percentile: 10
    sql: ${extra_move_count} ;;
    value_format: "##"
  }

  measure: extra_move_count_per20 {
    type: percentile
    percentile: 20
    sql: ${extra_move_count} ;;
    value_format: "##"
  }

  measure: extra_move_count_per30 {
    type: percentile
    percentile: 30
    sql: ${extra_move_count} ;;
    value_format: "##"
  }

  measure: extra_move_count_per40 {
    type: percentile
    percentile: 40
    sql: ${extra_move_count} ;;
    value_format: "##"
  }

  measure: extra_move_count_per50 {
    type: percentile
    percentile: 50
    sql: ${extra_move_count} ;;
    value_format: "##"
  }

  measure: extra_move_count_per60 {
    type: percentile
    percentile: 60
    sql: ${extra_move_count} ;;
    value_format: "##"
  }

  measure: extra_move_count_per70 {
    type: percentile
    percentile: 70
    sql: ${extra_move_count} ;;
    value_format: "##"
  }

  measure: extra_move_count_per80 {
    type: percentile
    percentile: 80
    sql: ${extra_move_count} ;;
    value_format: "##"
  }

  measure: extra_move_count_per90 {
    type: percentile
    percentile: 90
    sql: ${extra_move_count} ;;
    value_format: "##"
  }

  measure: extra_move_count_avg {
    type: average
    sql: ${extra_move_count} ;;
    value_format: "##"
  }

  measure: booster_ingame_per10 {
    type: percentile
    percentile: 10
    sql: ${boosters_ingame_num} ;;
    value_format: "##"
  }

  measure: booster_ingame_per20 {
    type: percentile
    percentile: 20
    sql: ${boosters_ingame_num} ;;
    value_format: "##"
  }

  measure: booster_ingame_per30 {
    type: percentile
    percentile: 30
    sql: ${boosters_ingame_num} ;;
    value_format: "##"
  }

  measure: booster_ingame_per40 {
    type: percentile
    percentile: 40
    sql: ${boosters_ingame_num} ;;
    value_format: "##"
  }

  measure: booster_ingame_per50 {
    type: percentile
    percentile: 50
    sql: ${boosters_ingame_num} ;;
    value_format: "##"
  }

  measure: booster_ingame_per60 {
    type: percentile
    percentile: 60
    sql: ${boosters_ingame_num} ;;
    value_format: "##"
  }

  measure: booster_ingame_per70 {
    type: percentile
    percentile: 70
    sql: ${boosters_ingame_num} ;;
    value_format: "##"
  }

  measure: booster_ingame_per80 {
    type: percentile
    percentile: 80
    sql: ${boosters_ingame_num} ;;
    value_format: "##"
  }

  measure: booster_ingame_per90 {
    type: percentile
    percentile: 90
    sql: ${boosters_ingame_num} ;;
    value_format: "##"
  }

  measure: booster_ingame_avg {
    type: average
    sql: (${boosters_ingame_num})::double precision ;;
    value_format: "0.00"
  }

  measure: booster_ingame_sum {
    type: number
    sql: SUM(${boosters_ingame_num}) ;;
    value_format: "0.00"
  }

  measure: booster_pregame_per10 {
    type: percentile
    percentile: 10
    sql: ${boosters_pregame_num} ;;
    value_format: "##"
  }

  measure: booster_pregame_per20 {
    type: percentile
    percentile: 20
    sql: ${boosters_pregame_num} ;;
    value_format: "##"
  }

  measure: booster_pregame_per30 {
    type: percentile
    percentile: 30
    sql: ${boosters_pregame_num} ;;
    value_format: "##"
  }

  measure: booster_pregame_per40 {
    type: percentile
    percentile: 40
    sql: ${boosters_pregame_num} ;;
    value_format: "##"
  }

  measure: booster_pregame_per50 {
    type: percentile
    percentile: 50
    sql: ${boosters_pregame_num} ;;
    value_format: "##"
  }

  measure: booster_pregame_per60 {
    type: percentile
    percentile: 60
    sql: ${boosters_pregame_num} ;;
    value_format: "##"
  }

  measure: booster_pregame_per70 {
    type: percentile
    percentile: 70
    sql: ${boosters_pregame_num} ;;
    value_format: "##"
  }

  measure: booster_pregame_per80 {
    type: percentile
    percentile: 80
    sql: ${boosters_pregame_num} ;;
    value_format: "##"
  }

  measure: booster_pregame_per90 {
    type: percentile
    percentile: 90
    sql: ${boosters_pregame_num} ;;
    value_format: "##"
  }

  measure: booster_pregame_avg {
    type: average
    sql: (${boosters_pregame_num})::double precision ;;
    value_format: "0.00"
  }

  measure: distinct_user_count {
    type: count_distinct
    sql: ${TABLE}.advertising_id ;;
  }

  measure: average {
    type: average
  }

  measure: count {
    type: count
    drill_fields: [user_split_test_name, event_name, session.user_split_test_name, session.session_id, session.event_name]
  }

  measure: median {
    type: median
  }

  measure: start_count {
    type: sum
    sql: (case when ${TABLE}.event_name='LevelStarted' then 1 else 0 end) ;;
  }

  measure: win_count {
    type: sum
    sql: (case when ${TABLE}.event_name='LevelCompleted' and ${extra_move_count} is null then 1 else 0 end) ;;
  }

  measure: fail_count {
    type: sum
    sql: (case when ${TABLE}.event_name='LevelFailed' or ${extra_move_count}>0  then 1 else 0 end) ;;
  }

  measure: win_rate {
    type: number
    sql: (1.0*${win_count}/nullif(${win_count} + ${fail_count},0)) ;;
    value_format: "0%"
  }

}
