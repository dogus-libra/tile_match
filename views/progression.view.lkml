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

  measure: level_play_time_per25 {
    type: percentile
    percentile: 25
    sql: ${level_play_time} ;;
    value_format: "##.00"
  }

  measure: level_play_time_per50 {
    type: percentile
    percentile: 50
    sql: ${level_play_time} ;;
    value_format: "##.00"
  }

  measure: level_play_time_per75 {
    type: percentile
    percentile: 75
    sql: ${level_play_time} ;;
    value_format: "##.00"
  }

  measure: level_play_time_per90 {
    type: percentile
    percentile: 90
    sql: ${level_play_time} ;;
    value_format: "##.00"
  }

  measure: level_play_time_per95 {
    type: percentile
    percentile: 95
    sql: ${level_play_time} ;;
    value_format: "##.00"
  }

  measure: level_play_time_per99 {
    type: percentile
    percentile: 99
    sql: ${level_play_time} ;;
    value_format: "##.00"
  }

  measure: level_play_time_avg {
    type: average
    sql: ${level_play_time} ;;
    value_format: "##.00"
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
