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
  dimension: active_fail_safe_scenario {
    type: number
    sql: ${TABLE}.active_fail_safe_scenario ;;
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

  dimension: boosters {
    type: string
    sql: ${TABLE}.boosters ;;
  }

  dimension: boosters_magnet_num {
    type: number
    sql: case when (${TABLE}.event_name = 'LevelCompleted' or ${TABLE}.event_name = 'LevelFailed') and ${TABLE}.boosters like '%magnet%' then (split_part(split_part(${TABLE}.boosters, 'magnet:', 2), '|', 1))::INT else 0 end ;;
  }

  dimension: boosters_toss_num {
    type: number
    sql: case when (${TABLE}.event_name = 'LevelCompleted' or ${TABLE}.event_name = 'LevelFailed') and ${TABLE}.boosters like '%toss%' then (split_part(split_part(${TABLE}.boosters, 'toss:', 2), '|', 1))::INT else 0 end ;;
  }

  dimension: boosters_glove_num {
    type: number
    sql: case when (${TABLE}.event_name = 'LevelCompleted' or ${TABLE}.event_name = 'LevelFailed') and ${TABLE}.boosters like '%glove%' then (split_part(split_part(${TABLE}.boosters, 'glove:', 2), '|', 1))::INT else 0 end ;;
  }

  dimension: boosters_extraslot_num {
    type: number
    sql: case when (${TABLE}.event_name = 'LevelCompleted' or ${TABLE}.event_name = 'LevelFailed') and ${TABLE}.boosters like '%extraslot%' then (split_part(split_part(${TABLE}.boosters, 'extraslot:', 2), '|', 1))::INT else 0 end ;;
  }

  dimension: boosters_extratime_num {
    type: number
    sql: case when (${TABLE}.event_name = 'LevelCompleted' or ${TABLE}.event_name = 'LevelFailed') and ${TABLE}.boosters like '%extratime%' then (split_part(split_part(${TABLE}.boosters, 'extratime:', 2), '|', 1))::INT else 0 end ;;
  }

  dimension: boosters_shuffle_num {
    type: number
    sql: case when (${TABLE}.event_name = 'LevelCompleted' or ${TABLE}.event_name = 'LevelFailed') and ${TABLE}.boosters like '%shuffle%' then (split_part(split_part(${TABLE}.boosters, 'shuffle:', 2), '|', 1))::INT else 0 end  ;;
  }

  dimension: boosters_timefreezer_num {
    type: number
    sql: case when (${TABLE}.event_name = 'LevelCompleted' or ${TABLE}.event_name = 'LevelFailed') and ${TABLE}.boosters like '%timefreezer%' then (split_part(split_part(${TABLE}.boosters, 'timefreezer:', 2), '|', 1))::INT else 0 end ;;
  }

  dimension: boosters_magicwand_num {
    type: number
    sql: case when (${TABLE}.event_name = 'LevelCompleted' or ${TABLE}.event_name = 'LevelFailed') and ${TABLE}.boosters like '%magicwand%' then (split_part(split_part(${TABLE}.boosters, 'magicwand:', 2), '|', 1))::INT else 0 end ;;
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

  dimension: difficulty {
    type: number
    sql: ${TABLE}.difficulty ;;
  }

  dimension: difficulty_rank {
    type: number
    sql: ${TABLE}.difficulty_rank ;;
  }

  dimension: end_game_offer {
    type: string
    sql: ${TABLE}.end_game_offer ;;
  }

  dimension: end_game_offer_1_bonus_time {
    type: number
    sql: ${TABLE}.end_game_offer_1_bonus_time ;;
  }
  dimension: end_game_offer_1_bonus_slot {
    type: number
    sql: ${TABLE}.end_game_offer_1_bonus_slot ;;
  }
  dimension: end_game_offer_1_offer_type {
    type: string
    sql: ${TABLE}.end_game_offer_1_offer_type ;;
  }
  dimension: end_game_offer_1_fail_type {
    type: string
    sql: ${TABLE}.end_game_offer_1_fail_type ;;
  }

  dimension: end_game_offer_2_bonus_time {
    type: number
    sql: ${TABLE}.end_game_offer_2_bonus_time ;;
  }
  dimension: end_game_offer_2_bonus_slot {
    type: number
    sql: ${TABLE}.end_game_offer_2_bonus_slot ;;
  }
  dimension: end_game_offer_2_offer_type {
    type: string
    sql: ${TABLE}.end_game_offer_2_offer_type ;;
  }
  dimension: end_game_offer_2_fail_type {
    type: string
    sql: ${TABLE}.end_game_offer_2_fail_type ;;
  }

  dimension: end_game_offer_3_bonus_time {
    type: number
    sql: ${TABLE}.end_game_offer_3_bonus_time ;;
  }
  dimension: end_game_offer_3_bonus_slot {
    type: number
    sql: ${TABLE}.end_game_offer_3_bonus_slot ;;
  }
  dimension: end_game_offer_3_offer_type {
    type: string
    sql: ${TABLE}.end_game_offer_3_offer_type ;;
  }
  dimension: end_game_offer_3_fail_type {
    type: string
    sql: ${TABLE}.end_game_offer_3_fail_type ;;
  }

  dimension: end_game_offer_4_bonus_time {
    type: number
    sql: ${TABLE}.end_game_offer_4_bonus_time ;;
  }
  dimension: end_game_offer_4_bonus_slot {
    type: number
    sql: ${TABLE}.end_game_offer_4_bonus_slot ;;
  }
  dimension: end_game_offer_4_offer_type {
    type: string
    sql: ${TABLE}.end_game_offer_4_offer_type ;;
  }
  dimension: end_game_offer_4_fail_type {
    type: string
    sql: ${TABLE}.end_game_offer_4_fail_type ;;
  }

  dimension: end_game_offer_5_bonus_time {
    type: number
    sql: ${TABLE}.end_game_offer_5_bonus_time ;;
  }
  dimension: end_game_offer_5_bonus_slot {
    type: number
    sql: ${TABLE}.end_game_offer_5_bonus_slot ;;
  }
  dimension: end_game_offer_5_offer_type {
    type: string
    sql: ${TABLE}.end_game_offer_5_offer_type ;;
  }
  dimension: end_game_offer_5_fail_type {
    type: string
    sql: ${TABLE}.end_game_offer_5_fail_type ;;
  }

  dimension: end_game_offer_6_bonus_time {
    type: number
    sql: ${TABLE}.end_game_offer_6_bonus_time ;;
  }
  dimension: end_game_offer_6_bonus_slot {
    type: number
    sql: ${TABLE}.end_game_offer_6_bonus_slot ;;
  }
  dimension: end_game_offer_6_offer_type {
    type: string
    sql: ${TABLE}.end_game_offer_6_offer_type ;;
  }
  dimension: end_game_offer_6_fail_type {
    type: string
    sql: ${TABLE}.end_game_offer_6_fail_type ;;
  }

  dimension: end_game_offer_7_bonus_time {
    type: number
    sql: ${TABLE}.end_game_offer_7_bonus_time ;;
  }
  dimension: end_game_offer_7_bonus_slot {
    type: number
    sql: ${TABLE}.end_game_offer_7_bonus_slot ;;
  }
  dimension: end_game_offer_7_offer_type {
    type: string
    sql: ${TABLE}.end_game_offer_7_offer_type ;;
  }
  dimension: end_game_offer_7_fail_type {
    type: string
    sql: ${TABLE}.end_game_offer_7_fail_type ;;
  }

  dimension: end_game_offer_8_bonus_time {
    type: number
    sql: ${TABLE}.end_game_offer_8_bonus_time ;;
  }
  dimension: end_game_offer_8_bonus_slot {
    type: number
    sql: ${TABLE}.end_game_offer_8_bonus_slot ;;
  }
  dimension: end_game_offer_8_offer_type {
    type: string
    sql: ${TABLE}.end_game_offer_8_offer_type ;;
  }
  dimension: end_game_offer_8_fail_type {
    type: string
    sql: ${TABLE}.end_game_offer_8_fail_type ;;
  }

  dimension: end_game_offer_9_bonus_time {
    type: number
    sql: ${TABLE}.end_game_offer_9_bonus_time ;;
  }
  dimension: end_game_offer_9_bonus_slot {
    type: number
    sql: ${TABLE}.end_game_offer_9_bonus_slot ;;
  }
  dimension: end_game_offer_9_offer_type {
    type: string
    sql: ${TABLE}.end_game_offer_9_offer_type ;;
  }
  dimension: end_game_offer_9_fail_type {
    type: string
    sql: ${TABLE}.end_game_offer_9_fail_type ;;
  }

  dimension: end_game_offer_10_bonus_time {
    type: number
    sql: ${TABLE}.end_game_offer_10_bonus_time ;;
  }
  dimension: end_game_offer_10_bonus_slot {
    type: number
    sql: ${TABLE}.end_game_offer_10_bonus_slot ;;
  }
  dimension: end_game_offer_10_offer_type {
    type: string
    sql: ${TABLE}.end_game_offer_10_offer_type ;;
  }
  dimension: end_game_offer_10_fail_type {
    type: string
    sql: ${TABLE}.end_game_offer_10_fail_type ;;
  }

  dimension: extra_move_count {
    type: number
    sql:   (case when ${TABLE}.event_timestamp>=to_timestamp('23.01.2025 00:00:00', 'DD-MM-YYYY HH24:MI:SS') and ${TABLE}.end_game_offer is null

            then (case when ${TABLE}.end_game_offer_1_offer_type is not null and ${TABLE}.end_game_offer_2_offer_type is null then 1
                       when ${TABLE}.end_game_offer_2_offer_type is not null and ${TABLE}.end_game_offer_3_offer_type is null then 2
                       when ${TABLE}.end_game_offer_3_offer_type is not null and ${TABLE}.end_game_offer_4_offer_type is null then 3
                       when ${TABLE}.end_game_offer_4_offer_type is not null and ${TABLE}.end_game_offer_5_offer_type is null then 4
                       when ${TABLE}.end_game_offer_5_offer_type is not null and ${TABLE}.end_game_offer_6_offer_type is null then 5
                       when ${TABLE}.end_game_offer_6_offer_type is not null and ${TABLE}.end_game_offer_7_offer_type is null then 6
                       when ${TABLE}.end_game_offer_7_offer_type is not null and ${TABLE}.end_game_offer_8_offer_type is null then 7
                       when ${TABLE}.end_game_offer_8_offer_type is not null and ${TABLE}.end_game_offer_9_offer_type is null then 8
                       when ${TABLE}.end_game_offer_9_offer_type is not null and ${TABLE}.end_game_offer_10_offer_type is null then 9
                       when ${TABLE}.end_game_offer_10_offer_type is not null  then 10 end)

                else (length(${TABLE}.end_game_offer) - length(replace(${TABLE}.end_game_offer, 'failtype', ''))) / length('failtype')
           end) ;;
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

  dimension: initial_coin{
    type: number
    sql: case when ${TABLE}.event_name = 'LevelCompleted' and ${user_level_at} < 2 and ${TABLE}.inventory_coin = 200 then 200
              when ${TABLE}.event_name = 'LevelCompleted' and ${user_level_at} < 2 and ${TABLE}.inventory_coin = 400 then 400
              when ${TABLE}.event_name = 'LevelCompleted' and ${user_level_at} < 2 and ${TABLE}.inventory_coin = 600 then 600

              end;;
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

  dimension: move_count {
    type: number
    sql: ${TABLE}.move_count ;;
  }

  dimension: last_input_time {
    type: number
    sql: ${TABLE}.last_input_time ;;
  }

  dimension: obstacles {
    type: string
    sql: ${TABLE}.obstacles ;;
  }

  dimension: obstacle1 {
    type: string
    sql: case when ${TABLE}.event_name = 'LevelStarted' then SPLIT_PART(SPLIT_PART(${TABLE}.obstacles, '|', 1), ':', 1) end ;;
  }

  dimension: obstacle1_num {
    type: number
    sql: case when ${TABLE}.event_name = 'LevelStarted' then SPLIT_PART(SPLIT_PART(${TABLE}.obstacles, '|', 1), ':', 2) end ;;
  }

  dimension: obstacle2 {
    type: string
    sql: case when ${TABLE}.event_name = 'LevelStarted' then SPLIT_PART(SPLIT_PART(${TABLE}.obstacles, '|', 2), ':', 1) end ;;
  }

  dimension: obstacle2_num {
    type: number
    sql: case when ${TABLE}.event_name = 'LevelStarted' then SPLIT_PART(SPLIT_PART(${TABLE}.obstacles, '|', 2), ':', 2) end  ;;
  }

  dimension: obstacle3 {
    type: string
    sql: case when ${TABLE}.event_name = 'LevelStarted' then SPLIT_PART(SPLIT_PART(${TABLE}.obstacles, '|', 3), ':', 1) end ;;
  }

  dimension: obstacle3_num {
    type: number
    sql: case when ${TABLE}.event_name = 'LevelStarted' then SPLIT_PART(SPLIT_PART(${TABLE}.obstacles, '|', 3), ':', 2) end ;;
  }

  dimension: obstacles_count {
    type: number
    sql: case when ${TABLE}.event_name = 'LevelStarted' then (
          (CASE WHEN SPLIT_PART(SPLIT_PART(${TABLE}.obstacles, '|', 1), ':', 1) <> '' THEN 1 ELSE 0 END) +
          (CASE WHEN SPLIT_PART(SPLIT_PART(${TABLE}.obstacles, '|', 2), ':', 1) <> '' THEN 1 ELSE 0 END) +
          (CASE WHEN SPLIT_PART(SPLIT_PART(${TABLE}.obstacles, '|', 3), ':', 1) <> '' THEN 1 ELSE 0 END)
        ) end ;;
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
    sql:  case when (${event_name} = 'LevelCompleted' or ${event_name} = 'LevelFailed') and ${boosters} like '%timefreezer:1%' then (${time_begin_streak} + 10) -                 ${TABLE}.time_remain
               when (${event_name} = 'LevelCompleted' or ${event_name} = 'LevelFailed') and ${boosters} like '%timefreezer:2%' then (${time_begin_streak} + 20) - ${TABLE}.time_remain
               when (${event_name} = 'LevelCompleted' or ${event_name} = 'LevelFailed') and ${boosters} like '%timefreezer:3%' then (${time_begin_streak} + 30) -  ${TABLE}.time_remain
               when (${event_name} = 'LevelCompleted' or ${event_name} = 'LevelFailed') and ${boosters} like '%timefreezer:4%' then (${time_begin_streak} + 40) - ${TABLE}.time_remain
               when (${event_name} = 'LevelCompleted' or ${event_name} = 'LevelFailed') and ${boosters} like '%timefreezer:5%' then (${time_begin_streak} + 50) - ${TABLE}.time_remain
               when (${event_name} = 'LevelCompleted' or ${event_name} = 'LevelFailed') and ${boosters} like '%timefreezer:6%' then (${time_begin_streak} + 60) - ${TABLE}.time_remain

               when ${end_game_offer_1_bonus_time} is not null then (${end_game_offer_1_bonus_time} + ${time_begin_streak}) - ${TABLE}.time_remain
               when ${end_game_offer_2_bonus_time} is not null then (${end_game_offer_2_bonus_time} + ${time_begin_streak}) - ${TABLE}.time_remain
               when ${end_game_offer_3_bonus_time} is not null then (${end_game_offer_3_bonus_time} + ${time_begin_streak}) - ${TABLE}.time_remain
               when ${end_game_offer_4_bonus_time} is not null then (${end_game_offer_4_bonus_time} + ${time_begin_streak}) - ${TABLE}.time_remain
               when ${end_game_offer_5_bonus_time} is not null then (${end_game_offer_5_bonus_time} + ${time_begin_streak}) - ${TABLE}.time_remain
               when ${end_game_offer_6_bonus_time} is not null then (${end_game_offer_6_bonus_time} + ${time_begin_streak}) - ${TABLE}.time_remain
               when ${end_game_offer_7_bonus_time} is not null then (${end_game_offer_7_bonus_time} + ${time_begin_streak}) - ${TABLE}.time_remain
               when ${end_game_offer_8_bonus_time} is not null then (${end_game_offer_8_bonus_time} + ${time_begin_streak}) - ${TABLE}.time_remain
               when ${end_game_offer_9_bonus_time} is not null then (${end_game_offer_9_bonus_time} + ${time_begin_streak}) - ${TABLE}.time_remain
               when ${end_game_offer_10_bonus_time} is not null then (${end_game_offer_10_bonus_time} + ${time_begin_streak}) - ${TABLE}.time_remain

        else ${time_begin_streak} - ${TABLE}.time_remain
        end ;;
  }

  dimension: time_begin_streak {
    type: number
    sql:  case when (${event_name} = 'LevelCompleted' or ${event_name} = 'LevelFailed') and ${boosters} like '%extratime:1%' then ${time_begin} + 15
               when (${event_name} = 'LevelCompleted' or ${event_name} = 'LevelFailed') and ${boosters} like '%extratime:2%' then ${time_begin} + 30
               when (${event_name} = 'LevelCompleted' or ${event_name} = 'LevelFailed') and ${boosters} like '%extratime:3%' then ${time_begin} + 45
               when (${event_name} = 'LevelCompleted' or ${event_name} = 'LevelFailed') and ${boosters} like '%extratime:4%' then ${time_begin} + 60
               else ${time_begin} end ;;
  }

  dimension: tiles_on_board {
    type: string
    sql: ${TABLE}.tiles_on_board ;;
  }

  dimension: unique_tile_count {
    type: number
    sql:  case when ${TABLE}.event_name = 'LevelStarted' then LENGTH(${TABLE}.tiles_on_board) - LENGTH(REPLACE(${TABLE}.tiles_on_board, '|', '')) + 1  end;;
  }

  dimension: unique_color_count {
    type: number
    sql: (
          (CASE WHEN ${TABLE}.tiles_on_board LIKE '%blue%' THEN 1 ELSE 0 END) +
          (CASE WHEN ${TABLE}.tiles_on_board LIKE '%brown%' THEN 1 ELSE 0 END) +
          (CASE WHEN ${TABLE}.tiles_on_board LIKE '%green%' THEN 1 ELSE 0 END) +
          (CASE WHEN ${TABLE}.tiles_on_board LIKE '%orange%' THEN 1 ELSE 0 END) +
          (CASE WHEN ${TABLE}.tiles_on_board LIKE '%purple%' THEN 1 ELSE 0 END) +
          (CASE WHEN ${TABLE}.tiles_on_board LIKE '%red%' THEN 1 ELSE 0 END) +
          (CASE WHEN ${TABLE}.tiles_on_board LIKE '%yellow%' THEN 1 ELSE 0 END)
        ) ;;
  }

  dimension: fruit_type_count {
    type: number
    sql: (
          (CASE WHEN ${TABLE}.tiles_on_board LIKE '%blue5%' THEN 1 ELSE 0 END) +
          (CASE WHEN ${TABLE}.tiles_on_board LIKE '%green1%' THEN 1 ELSE 0 END) +
          (CASE WHEN ${TABLE}.tiles_on_board LIKE '%green6%' THEN 1 ELSE 0 END) +
          (CASE WHEN ${TABLE}.tiles_on_board LIKE '%orange2%' THEN 1 ELSE 0 END) +
          (CASE WHEN ${TABLE}.tiles_on_board LIKE '%orange3%' THEN 1 ELSE 0 END) +
          (CASE WHEN ${TABLE}.tiles_on_board LIKE '%purple3%' THEN 1 ELSE 0 END) +
          (CASE WHEN ${TABLE}.tiles_on_board LIKE '%red3%' THEN 1 ELSE 0 END) +
          (CASE WHEN ${TABLE}.tiles_on_board LIKE '%red5%' THEN 1 ELSE 0 END) +
          (CASE WHEN ${TABLE}.tiles_on_board LIKE '%red6%' THEN 1 ELSE 0 END) +
          (CASE WHEN ${TABLE}.tiles_on_board LIKE '%yellow1%' THEN 1 ELSE 0 END) +
          (CASE WHEN ${TABLE}.tiles_on_board LIKE '%yellow5%' THEN 1 ELSE 0 END)
        ) ;;
  }

  dimension: fruit_total_count {
    type: number
    sql: (
      CASE WHEN POSITION('blue5:' IN ${TABLE}.tiles_on_board) > 0 THEN CAST(split_part(split_part(${TABLE}.tiles_on_board, 'blue5:', 2), '|', 1) AS INT) ELSE 0 END +
      CASE WHEN POSITION('green1:' IN ${TABLE}.tiles_on_board) > 0 THEN CAST(split_part(split_part(${TABLE}.tiles_on_board, 'green1:', 2), '|', 1) AS INT) ELSE 0 END +
      CASE WHEN POSITION('green6:' IN ${TABLE}.tiles_on_board) > 0 THEN CAST(split_part(split_part(${TABLE}.tiles_on_board, 'green6:', 2), '|', 1) AS INT) ELSE 0 END +
      CASE WHEN POSITION('orange2:' IN ${TABLE}.tiles_on_board) > 0 THEN CAST(split_part(split_part(${TABLE}.tiles_on_board, 'orange2:', 2), '|', 1) AS INT) ELSE 0 END +
      CASE WHEN POSITION('orange3:' IN ${TABLE}.tiles_on_board) > 0 THEN CAST(split_part(split_part(${TABLE}.tiles_on_board, 'orange3:', 2), '|', 1) AS INT) ELSE 0 END +
      CASE WHEN POSITION('purple3:' IN ${TABLE}.tiles_on_board) > 0 THEN CAST(split_part(split_part(${TABLE}.tiles_on_board, 'purple3:', 2), '|', 1) AS INT) ELSE 0 END +
      CASE WHEN POSITION('red3:' IN ${TABLE}.tiles_on_board) > 0 THEN CAST(split_part(split_part(${TABLE}.tiles_on_board, 'red3:', 2), '|', 1) AS INT) ELSE 0 END +
      CASE WHEN POSITION('red5:' IN ${TABLE}.tiles_on_board) > 0 THEN CAST(split_part(split_part(${TABLE}.tiles_on_board, 'red5:', 2), '|', 1) AS INT) ELSE 0 END +
      CASE WHEN POSITION('red6:' IN ${TABLE}.tiles_on_board) > 0 THEN CAST(split_part(split_part(${TABLE}.tiles_on_board, 'red6:', 2), '|', 1) AS INT) ELSE 0 END +
      CASE WHEN POSITION('yellow1:' IN ${TABLE}.tiles_on_board) > 0 THEN CAST(split_part(split_part(${TABLE}.tiles_on_board, 'yellow1:', 2), '|', 1) AS INT) ELSE 0 END +
      CASE WHEN POSITION('yellow5:' IN ${TABLE}.tiles_on_board) > 0 THEN CAST(split_part(split_part(${TABLE}.tiles_on_board, 'yellow5:', 2), '|', 1) AS INT) ELSE 0 END
    ) ;;
  }

  dimension: fruitsOnBoard {
    type: string
    sql:  RTRIM(
    CASE WHEN POSITION('blue5:' IN ${TABLE}.tiles_on_board) > 0 THEN 'blueberry, ' ELSE '' END ||
    CASE WHEN POSITION('green1:' IN ${TABLE}.tiles_on_board) > 0 THEN 'apple, ' ELSE '' END ||
    CASE WHEN POSITION('green6:' IN ${TABLE}.tiles_on_board) > 0 THEN 'lime, ' ELSE '' END ||
    CASE WHEN POSITION('orange2:' IN ${TABLE}.tiles_on_board) > 0 THEN 'pear, ' ELSE '' END ||
    CASE WHEN POSITION('orange3:' IN ${TABLE}.tiles_on_board) > 0 THEN 'orange, ' ELSE '' END ||
    CASE WHEN POSITION('purple3:' IN ${TABLE}.tiles_on_board) > 0 THEN 'grape, ' ELSE '' END ||
    CASE WHEN POSITION('red3:' IN ${TABLE}.tiles_on_board) > 0 THEN 'cherry, ' ELSE '' END ||
    CASE WHEN POSITION('red5:' IN ${TABLE}.tiles_on_board) > 0 THEN 'waterlemon, ' ELSE '' END ||
    CASE WHEN POSITION('red6:' IN ${TABLE}.tiles_on_board) > 0 THEN 'strawberry, ' ELSE '' END ||
    CASE WHEN POSITION('yellow1:' IN ${TABLE}.tiles_on_board) > 0 THEN 'banana, ' ELSE '' END ||
    CASE WHEN POSITION('yellow5:' IN ${TABLE}.tiles_on_board) > 0 THEN 'lemon, ' ELSE '' END,
    ', '
  ) ;;
  }

  dimension: remain_tile_count {
    type: string
    sql: ${TABLE}.remain_tile_count ;;
  }

  dimension: streak_breaker {
    type: yesno
    sql: ${TABLE}.streak_breaker ;;
  }

  dimension: total_tile_count {
    type: string
    sql: ${TABLE}.total_tile_count ;;
  }

  dimension: total_tile_count_num {
    type: number
    sql: CAST(${TABLE}.total_tile_count AS NUMERIC) ;;
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

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_is_bonus_mode_active {
    type: yesno
    sql: ${TABLE}.user_is_bonus_mode_active ;;
  }

  dimension: pivot_app_version_list {
    type: string
    sql: {% if ${app_version}._is_filtered %} ${app_version} {% else %} 'App Version' {% endif %};;
  }

  dimension: pivot_version_list {
    type: string
    sql: {% if ${user_balance_version}._is_filtered %} ${user_balance_version} {% else %} 'Balance Version' {% endif %};;
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

  dimension: user_game_mode {
    type: string
    sql: case when ${TABLE}.user_game_mode is null then 'Normal'
      when ${TABLE}.user_game_mode = 1 then 'Grand Mode' end;;
  }

  dimension: user_grand_mode_level {
    type: number
    sql: ${TABLE}.user_grand_mode_level ;;
  }

  dimension: user_level_at {
    type: number
    sql: ${TABLE}.user_level_at ;;
  }

  dimension: target_win_rate {
    type: number
    sql: case
          when  ${user_level_at}= 1 then  1.00
          when  ${user_level_at}= 2 then  1.00
          when  ${user_level_at}= 3 then  1.00
          when  ${user_level_at}= 4 then  1.00
          when  ${user_level_at}= 5 then  1.00
          when  ${user_level_at}= 6 then  1.00
          when  ${user_level_at}= 7 then  1.00
          when  ${user_level_at}= 8 then  1.00
          when  ${user_level_at}= 9 then  1.00
          when  ${user_level_at}= 10  then  1.00
          when  ${user_level_at}= 11  then  0.93
          when  ${user_level_at}= 12  then  0.98
          when  ${user_level_at}= 13  then  0.98
          when  ${user_level_at}= 14  then  0.93
          when  ${user_level_at}= 15  then  0.98
          when  ${user_level_at}= 16  then  0.98
          when  ${user_level_at}= 17  then  0.88
          when  ${user_level_at}= 18  then  0.98
          when  ${user_level_at}= 19  then  0.98
          when  ${user_level_at}= 20  then  0.98
          when  ${user_level_at}= 21  then  0.93
          when  ${user_level_at}= 22  then  0.88
          when  ${user_level_at}= 23  then  0.78
          when  ${user_level_at}= 24  then  0.88
          when  ${user_level_at}= 25  then  0.68
          when  ${user_level_at}= 26  then  0.93
          when  ${user_level_at}= 27  then  0.83
          when  ${user_level_at}= 28  then  0.88
          when  ${user_level_at}= 29  then  0.78
          when  ${user_level_at}= 30  then  0.98
          when  ${user_level_at}= 31  then  0.93
          when  ${user_level_at}= 32  then  0.83
          when  ${user_level_at}= 33  then  0.73
          when  ${user_level_at}= 34  then  0.83
          when  ${user_level_at}= 35  then  0.63
          when  ${user_level_at}= 36  then  0.88
          when  ${user_level_at}= 37  then  0.73
          when  ${user_level_at}= 38  then  0.83
          when  ${user_level_at}= 39  then  0.73
          when  ${user_level_at}= 40  then  0.98
          when  ${user_level_at}= 41  then  0.93
          when  ${user_level_at}= 42  then  0.78
          when  ${user_level_at}= 43  then  0.68
          when  ${user_level_at}= 44  then  0.78
          when  ${user_level_at}= 45  then  0.58
          when  ${user_level_at}= 46  then  0.83
          when  ${user_level_at}= 47  then  0.68
          when  ${user_level_at}= 48  then  0.78
          when  ${user_level_at}= 49  then  0.53
          when  ${user_level_at}= 50  then  0.98
          when  ${user_level_at}= 51  then  0.93
          when  ${user_level_at}= 52  then  0.83
          when  ${user_level_at}= 53  then  0.73
          when  ${user_level_at}= 54  then  0.83
          when  ${user_level_at}= 55  then  0.63
          when  ${user_level_at}= 56  then  0.88
          when  ${user_level_at}= 57  then  0.73
          when  ${user_level_at}= 58  then  0.83
          when  ${user_level_at}= 59  then  0.58
          when  ${user_level_at}= 60  then  0.98
          when  ${user_level_at}= 61  then  0.93
          when  ${user_level_at}= 62  then  0.78
          when  ${user_level_at}= 63  then  0.68
          when  ${user_level_at}= 64  then  0.78
          when  ${user_level_at}= 65  then  0.58
          when  ${user_level_at}= 66  then  0.83
          when  ${user_level_at}= 67  then  0.68
          when  ${user_level_at}= 68  then  0.78
          when  ${user_level_at}= 69  then  0.53
          when  ${user_level_at}= 70  then  0.93
          when  ${user_level_at}= 71  then  0.88
          when  ${user_level_at}= 72  then  0.73
          when  ${user_level_at}= 73  then  0.63
          when  ${user_level_at}= 74  then  0.73
          when  ${user_level_at}= 75  then  0.53
          when  ${user_level_at}= 76  then  0.78
          when  ${user_level_at}= 77  then  0.63
          when  ${user_level_at}= 78  then  0.73
          when  ${user_level_at}= 79  then  0.48
          when  ${user_level_at}= 80  then  0.98
          when  ${user_level_at}= 81  then  0.93
          when  ${user_level_at}= 82  then  0.78
          when  ${user_level_at}= 83  then  0.63
          when  ${user_level_at}= 84  then  0.73
          when  ${user_level_at}= 85  then  0.48
          when  ${user_level_at}= 86  then  0.78
          when  ${user_level_at}= 87  then  0.63
          when  ${user_level_at}= 88  then  0.68
          when  ${user_level_at}= 89  then  0.43
          when  ${user_level_at}= 90  then  0.88
          when  ${user_level_at}= 91  then  0.83
          when  ${user_level_at}= 92  then  0.63
          when  ${user_level_at}= 93  then  0.53
          when  ${user_level_at}= 94  then  0.63
          when  ${user_level_at}= 95  then  0.43
          when  ${user_level_at}= 96  then  0.68
          when  ${user_level_at}= 97  then  0.53
          when  ${user_level_at}= 98  then  0.63
          when  ${user_level_at}= 99  then  0.38
          when  ${user_level_at}= 100 then  0.98
          when  ${user_level_at}= 101 then  0.93
          when  ${user_level_at}= 102 then  0.78
          when  ${user_level_at}= 103 then  0.63
          when  ${user_level_at}= 104 then  0.73
          when  ${user_level_at}= 105 then  0.48
          when  ${user_level_at}= 106 then  0.78
          when  ${user_level_at}= 107 then  0.63
          when  ${user_level_at}= 108 then  0.68
          when  ${user_level_at}= 109 then  0.43
          when  ${user_level_at}= 110 then  0.88
          when  ${user_level_at}= 111 then  0.88
          when  ${user_level_at}= 112 then  0.68
          when  ${user_level_at}= 113 then  0.58
          when  ${user_level_at}= 114 then  0.68
          when  ${user_level_at}= 115 then  0.43
          when  ${user_level_at}= 116 then  0.73
          when  ${user_level_at}= 117 then  0.58
          when  ${user_level_at}= 118 then  0.68
          when  ${user_level_at}= 119 then  0.38
          when  ${user_level_at}= 120 then  0.88
          when  ${user_level_at}= 121 then  0.88
          when  ${user_level_at}= 122 then  0.68
          when  ${user_level_at}= 123 then  0.58
          when  ${user_level_at}= 124 then  0.68
          when  ${user_level_at}= 125 then  0.43
          when  ${user_level_at}= 126 then  0.73
          when  ${user_level_at}= 127 then  0.58
          when  ${user_level_at}= 128 then  0.68
          when  ${user_level_at}= 129 then  0.38
          when  ${user_level_at}= 130 then  0.83
          when  ${user_level_at}= 131 then  0.83
          when  ${user_level_at}= 132 then  0.63
          when  ${user_level_at}= 133 then  0.53
          when  ${user_level_at}= 134 then  0.63
          when  ${user_level_at}= 135 then  0.43
          when  ${user_level_at}= 136 then  0.73
          when  ${user_level_at}= 137 then  0.58
          when  ${user_level_at}= 138 then  0.63
          when  ${user_level_at}= 139 then  0.38
          when  ${user_level_at}= 140 then  0.83
          when  ${user_level_at}= 141 then  0.83
          when  ${user_level_at}= 142 then  0.58
          when  ${user_level_at}= 143 then  0.48
          when  ${user_level_at}= 144 then  0.58
          when  ${user_level_at}= 145 then  0.38
          when  ${user_level_at}= 146 then  0.68
          when  ${user_level_at}= 147 then  0.48
          when  ${user_level_at}= 148 then  0.58
          when  ${user_level_at}= 149 then  0.33
          when  ${user_level_at}= 150 then  0.98
          when  ${user_level_at}= 151 then  0.88
          when  ${user_level_at}= 152 then  0.68
          when  ${user_level_at}= 153 then  0.53
          when  ${user_level_at}= 154 then  0.63
          when  ${user_level_at}= 155 then  0.43
          when  ${user_level_at}= 156 then  0.73
          when  ${user_level_at}= 157 then  0.58
          when  ${user_level_at}= 158 then  0.68
          when  ${user_level_at}= 159 then  0.38
          when  ${user_level_at}= 160 then  0.88
          when  ${user_level_at}= 161 then  0.88
          when  ${user_level_at}= 162 then  0.58
          when  ${user_level_at}= 163 then  0.48
          when  ${user_level_at}= 164 then  0.58
          when  ${user_level_at}= 165 then  0.38
          when  ${user_level_at}= 166 then  0.68
          when  ${user_level_at}= 167 then  0.48
          when  ${user_level_at}= 168 then  0.58
          when  ${user_level_at}= 169 then  0.33
          when  ${user_level_at}= 170 then  0.83
          when  ${user_level_at}= 171 then  0.83
          when  ${user_level_at}= 172 then  0.58
          when  ${user_level_at}= 173 then  0.48
          when  ${user_level_at}= 174 then  0.58
          when  ${user_level_at}= 175 then  0.38
          when  ${user_level_at}= 176 then  0.68
          when  ${user_level_at}= 177 then  0.48
          when  ${user_level_at}= 178 then  0.58
          when  ${user_level_at}= 179 then  0.33
          when  ${user_level_at}= 180 then  0.83
          when  ${user_level_at}= 181 then  0.83
          when  ${user_level_at}= 182 then  0.58
          when  ${user_level_at}= 183 then  0.48
          when  ${user_level_at}= 184 then  0.58
          when  ${user_level_at}= 185 then  0.38
          when  ${user_level_at}= 186 then  0.68
          when  ${user_level_at}= 187 then  0.48
          when  ${user_level_at}= 188 then  0.58
          when  ${user_level_at}= 189 then  0.33
          when  ${user_level_at}= 190 then  0.83
          when  ${user_level_at}= 191 then  0.83
          when  ${user_level_at}= 192 then  0.53
          when  ${user_level_at}= 193 then  0.43
          when  ${user_level_at}= 194 then  0.53
          when  ${user_level_at}= 195 then  0.33
          when  ${user_level_at}= 196 then  0.63
          when  ${user_level_at}= 197 then  0.43
          when  ${user_level_at}= 198 then  0.53
          when  ${user_level_at}= 199 then  0.28
          when  ${user_level_at}= 200 then  0.98
          when  ${user_level_at}= 201 then  0.88
          when  ${user_level_at}= 202 then  0.63
          when  ${user_level_at}= 203 then  0.48
          when  ${user_level_at}= 204 then  0.58
          when  ${user_level_at}= 205 then  0.38
          when  ${user_level_at}= 206 then  0.68
          when  ${user_level_at}= 207 then  0.48
          when  ${user_level_at}= 208 then  0.58
          when  ${user_level_at}= 209 then  0.33
          when  ${user_level_at}= 210 then  0.88
          when  ${user_level_at}= 211 then  0.88
          when  ${user_level_at}= 212 then  0.58
          when  ${user_level_at}= 213 then  0.48
          when  ${user_level_at}= 214 then  0.58
          when  ${user_level_at}= 215 then  0.38
          when  ${user_level_at}= 216 then  0.68
          when  ${user_level_at}= 217 then  0.48
          when  ${user_level_at}= 218 then  0.58
          when  ${user_level_at}= 219 then  0.33
          when  ${user_level_at}= 220 then  0.83
          when  ${user_level_at}= 221 then  0.83
          when  ${user_level_at}= 222 then  0.53
          when  ${user_level_at}= 223 then  0.43
          when  ${user_level_at}= 224 then  0.53
          when  ${user_level_at}= 225 then  0.38
          when  ${user_level_at}= 226 then  0.68
          when  ${user_level_at}= 227 then  0.43
          when  ${user_level_at}= 228 then  0.58
          when  ${user_level_at}= 229 then  0.33
          when  ${user_level_at}= 230 then  0.83
          when  ${user_level_at}= 231 then  0.83
          when  ${user_level_at}= 232 then  0.53
          when  ${user_level_at}= 233 then  0.43
          when  ${user_level_at}= 234 then  0.53
          when  ${user_level_at}= 235 then  0.38
          when  ${user_level_at}= 236 then  0.68
          when  ${user_level_at}= 237 then  0.43
          when  ${user_level_at}= 238 then  0.58
          when  ${user_level_at}= 239 then  0.33
          when  ${user_level_at}= 240 then  0.83
          when  ${user_level_at}= 241 then  0.83
          when  ${user_level_at}= 242 then  0.53
          when  ${user_level_at}= 243 then  0.43
          when  ${user_level_at}= 244 then  0.53
          when  ${user_level_at}= 245 then  0.33
          when  ${user_level_at}= 246 then  0.63
          when  ${user_level_at}= 247 then  0.43
          when  ${user_level_at}= 248 then  0.53
          when  ${user_level_at}= 249 then  0.28
          when  ${user_level_at}= 250 then  0.98
          when  ${user_level_at}= 251 then  0.88
          when  ${user_level_at}= 252 then  0.63
          when  ${user_level_at}= 253 then  0.48
          when  ${user_level_at}= 254 then  0.53
          when  ${user_level_at}= 255 then  0.38
          when  ${user_level_at}= 256 then  0.68
          when  ${user_level_at}= 257 then  0.43
          when  ${user_level_at}= 258 then  0.58
          when  ${user_level_at}= 259 then  0.33
          when  ${user_level_at}= 260 then  0.88
          when  ${user_level_at}= 261 then  0.88
          when  ${user_level_at}= 262 then  0.53
          when  ${user_level_at}= 263 then  0.43
          when  ${user_level_at}= 264 then  0.53
          when  ${user_level_at}= 265 then  0.33
          when  ${user_level_at}= 266 then  0.63
          when  ${user_level_at}= 267 then  0.43
          when  ${user_level_at}= 268 then  0.53
          when  ${user_level_at}= 269 then  0.28
          when  ${user_level_at}= 270 then  0.83
          when  ${user_level_at}= 271 then  0.83
          when  ${user_level_at}= 272 then  0.48
          when  ${user_level_at}= 273 then  0.38
          when  ${user_level_at}= 274 then  0.48
          when  ${user_level_at}= 275 then  0.33
          when  ${user_level_at}= 276 then  0.63
          when  ${user_level_at}= 277 then  0.38
          when  ${user_level_at}= 278 then  0.53
          when  ${user_level_at}= 279 then  0.28
          when  ${user_level_at}= 280 then  0.83
          when  ${user_level_at}= 281 then  0.83
          when  ${user_level_at}= 282 then  0.48
          when  ${user_level_at}= 283 then  0.38
          when  ${user_level_at}= 284 then  0.48
          when  ${user_level_at}= 285 then  0.33
          when  ${user_level_at}= 286 then  0.63
          when  ${user_level_at}= 287 then  0.38
          when  ${user_level_at}= 288 then  0.53
          when  ${user_level_at}= 289 then  0.28
          when  ${user_level_at}= 290 then  0.83
          when  ${user_level_at}= 291 then  0.83
          when  ${user_level_at}= 292 then  0.48
          when  ${user_level_at}= 293 then  0.38
          when  ${user_level_at}= 294 then  0.48
          when  ${user_level_at}= 295 then  0.28
          when  ${user_level_at}= 296 then  0.63
          when  ${user_level_at}= 297 then  0.38
          when  ${user_level_at}= 298 then  0.48
          when  ${user_level_at}= 299 then  0.23
          when  ${user_level_at}= 300 then  0.98
          when  ${user_level_at}= 301 then  0.88
          when  ${user_level_at}= 302 then  0.63
          when  ${user_level_at}= 303 then  0.43
          when  ${user_level_at}= 304 then  0.58
          when  ${user_level_at}= 305 then  0.28
          when  ${user_level_at}= 306 then  0.63
          when  ${user_level_at}= 307 then  0.48
          when  ${user_level_at}= 308 then  0.53
          when  ${user_level_at}= 309 then  0.23
          when  ${user_level_at}= 310 then  0.88
          when  ${user_level_at}= 311 then  0.88
          when  ${user_level_at}= 312 then  0.53
          when  ${user_level_at}= 313 then  0.38
          when  ${user_level_at}= 314 then  0.53
          when  ${user_level_at}= 315 then  0.23
          when  ${user_level_at}= 316 then  0.63
          when  ${user_level_at}= 317 then  0.43
          when  ${user_level_at}= 318 then  0.53
          when  ${user_level_at}= 319 then  0.18
          when  ${user_level_at}= 320 then  0.83
          when  ${user_level_at}= 321 then  0.83
          when  ${user_level_at}= 322 then  0.53
          when  ${user_level_at}= 323 then  0.38
          when  ${user_level_at}= 324 then  0.53
          when  ${user_level_at}= 325 then  0.23
          when  ${user_level_at}= 326 then  0.63
          when  ${user_level_at}= 327 then  0.43
          when  ${user_level_at}= 328 then  0.53
          when  ${user_level_at}= 329 then  0.18
          when  ${user_level_at}= 330 then  0.83
          when  ${user_level_at}= 331 then  0.83
          when  ${user_level_at}= 332 then  0.53
          when  ${user_level_at}= 333 then  0.38
          when  ${user_level_at}= 334 then  0.53
          when  ${user_level_at}= 335 then  0.23
          when  ${user_level_at}= 336 then  0.63
          when  ${user_level_at}= 337 then  0.43
          when  ${user_level_at}= 338 then  0.53
          when  ${user_level_at}= 339 then  0.18
          when  ${user_level_at}= 340 then  0.83
          when  ${user_level_at}= 341 then  0.83
          when  ${user_level_at}= 342 then  0.53
          when  ${user_level_at}= 343 then  0.38
          when  ${user_level_at}= 344 then  0.58
          when  ${user_level_at}= 345 then  0.18
          when  ${user_level_at}= 346 then  0.63
          when  ${user_level_at}= 347 then  0.38
          when  ${user_level_at}= 348 then  0.53
          when  ${user_level_at}= 349 then  0.18
          when  ${user_level_at}= 350 then  0.98
          when  ${user_level_at}= 351 then  0.88
          when  ${user_level_at}= 352 then  0.63
          when  ${user_level_at}= 353 then  0.43
          when  ${user_level_at}= 354 then  0.58
          when  ${user_level_at}= 355 then  0.28
          when  ${user_level_at}= 356 then  0.63
          when  ${user_level_at}= 357 then  0.48
          when  ${user_level_at}= 358 then  0.53
          when  ${user_level_at}= 359 then  0.18
          when  ${user_level_at}= 360 then  0.88
          when  ${user_level_at}= 361 then  0.88
          when  ${user_level_at}= 362 then  0.53
          when  ${user_level_at}= 363 then  0.38
          when  ${user_level_at}= 364 then  0.53
          when  ${user_level_at}= 365 then  0.23
          when  ${user_level_at}= 366 then  0.63
          when  ${user_level_at}= 367 then  0.43
          when  ${user_level_at}= 368 then  0.53
          when  ${user_level_at}= 369 then  0.18
          when  ${user_level_at}= 370 then  0.83
          when  ${user_level_at}= 371 then  0.83
          when  ${user_level_at}= 372 then  0.53
          when  ${user_level_at}= 373 then  0.38
          when  ${user_level_at}= 374 then  0.53
          when  ${user_level_at}= 375 then  0.23
          when  ${user_level_at}= 376 then  0.63
          when  ${user_level_at}= 377 then  0.43
          when  ${user_level_at}= 378 then  0.53
          when  ${user_level_at}= 379 then  0.18
          when  ${user_level_at}= 380 then  0.83
          when  ${user_level_at}= 381 then  0.83
          when  ${user_level_at}= 382 then  0.53
          when  ${user_level_at}= 383 then  0.38
          when  ${user_level_at}= 384 then  0.53
          when  ${user_level_at}= 385 then  0.23
          when  ${user_level_at}= 386 then  0.63
          when  ${user_level_at}= 387 then  0.43
          when  ${user_level_at}= 388 then  0.53
          when  ${user_level_at}= 389 then  0.13
          when  ${user_level_at}= 390 then  0.83
          when  ${user_level_at}= 391 then  0.83
          when  ${user_level_at}= 392 then  0.53
          when  ${user_level_at}= 393 then  0.38
          when  ${user_level_at}= 394 then  0.58
          when  ${user_level_at}= 395 then  0.18
          when  ${user_level_at}= 396 then  0.63
          when  ${user_level_at}= 397 then  0.38
          when  ${user_level_at}= 398 then  0.53
          when  ${user_level_at}= 399 then  0.13
          when  ${user_level_at}= 400 then  0.98
          when  ${user_level_at}= 401 then  0.88
          when  ${user_level_at}= 402 then  0.63
          when  ${user_level_at}= 403 then  0.43
          when  ${user_level_at}= 404 then  0.58
          when  ${user_level_at}= 405 then  0.28
          when  ${user_level_at}= 406 then  0.63
          when  ${user_level_at}= 407 then  0.48
          when  ${user_level_at}= 408 then  0.53
          when  ${user_level_at}= 409 then  0.18
          when  ${user_level_at}= 410 then  0.88
          when  ${user_level_at}= 411 then  0.88
          when  ${user_level_at}= 412 then  0.53
          when  ${user_level_at}= 413 then  0.38
          when  ${user_level_at}= 414 then  0.53
          when  ${user_level_at}= 415 then  0.23
          when  ${user_level_at}= 416 then  0.63
          when  ${user_level_at}= 417 then  0.43
          when  ${user_level_at}= 418 then  0.53
          when  ${user_level_at}= 419 then  0.18
          when  ${user_level_at}= 420 then  0.83
          when  ${user_level_at}= 421 then  0.83
          when  ${user_level_at}= 422 then  0.53
          when  ${user_level_at}= 423 then  0.38
          when  ${user_level_at}= 424 then  0.53
          when  ${user_level_at}= 425 then  0.23
          when  ${user_level_at}= 426 then  0.63
          when  ${user_level_at}= 427 then  0.43
          when  ${user_level_at}= 428 then  0.53
          when  ${user_level_at}= 429 then  0.18
          when  ${user_level_at}= 430 then  0.83
          when  ${user_level_at}= 431 then  0.83
          when  ${user_level_at}= 432 then  0.53
          when  ${user_level_at}= 433 then  0.38
          when  ${user_level_at}= 434 then  0.53
          when  ${user_level_at}= 435 then  0.23
          when  ${user_level_at}= 436 then  0.63
          when  ${user_level_at}= 437 then  0.43
          when  ${user_level_at}= 438 then  0.53
          when  ${user_level_at}= 439 then  0.13
          when  ${user_level_at}= 440 then  0.83
          when  ${user_level_at}= 441 then  0.83
          when  ${user_level_at}= 442 then  0.53
          when  ${user_level_at}= 443 then  0.38
          when  ${user_level_at}= 444 then  0.58
          when  ${user_level_at}= 445 then  0.18
          when  ${user_level_at}= 446 then  0.63
          when  ${user_level_at}= 447 then  0.38
          when  ${user_level_at}= 448 then  0.53
          when  ${user_level_at}= 449 then  0.13
          when  ${user_level_at}= 450 then  0.98
          when  ${user_level_at}= 451 then  0.88
          when  ${user_level_at}= 452 then  0.63
          when  ${user_level_at}= 453 then  0.43
          when  ${user_level_at}= 454 then  0.58
          when  ${user_level_at}= 455 then  0.28
          when  ${user_level_at}= 456 then  0.63
          when  ${user_level_at}= 457 then  0.48
          when  ${user_level_at}= 458 then  0.53
          when  ${user_level_at}= 459 then  0.18
          when  ${user_level_at}= 460 then  0.88
          when  ${user_level_at}= 461 then  0.88
          when  ${user_level_at}= 462 then  0.53
          when  ${user_level_at}= 463 then  0.38
          when  ${user_level_at}= 464 then  0.53
          when  ${user_level_at}= 465 then  0.23
          when  ${user_level_at}= 466 then  0.63
          when  ${user_level_at}= 467 then  0.43
          when  ${user_level_at}= 468 then  0.53
          when  ${user_level_at}= 469 then  0.18
          when  ${user_level_at}= 470 then  0.83
          when  ${user_level_at}= 471 then  0.83
          when  ${user_level_at}= 472 then  0.53
          when  ${user_level_at}= 473 then  0.38
          when  ${user_level_at}= 474 then  0.53
          when  ${user_level_at}= 475 then  0.23
          when  ${user_level_at}= 476 then  0.63
          when  ${user_level_at}= 477 then  0.43
          when  ${user_level_at}= 478 then  0.53
          when  ${user_level_at}= 479 then  0.18
          when  ${user_level_at}= 480 then  0.83
          when  ${user_level_at}= 481 then  0.83
          when  ${user_level_at}= 482 then  0.53
          when  ${user_level_at}= 483 then  0.38
          when  ${user_level_at}= 484 then  0.53
          when  ${user_level_at}= 485 then  0.23
          when  ${user_level_at}= 486 then  0.63
          when  ${user_level_at}= 487 then  0.43
          when  ${user_level_at}= 488 then  0.53
          when  ${user_level_at}= 489 then  0.13
          when  ${user_level_at}= 490 then  0.83
          when  ${user_level_at}= 491 then  0.83
          when  ${user_level_at}= 492 then  0.53
          when  ${user_level_at}= 493 then  0.38
          when  ${user_level_at}= 494 then  0.58
          when  ${user_level_at}= 495 then  0.18
          when  ${user_level_at}= 496 then  0.63
          when  ${user_level_at}= 497 then  0.38
          when  ${user_level_at}= 498 then  0.53
          when  ${user_level_at}= 499 then  0.13
          when  ${user_level_at}= 500 then  0.98
          when  ${user_level_at}= 501 then  0.88
          when  ${user_level_at}= 502 then  0.63
          when  ${user_level_at}= 503 then  0.43
          when  ${user_level_at}= 504 then  0.58
          when  ${user_level_at}= 505 then  0.28
          when  ${user_level_at}= 506 then  0.63
          when  ${user_level_at}= 507 then  0.48
          when  ${user_level_at}= 508 then  0.53
          when  ${user_level_at}= 509 then  0.18
          when  ${user_level_at}= 510 then  0.88
          when  ${user_level_at}= 511 then  0.88
          when  ${user_level_at}= 512 then  0.53
          when  ${user_level_at}= 513 then  0.38
          when  ${user_level_at}= 514 then  0.53
          when  ${user_level_at}= 515 then  0.23
          when  ${user_level_at}= 516 then  0.63
          when  ${user_level_at}= 517 then  0.43
          when  ${user_level_at}= 518 then  0.53
          when  ${user_level_at}= 519 then  0.18
          when  ${user_level_at}= 520 then  0.83
          when  ${user_level_at}= 521 then  0.83
          when  ${user_level_at}= 522 then  0.53
          when  ${user_level_at}= 523 then  0.38
          when  ${user_level_at}= 524 then  0.53
          when  ${user_level_at}= 525 then  0.23
          when  ${user_level_at}= 526 then  0.63
          when  ${user_level_at}= 527 then  0.43
          when  ${user_level_at}= 528 then  0.53
          when  ${user_level_at}= 529 then  0.18
          when  ${user_level_at}= 530 then  0.83
          when  ${user_level_at}= 531 then  0.83
          when  ${user_level_at}= 532 then  0.53
          when  ${user_level_at}= 533 then  0.38
          when  ${user_level_at}= 534 then  0.53
          when  ${user_level_at}= 535 then  0.23
          when  ${user_level_at}= 536 then  0.63
          when  ${user_level_at}= 537 then  0.43
          when  ${user_level_at}= 538 then  0.53
          when  ${user_level_at}= 539 then  0.13
          when  ${user_level_at}= 540 then  0.83
          when  ${user_level_at}= 541 then  0.83
          when  ${user_level_at}= 542 then  0.53
          when  ${user_level_at}= 543 then  0.38
          when  ${user_level_at}= 544 then  0.58
          when  ${user_level_at}= 545 then  0.18
          when  ${user_level_at}= 546 then  0.63
          when  ${user_level_at}= 547 then  0.38
          when  ${user_level_at}= 548 then  0.53
          when  ${user_level_at}= 549 then  0.13
          when  ${user_level_at}= 550 then  0.98
          when  ${user_level_at}= 551 then  0.88
          when  ${user_level_at}= 552 then  0.63
          when  ${user_level_at}= 553 then  0.43
          when  ${user_level_at}= 554 then  0.58
          when  ${user_level_at}= 555 then  0.28
          when  ${user_level_at}= 556 then  0.63
          when  ${user_level_at}= 557 then  0.48
          when  ${user_level_at}= 558 then  0.53
          when  ${user_level_at}= 559 then  0.18
          when  ${user_level_at}= 560 then  0.88
          when  ${user_level_at}= 561 then  0.88
          when  ${user_level_at}= 562 then  0.53
          when  ${user_level_at}= 563 then  0.38
          when  ${user_level_at}= 564 then  0.53
          when  ${user_level_at}= 565 then  0.23
          when  ${user_level_at}= 566 then  0.63
          when  ${user_level_at}= 567 then  0.43
          when  ${user_level_at}= 568 then  0.53
          when  ${user_level_at}= 569 then  0.18
          when  ${user_level_at}= 570 then  0.83
          when  ${user_level_at}= 571 then  0.83
          when  ${user_level_at}= 572 then  0.53
          when  ${user_level_at}= 573 then  0.38
          when  ${user_level_at}= 574 then  0.53
          when  ${user_level_at}= 575 then  0.23
          when  ${user_level_at}= 576 then  0.63
          when  ${user_level_at}= 577 then  0.43
          when  ${user_level_at}= 578 then  0.53
          when  ${user_level_at}= 579 then  0.18
          when  ${user_level_at}= 580 then  0.83
          when  ${user_level_at}= 581 then  0.83
          when  ${user_level_at}= 582 then  0.53
          when  ${user_level_at}= 583 then  0.38
          when  ${user_level_at}= 584 then  0.53
          when  ${user_level_at}= 585 then  0.23
          when  ${user_level_at}= 586 then  0.63
          when  ${user_level_at}= 587 then  0.43
          when  ${user_level_at}= 588 then  0.53
          when  ${user_level_at}= 589 then  0.13
          when  ${user_level_at}= 590 then  0.83
          when  ${user_level_at}= 591 then  0.83
          when  ${user_level_at}= 592 then  0.53
          when  ${user_level_at}= 593 then  0.38
          when  ${user_level_at}= 594 then  0.58
          when  ${user_level_at}= 595 then  0.18
          when  ${user_level_at}= 596 then  0.63
          when  ${user_level_at}= 597 then  0.38
          when  ${user_level_at}= 598 then  0.53
          when  ${user_level_at}= 599 then  0.13
          when  ${user_level_at}= 600 then  0.98
          when  ${user_level_at}= 601 then  0.88
          when  ${user_level_at}= 602 then  0.63
          when  ${user_level_at}= 603 then  0.43
          when  ${user_level_at}= 604 then  0.58
          when  ${user_level_at}= 605 then  0.28
          when  ${user_level_at}= 606 then  0.63
          when  ${user_level_at}= 607 then  0.48
          when  ${user_level_at}= 608 then  0.53
          when  ${user_level_at}= 609 then  0.18
          when  ${user_level_at}= 610 then  0.88
          when  ${user_level_at}= 611 then  0.88
          when  ${user_level_at}= 612 then  0.53
          when  ${user_level_at}= 613 then  0.38
          when  ${user_level_at}= 614 then  0.53
          when  ${user_level_at}= 615 then  0.23
          when  ${user_level_at}= 616 then  0.63
          when  ${user_level_at}= 617 then  0.43
          when  ${user_level_at}= 618 then  0.53
          when  ${user_level_at}= 619 then  0.18
          when  ${user_level_at}= 620 then  0.83
          when  ${user_level_at}= 621 then  0.83
          when  ${user_level_at}= 622 then  0.53
          when  ${user_level_at}= 623 then  0.38
          when  ${user_level_at}= 624 then  0.53
          when  ${user_level_at}= 625 then  0.23
          when  ${user_level_at}= 626 then  0.63
          when  ${user_level_at}= 627 then  0.43
          when  ${user_level_at}= 628 then  0.53
          when  ${user_level_at}= 629 then  0.18
          when  ${user_level_at}= 630 then  0.83
          when  ${user_level_at}= 631 then  0.83
          when  ${user_level_at}= 632 then  0.53
          when  ${user_level_at}= 633 then  0.38
          when  ${user_level_at}= 634 then  0.53
          when  ${user_level_at}= 635 then  0.23
          when  ${user_level_at}= 636 then  0.63
          when  ${user_level_at}= 637 then  0.43
          when  ${user_level_at}= 638 then  0.53
          when  ${user_level_at}= 639 then  0.13
          when  ${user_level_at}= 640 then  0.83
          when  ${user_level_at}= 641 then  0.83
          when  ${user_level_at}= 642 then  0.53
          when  ${user_level_at}= 643 then  0.38
          when  ${user_level_at}= 644 then  0.58
          when  ${user_level_at}= 645 then  0.18
          when  ${user_level_at}= 646 then  0.63
          when  ${user_level_at}= 647 then  0.38
          when  ${user_level_at}= 648 then  0.53
          when  ${user_level_at}= 649 then  0.13
          when  ${user_level_at}= 650 then  0.98
          when  ${user_level_at}= 651 then  0.88
          when  ${user_level_at}= 652 then  0.63
          when  ${user_level_at}= 653 then  0.43
          when  ${user_level_at}= 654 then  0.58
          when  ${user_level_at}= 655 then  0.28
          when  ${user_level_at}= 656 then  0.63
          when  ${user_level_at}= 657 then  0.48
          when  ${user_level_at}= 658 then  0.53
          when  ${user_level_at}= 659 then  0.18
          when  ${user_level_at}= 660 then  0.88
          when  ${user_level_at}= 661 then  0.88
          when  ${user_level_at}= 662 then  0.53
          when  ${user_level_at}= 663 then  0.38
          when  ${user_level_at}= 664 then  0.53
          when  ${user_level_at}= 665 then  0.23
          when  ${user_level_at}= 666 then  0.63
          when  ${user_level_at}= 667 then  0.43
          when  ${user_level_at}= 668 then  0.53
          when  ${user_level_at}= 669 then  0.18
          when  ${user_level_at}= 670 then  0.83
          when  ${user_level_at}= 671 then  0.83
          when  ${user_level_at}= 672 then  0.53
          when  ${user_level_at}= 673 then  0.38
          when  ${user_level_at}= 674 then  0.53
          when  ${user_level_at}= 675 then  0.23
          when  ${user_level_at}= 676 then  0.63
          when  ${user_level_at}= 677 then  0.43
          when  ${user_level_at}= 678 then  0.53
          when  ${user_level_at}= 679 then  0.18
          when  ${user_level_at}= 680 then  0.83
          when  ${user_level_at}= 681 then  0.83
          when  ${user_level_at}= 682 then  0.53
          when  ${user_level_at}= 683 then  0.38
          when  ${user_level_at}= 684 then  0.53
          when  ${user_level_at}= 685 then  0.23
          when  ${user_level_at}= 686 then  0.63
          when  ${user_level_at}= 687 then  0.43
          when  ${user_level_at}= 688 then  0.53
          when  ${user_level_at}= 689 then  0.13
          when  ${user_level_at}= 690 then  0.83
          when  ${user_level_at}= 691 then  0.83
          when  ${user_level_at}= 692 then  0.53
          when  ${user_level_at}= 693 then  0.38
          when  ${user_level_at}= 694 then  0.58
          when  ${user_level_at}= 695 then  0.18
          when  ${user_level_at}= 696 then  0.63
          when  ${user_level_at}= 697 then  0.38
          when  ${user_level_at}= 698 then  0.53
          when  ${user_level_at}= 699 then  0.13
          when  ${user_level_at}= 700 then  0.98
          when  ${user_level_at}= 701 then  0.88
          when  ${user_level_at}= 702 then  0.63
          when  ${user_level_at}= 703 then  0.43
          when  ${user_level_at}= 704 then  0.58
          when  ${user_level_at}= 705 then  0.28
          when  ${user_level_at}= 706 then  0.63
          when  ${user_level_at}= 707 then  0.48
          when  ${user_level_at}= 708 then  0.53
          when  ${user_level_at}= 709 then  0.18
          when  ${user_level_at}= 710 then  0.88
          when  ${user_level_at}= 711 then  0.88
          when  ${user_level_at}= 712 then  0.53
          when  ${user_level_at}= 713 then  0.38
          when  ${user_level_at}= 714 then  0.53
          when  ${user_level_at}= 715 then  0.23
          when  ${user_level_at}= 716 then  0.63
          when  ${user_level_at}= 717 then  0.43
          when  ${user_level_at}= 718 then  0.53
          when  ${user_level_at}= 719 then  0.18
          when  ${user_level_at}= 720 then  0.83
          when  ${user_level_at}= 721 then  0.83
          when  ${user_level_at}= 722 then  0.53
          when  ${user_level_at}= 723 then  0.38
          when  ${user_level_at}= 724 then  0.53
          when  ${user_level_at}= 725 then  0.23
          when  ${user_level_at}= 726 then  0.63
          when  ${user_level_at}= 727 then  0.43
          when  ${user_level_at}= 728 then  0.53
          when  ${user_level_at}= 729 then  0.18
          when  ${user_level_at}= 730 then  0.83
          when  ${user_level_at}= 731 then  0.83
          when  ${user_level_at}= 732 then  0.53
          when  ${user_level_at}= 733 then  0.38
          when  ${user_level_at}= 734 then  0.53
          when  ${user_level_at}= 735 then  0.23
          when  ${user_level_at}= 736 then  0.63
          when  ${user_level_at}= 737 then  0.43
          when  ${user_level_at}= 738 then  0.53
          when  ${user_level_at}= 739 then  0.13
          when  ${user_level_at}= 740 then  0.83
          when  ${user_level_at}= 741 then  0.83
          when  ${user_level_at}= 742 then  0.53
          when  ${user_level_at}= 743 then  0.38
          when  ${user_level_at}= 744 then  0.58
          when  ${user_level_at}= 745 then  0.18
          when  ${user_level_at}= 746 then  0.63
          when  ${user_level_at}= 747 then  0.38
          when  ${user_level_at}= 748 then  0.53
          when  ${user_level_at}= 749 then  0.13
          when  ${user_level_at}= 750 then  0.98
          when  ${user_level_at}= 751 then  0.88
          when  ${user_level_at}= 752 then  0.63
          when  ${user_level_at}= 753 then  0.43
          when  ${user_level_at}= 754 then  0.58
          when  ${user_level_at}= 755 then  0.28
          when  ${user_level_at}= 756 then  0.63
          when  ${user_level_at}= 757 then  0.48
          when  ${user_level_at}= 758 then  0.53
          when  ${user_level_at}= 759 then  0.18
          when  ${user_level_at}= 760 then  0.88
          when  ${user_level_at}= 761 then  0.88
          when  ${user_level_at}= 762 then  0.53
          when  ${user_level_at}= 763 then  0.38
          when  ${user_level_at}= 764 then  0.53
          when  ${user_level_at}= 765 then  0.23
          when  ${user_level_at}= 766 then  0.63
          when  ${user_level_at}= 767 then  0.43
          when  ${user_level_at}= 768 then  0.53
          when  ${user_level_at}= 769 then  0.18
          when  ${user_level_at}= 770 then  0.83
          when  ${user_level_at}= 771 then  0.83
          when  ${user_level_at}= 772 then  0.53
          when  ${user_level_at}= 773 then  0.38
          when  ${user_level_at}= 774 then  0.53
          when  ${user_level_at}= 775 then  0.23
          when  ${user_level_at}= 776 then  0.63
          when  ${user_level_at}= 777 then  0.43
          when  ${user_level_at}= 778 then  0.53
          when  ${user_level_at}= 779 then  0.18
          when  ${user_level_at}= 780 then  0.83
          when  ${user_level_at}= 781 then  0.83
          when  ${user_level_at}= 782 then  0.53
          when  ${user_level_at}= 783 then  0.38
          when  ${user_level_at}= 784 then  0.53
          when  ${user_level_at}= 785 then  0.23
          when  ${user_level_at}= 786 then  0.63
          when  ${user_level_at}= 787 then  0.43
          when  ${user_level_at}= 788 then  0.53
          when  ${user_level_at}= 789 then  0.13
          when  ${user_level_at}= 790 then  0.83
          when  ${user_level_at}= 791 then  0.83
          when  ${user_level_at}= 792 then  0.53
          when  ${user_level_at}= 793 then  0.38
          when  ${user_level_at}= 794 then  0.58
          when  ${user_level_at}= 795 then  0.18
          when  ${user_level_at}= 796 then  0.63
          when  ${user_level_at}= 797 then  0.38
          when  ${user_level_at}= 798 then  0.53
          when  ${user_level_at}= 799 then  0.13
          when  ${user_level_at}= 800 then  0.98
          when  ${user_level_at}= 801 then  0.88
          when  ${user_level_at}= 802 then  0.63
          when  ${user_level_at}= 803 then  0.43
          when  ${user_level_at}= 804 then  0.58
          when  ${user_level_at}= 805 then  0.28
          when  ${user_level_at}= 806 then  0.63
          when  ${user_level_at}= 807 then  0.48
          when  ${user_level_at}= 808 then  0.53
          when  ${user_level_at}= 809 then  0.18
          when  ${user_level_at}= 810 then  0.88
          when  ${user_level_at}= 811 then  0.88
          when  ${user_level_at}= 812 then  0.53
          when  ${user_level_at}= 813 then  0.38
          when  ${user_level_at}= 814 then  0.53
          when  ${user_level_at}= 815 then  0.23
          when  ${user_level_at}= 816 then  0.63
          when  ${user_level_at}= 817 then  0.43
          when  ${user_level_at}= 818 then  0.53
          when  ${user_level_at}= 819 then  0.18
          when  ${user_level_at}= 820 then  0.83
          when  ${user_level_at}= 821 then  0.83
          when  ${user_level_at}= 822 then  0.53
          when  ${user_level_at}= 823 then  0.38
          when  ${user_level_at}= 824 then  0.53
          when  ${user_level_at}= 825 then  0.23
          when  ${user_level_at}= 826 then  0.63
          when  ${user_level_at}= 827 then  0.43
          when  ${user_level_at}= 828 then  0.53
          when  ${user_level_at}= 829 then  0.18
          when  ${user_level_at}= 830 then  0.83
          when  ${user_level_at}= 831 then  0.83
          when  ${user_level_at}= 832 then  0.53
          when  ${user_level_at}= 833 then  0.38
          when  ${user_level_at}= 834 then  0.53
          when  ${user_level_at}= 835 then  0.23
          when  ${user_level_at}= 836 then  0.63
          when  ${user_level_at}= 837 then  0.43
          when  ${user_level_at}= 838 then  0.53
          when  ${user_level_at}= 839 then  0.13
          when  ${user_level_at}= 840 then  0.83
          when  ${user_level_at}= 841 then  0.83
          when  ${user_level_at}= 842 then  0.53
          when  ${user_level_at}= 843 then  0.38
          when  ${user_level_at}= 844 then  0.58
          when  ${user_level_at}= 845 then  0.18
          when  ${user_level_at}= 846 then  0.63
          when  ${user_level_at}= 847 then  0.38
          when  ${user_level_at}= 848 then  0.53
          when  ${user_level_at}= 849 then  0.13
          when  ${user_level_at}= 850 then  0.98
          when  ${user_level_at}= 851 then  0.88
          when  ${user_level_at}= 852 then  0.63
          when  ${user_level_at}= 853 then  0.43
          when  ${user_level_at}= 854 then  0.58
          when  ${user_level_at}= 855 then  0.28
          when  ${user_level_at}= 856 then  0.63
          when  ${user_level_at}= 857 then  0.48
          when  ${user_level_at}= 858 then  0.53
          when  ${user_level_at}= 859 then  0.18
          when  ${user_level_at}= 860 then  0.88
          when  ${user_level_at}= 861 then  0.88
          when  ${user_level_at}= 862 then  0.53
          when  ${user_level_at}= 863 then  0.38
          when  ${user_level_at}= 864 then  0.53
          when  ${user_level_at}= 865 then  0.23
          when  ${user_level_at}= 866 then  0.63
          when  ${user_level_at}= 867 then  0.43
          when  ${user_level_at}= 868 then  0.53
          when  ${user_level_at}= 869 then  0.18
          when  ${user_level_at}= 870 then  0.83
          when  ${user_level_at}= 871 then  0.83
          when  ${user_level_at}= 872 then  0.53
          when  ${user_level_at}= 873 then  0.38
          when  ${user_level_at}= 874 then  0.53
          when  ${user_level_at}= 875 then  0.23
          when  ${user_level_at}= 876 then  0.63
          when  ${user_level_at}= 877 then  0.43
          when  ${user_level_at}= 878 then  0.53
          when  ${user_level_at}= 879 then  0.18
          when  ${user_level_at}= 880 then  0.83
          when  ${user_level_at}= 881 then  0.83
          when  ${user_level_at}= 882 then  0.53
          when  ${user_level_at}= 883 then  0.38
          when  ${user_level_at}= 884 then  0.53
          when  ${user_level_at}= 885 then  0.23
          when  ${user_level_at}= 886 then  0.63
          when  ${user_level_at}= 887 then  0.43
          when  ${user_level_at}= 888 then  0.53
          when  ${user_level_at}= 889 then  0.13
          when  ${user_level_at}= 890 then  0.83
          when  ${user_level_at}= 891 then  0.83
          when  ${user_level_at}= 892 then  0.53
          when  ${user_level_at}= 893 then  0.38
          when  ${user_level_at}= 894 then  0.58
          when  ${user_level_at}= 895 then  0.18
          when  ${user_level_at}= 896 then  0.63
          when  ${user_level_at}= 897 then  0.38
          when  ${user_level_at}= 898 then  0.53
          when  ${user_level_at}= 899 then  0.13
          when  ${user_level_at}= 900 then  0.98
          when  ${user_level_at}= 901 then  0.88
          when  ${user_level_at}= 902 then  0.63
          when  ${user_level_at}= 903 then  0.43
          when  ${user_level_at}= 904 then  0.58
          when  ${user_level_at}= 905 then  0.28
          when  ${user_level_at}= 906 then  0.63
          when  ${user_level_at}= 907 then  0.48
          when  ${user_level_at}= 908 then  0.53
          when  ${user_level_at}= 909 then  0.18
          when  ${user_level_at}= 910 then  0.88
          when  ${user_level_at}= 911 then  0.88
          when  ${user_level_at}= 912 then  0.53
          when  ${user_level_at}= 913 then  0.38
          when  ${user_level_at}= 914 then  0.53
          when  ${user_level_at}= 915 then  0.23
          when  ${user_level_at}= 916 then  0.63
          when  ${user_level_at}= 917 then  0.43
          when  ${user_level_at}= 918 then  0.53
          when  ${user_level_at}= 919 then  0.18
          when  ${user_level_at}= 920 then  0.83
          when  ${user_level_at}= 921 then  0.83
          when  ${user_level_at}= 922 then  0.53
          when  ${user_level_at}= 923 then  0.38
          when  ${user_level_at}= 924 then  0.53
          when  ${user_level_at}= 925 then  0.23
          when  ${user_level_at}= 926 then  0.63
          when  ${user_level_at}= 927 then  0.43
          when  ${user_level_at}= 928 then  0.53
          when  ${user_level_at}= 929 then  0.18
          when  ${user_level_at}= 930 then  0.83
          when  ${user_level_at}= 931 then  0.83
          when  ${user_level_at}= 932 then  0.53
          when  ${user_level_at}= 933 then  0.38
          when  ${user_level_at}= 934 then  0.53
          when  ${user_level_at}= 935 then  0.23
          when  ${user_level_at}= 936 then  0.63
          when  ${user_level_at}= 937 then  0.43
          when  ${user_level_at}= 938 then  0.53
          when  ${user_level_at}= 939 then  0.13
          when  ${user_level_at}= 940 then  0.83
          when  ${user_level_at}= 941 then  0.83
          when  ${user_level_at}= 942 then  0.53
          when  ${user_level_at}= 943 then  0.38
          when  ${user_level_at}= 944 then  0.58
          when  ${user_level_at}= 945 then  0.18
          when  ${user_level_at}= 946 then  0.63
          when  ${user_level_at}= 947 then  0.38
          when  ${user_level_at}= 948 then  0.53
          when  ${user_level_at}= 949 then  0.13
          when  ${user_level_at}= 950 then  0.98
          when  ${user_level_at}= 951 then  0.88
          when  ${user_level_at}= 952 then  0.63
          when  ${user_level_at}= 953 then  0.43
          when  ${user_level_at}= 954 then  0.58
          when  ${user_level_at}= 955 then  0.28
          when  ${user_level_at}= 956 then  0.63
          when  ${user_level_at}= 957 then  0.48
          when  ${user_level_at}= 958 then  0.53
          when  ${user_level_at}= 959 then  0.18
          when  ${user_level_at}= 960 then  0.88
          when  ${user_level_at}= 961 then  0.88
          when  ${user_level_at}= 962 then  0.53
          when  ${user_level_at}= 963 then  0.38
          when  ${user_level_at}= 964 then  0.53
          when  ${user_level_at}= 965 then  0.23
          when  ${user_level_at}= 966 then  0.63
          when  ${user_level_at}= 967 then  0.43
          when  ${user_level_at}= 968 then  0.53
          when  ${user_level_at}= 969 then  0.18
          when  ${user_level_at}= 970 then  0.83
          when  ${user_level_at}= 971 then  0.83
          when  ${user_level_at}= 972 then  0.53
          when  ${user_level_at}= 973 then  0.38
          when  ${user_level_at}= 974 then  0.53
          when  ${user_level_at}= 975 then  0.23
          when  ${user_level_at}= 976 then  0.63
          when  ${user_level_at}= 977 then  0.43
          when  ${user_level_at}= 978 then  0.53
          when  ${user_level_at}= 979 then  0.18
          when  ${user_level_at}= 980 then  0.83
          when  ${user_level_at}= 981 then  0.83
          when  ${user_level_at}= 982 then  0.53
          when  ${user_level_at}= 983 then  0.38
          when  ${user_level_at}= 984 then  0.53
          when  ${user_level_at}= 985 then  0.23
          when  ${user_level_at}= 986 then  0.63
          when  ${user_level_at}= 987 then  0.43
          when  ${user_level_at}= 988 then  0.53
          when  ${user_level_at}= 989 then  0.13
          when  ${user_level_at}= 990 then  0.83
          when  ${user_level_at}= 991 then  0.83
          when  ${user_level_at}= 992 then  0.53
          when  ${user_level_at}= 993 then  0.38
          when  ${user_level_at}= 994 then  0.58
          when  ${user_level_at}= 995 then  0.18
          when  ${user_level_at}= 996 then  0.63
          when  ${user_level_at}= 997 then  0.38
          when  ${user_level_at}= 998 then  0.53
          when  ${user_level_at}= 999 then  0.13
          when  ${user_level_at}= 1000  then  0.98
          when  ${user_level_at}= 1001  then  0.88
          when  ${user_level_at}= 1002  then  0.63
          when  ${user_level_at}= 1003  then  0.43
          when  ${user_level_at}= 1004  then  0.58
          when  ${user_level_at}= 1005  then  0.28
          when  ${user_level_at}= 1006  then  0.63
          when  ${user_level_at}= 1007  then  0.48
          when  ${user_level_at}= 1008  then  0.53
          when  ${user_level_at}= 1009  then  0.18
          when  ${user_level_at}= 1010  then  0.88
          when  ${user_level_at}= 1011  then  0.88
          when  ${user_level_at}= 1012  then  0.53
          when  ${user_level_at}= 1013  then  0.38
          when  ${user_level_at}= 1014  then  0.53
          when  ${user_level_at}= 1015  then  0.23
          when  ${user_level_at}= 1016  then  0.63
          when  ${user_level_at}= 1017  then  0.43
          when  ${user_level_at}= 1018  then  0.53
          when  ${user_level_at}= 1019  then  0.18
          when  ${user_level_at}= 1020  then  0.83
          when  ${user_level_at}= 1021  then  0.83
          when  ${user_level_at}= 1022  then  0.53
          when  ${user_level_at}= 1023  then  0.38
          when  ${user_level_at}= 1024  then  0.53
          when  ${user_level_at}= 1025  then  0.23
          when  ${user_level_at}= 1026  then  0.63
          when  ${user_level_at}= 1027  then  0.43
          when  ${user_level_at}= 1028  then  0.53
          when  ${user_level_at}= 1029  then  0.18
          when  ${user_level_at}= 1030  then  0.83
          when  ${user_level_at}= 1031  then  0.83
          when  ${user_level_at}= 1032  then  0.53
          when  ${user_level_at}= 1033  then  0.38
          when  ${user_level_at}= 1034  then  0.53
          when  ${user_level_at}= 1035  then  0.23
          when  ${user_level_at}= 1036  then  0.63
          when  ${user_level_at}= 1037  then  0.43
          when  ${user_level_at}= 1038  then  0.53
          when  ${user_level_at}= 1039  then  0.13
          when  ${user_level_at}= 1040  then  0.83
          when  ${user_level_at}= 1041  then  0.83
          when  ${user_level_at}= 1042  then  0.53
          when  ${user_level_at}= 1043  then  0.38
          when  ${user_level_at}= 1044  then  0.58
          when  ${user_level_at}= 1045  then  0.18
          when  ${user_level_at}= 1046  then  0.63
          when  ${user_level_at}= 1047  then  0.38
          when  ${user_level_at}= 1048  then  0.53
          when  ${user_level_at}= 1049  then  0.13
          when  ${user_level_at}= 1050  then  0.98
          when  ${user_level_at}= 1051  then  0.88
          when  ${user_level_at}= 1052  then  0.63
          when  ${user_level_at}= 1053  then  0.43
          when  ${user_level_at}= 1054  then  0.58
          when  ${user_level_at}= 1055  then  0.28
          when  ${user_level_at}= 1056  then  0.63
          when  ${user_level_at}= 1057  then  0.48
          when  ${user_level_at}= 1058  then  0.53
          when  ${user_level_at}= 1059  then  0.18
          when  ${user_level_at}= 1060  then  0.88
          when  ${user_level_at}= 1061  then  0.88
          when  ${user_level_at}= 1062  then  0.53
          when  ${user_level_at}= 1063  then  0.38
          when  ${user_level_at}= 1064  then  0.53
          when  ${user_level_at}= 1065  then  0.23
          when  ${user_level_at}= 1066  then  0.63
          when  ${user_level_at}= 1067  then  0.43
          when  ${user_level_at}= 1068  then  0.53
          when  ${user_level_at}= 1069  then  0.18
          when  ${user_level_at}= 1070  then  0.83
          when  ${user_level_at}= 1071  then  0.83
          when  ${user_level_at}= 1072  then  0.53
          when  ${user_level_at}= 1073  then  0.38
          when  ${user_level_at}= 1074  then  0.53
          when  ${user_level_at}= 1075  then  0.23
          when  ${user_level_at}= 1076  then  0.63
          when  ${user_level_at}= 1077  then  0.43
          when  ${user_level_at}= 1078  then  0.53
          when  ${user_level_at}= 1079  then  0.18
          when  ${user_level_at}= 1080  then  0.83
          when  ${user_level_at}= 1081  then  0.83
          when  ${user_level_at}= 1082  then  0.53
          when  ${user_level_at}= 1083  then  0.38
          when  ${user_level_at}= 1084  then  0.53
          when  ${user_level_at}= 1085  then  0.23
          when  ${user_level_at}= 1086  then  0.63
          when  ${user_level_at}= 1087  then  0.43
          when  ${user_level_at}= 1088  then  0.53
          when  ${user_level_at}= 1089  then  0.13
          when  ${user_level_at}= 1090  then  0.83
          when  ${user_level_at}= 1091  then  0.83
          when  ${user_level_at}= 1092  then  0.53
          when  ${user_level_at}= 1093  then  0.38
          when  ${user_level_at}= 1094  then  0.58
          when  ${user_level_at}= 1095  then  0.18
          when  ${user_level_at}= 1096  then  0.63
          when  ${user_level_at}= 1097  then  0.38
          when  ${user_level_at}= 1098  then  0.53
          when  ${user_level_at}= 1099  then  0.13
          when  ${user_level_at}= 1100  then  0.98
          when  ${user_level_at}= 1101  then  0.88
          when  ${user_level_at}= 1102  then  0.63
          when  ${user_level_at}= 1103  then  0.43
          when  ${user_level_at}= 1104  then  0.58
          when  ${user_level_at}= 1105  then  0.28
          when  ${user_level_at}= 1106  then  0.63
          when  ${user_level_at}= 1107  then  0.48
          when  ${user_level_at}= 1108  then  0.53
          when  ${user_level_at}= 1109  then  0.18
          when  ${user_level_at}= 1110  then  0.88
          when  ${user_level_at}= 1111  then  0.88
          when  ${user_level_at}= 1112  then  0.53
          when  ${user_level_at}= 1113  then  0.38
          when  ${user_level_at}= 1114  then  0.53
          when  ${user_level_at}= 1115  then  0.23
          when  ${user_level_at}= 1116  then  0.63
          when  ${user_level_at}= 1117  then  0.43
          when  ${user_level_at}= 1118  then  0.53
          when  ${user_level_at}= 1119  then  0.18
          when  ${user_level_at}= 1120  then  0.83
          when  ${user_level_at}= 1121  then  0.83
          when  ${user_level_at}= 1122  then  0.53
          when  ${user_level_at}= 1123  then  0.38
          when  ${user_level_at}= 1124  then  0.53
          when  ${user_level_at}= 1125  then  0.23
          when  ${user_level_at}= 1126  then  0.63
          when  ${user_level_at}= 1127  then  0.43
          when  ${user_level_at}= 1128  then  0.53
          when  ${user_level_at}= 1129  then  0.18
          when  ${user_level_at}= 1130  then  0.83
          when  ${user_level_at}= 1131  then  0.83
          when  ${user_level_at}= 1132  then  0.53
          when  ${user_level_at}= 1133  then  0.38
          when  ${user_level_at}= 1134  then  0.53
          when  ${user_level_at}= 1135  then  0.23
          when  ${user_level_at}= 1136  then  0.63
          when  ${user_level_at}= 1137  then  0.43
          when  ${user_level_at}= 1138  then  0.53
          when  ${user_level_at}= 1139  then  0.13
          when  ${user_level_at}= 1140  then  0.83
          when  ${user_level_at}= 1141  then  0.83
          when  ${user_level_at}= 1142  then  0.53
          when  ${user_level_at}= 1143  then  0.38
          when  ${user_level_at}= 1144  then  0.58
          when  ${user_level_at}= 1145  then  0.18
          when  ${user_level_at}= 1146  then  0.63
          when  ${user_level_at}= 1147  then  0.38
          when  ${user_level_at}= 1148  then  0.53
          when  ${user_level_at}= 1149  then  0.13
          when  ${user_level_at}= 1150  then  0.98
          when  ${user_level_at}= 1151  then  0.88
          when  ${user_level_at}= 1152  then  0.63
          when  ${user_level_at}= 1153  then  0.43
          when  ${user_level_at}= 1154  then  0.58
          when  ${user_level_at}= 1155  then  0.28
          when  ${user_level_at}= 1156  then  0.63
          when  ${user_level_at}= 1157  then  0.48
          when  ${user_level_at}= 1158  then  0.53
          when  ${user_level_at}= 1159  then  0.18
          when  ${user_level_at}= 1160  then  0.88
          when  ${user_level_at}= 1161  then  0.88
          when  ${user_level_at}= 1162  then  0.53
          when  ${user_level_at}= 1163  then  0.38
          when  ${user_level_at}= 1164  then  0.53
          when  ${user_level_at}= 1165  then  0.23
          when  ${user_level_at}= 1166  then  0.63
          when  ${user_level_at}= 1167  then  0.43
          when  ${user_level_at}= 1168  then  0.53
          when  ${user_level_at}= 1169  then  0.18
          when  ${user_level_at}= 1170  then  0.83
          when  ${user_level_at}= 1171  then  0.83
          when  ${user_level_at}= 1172  then  0.53
          when  ${user_level_at}= 1173  then  0.38
          when  ${user_level_at}= 1174  then  0.53
          when  ${user_level_at}= 1175  then  0.23
          when  ${user_level_at}= 1176  then  0.63
          when  ${user_level_at}= 1177  then  0.43
          when  ${user_level_at}= 1178  then  0.53
          when  ${user_level_at}= 1179  then  0.18
          when  ${user_level_at}= 1180  then  0.83
          when  ${user_level_at}= 1181  then  0.83
          when  ${user_level_at}= 1182  then  0.53
          when  ${user_level_at}= 1183  then  0.38
          when  ${user_level_at}= 1184  then  0.53
          when  ${user_level_at}= 1185  then  0.23
          when  ${user_level_at}= 1186  then  0.63
          when  ${user_level_at}= 1187  then  0.43
          when  ${user_level_at}= 1188  then  0.53
          when  ${user_level_at}= 1189  then  0.13
          when  ${user_level_at}= 1190  then  0.83
          when  ${user_level_at}= 1191  then  0.83
          when  ${user_level_at}= 1192  then  0.53
          when  ${user_level_at}= 1193  then  0.38
          when  ${user_level_at}= 1194  then  0.58
          when  ${user_level_at}= 1195  then  0.18
          when  ${user_level_at}= 1196  then  0.63
          when  ${user_level_at}= 1197  then  0.38
          when  ${user_level_at}= 1198  then  0.53
          when  ${user_level_at}= 1199  then  0.13
          when  ${user_level_at}= 1200  then  0.98
          when  ${user_level_at}= 1201  then  0.88
          when  ${user_level_at}= 1202  then  0.63
          when  ${user_level_at}= 1203  then  0.43
          when  ${user_level_at}= 1204  then  0.58
          when  ${user_level_at}= 1205  then  0.28
          when  ${user_level_at}= 1206  then  0.63
          when  ${user_level_at}= 1207  then  0.48
          when  ${user_level_at}= 1208  then  0.53
          when  ${user_level_at}= 1209  then  0.18
          when  ${user_level_at}= 1210  then  0.88
          when  ${user_level_at}= 1211  then  0.88
          when  ${user_level_at}= 1212  then  0.53
          when  ${user_level_at}= 1213  then  0.38
          when  ${user_level_at}= 1214  then  0.53
          when  ${user_level_at}= 1215  then  0.23
          when  ${user_level_at}= 1216  then  0.63
          when  ${user_level_at}= 1217  then  0.43
          when  ${user_level_at}= 1218  then  0.53
          when  ${user_level_at}= 1219  then  0.18
          when  ${user_level_at}= 1220  then  0.83
          when  ${user_level_at}= 1221  then  0.83
          when  ${user_level_at}= 1222  then  0.53
          when  ${user_level_at}= 1223  then  0.38
          when  ${user_level_at}= 1224  then  0.53
          when  ${user_level_at}= 1225  then  0.23
          when  ${user_level_at}= 1226  then  0.63
          when  ${user_level_at}= 1227  then  0.43
          when  ${user_level_at}= 1228  then  0.53
          when  ${user_level_at}= 1229  then  0.18
          when  ${user_level_at}= 1230  then  0.83
          when  ${user_level_at}= 1231  then  0.83
          when  ${user_level_at}= 1232  then  0.53
          when  ${user_level_at}= 1233  then  0.38
          when  ${user_level_at}= 1234  then  0.53
          when  ${user_level_at}= 1235  then  0.23
          when  ${user_level_at}= 1236  then  0.63
          when  ${user_level_at}= 1237  then  0.43
          when  ${user_level_at}= 1238  then  0.53
          when  ${user_level_at}= 1239  then  0.13
          when  ${user_level_at}= 1240  then  0.83
          when  ${user_level_at}= 1241  then  0.83
          when  ${user_level_at}= 1242  then  0.53
          when  ${user_level_at}= 1243  then  0.38
          when  ${user_level_at}= 1244  then  0.58
          when  ${user_level_at}= 1245  then  0.18
          when  ${user_level_at}= 1246  then  0.63
          when  ${user_level_at}= 1247  then  0.38
          when  ${user_level_at}= 1248  then  0.53
          when  ${user_level_at}= 1249  then  0.13
          when  ${user_level_at}= 1250  then  0.98
          when  ${user_level_at}= 1251  then  0.88
          when  ${user_level_at}= 1252  then  0.63
          when  ${user_level_at}= 1253  then  0.43
          when  ${user_level_at}= 1254  then  0.58
          when  ${user_level_at}= 1255  then  0.28
          when  ${user_level_at}= 1256  then  0.63
          when  ${user_level_at}= 1257  then  0.48
          when  ${user_level_at}= 1258  then  0.53
          when  ${user_level_at}= 1259  then  0.18
          when  ${user_level_at}= 1260  then  0.88
          when  ${user_level_at}= 1261  then  0.88
          when  ${user_level_at}= 1262  then  0.53
          when  ${user_level_at}= 1263  then  0.38
          when  ${user_level_at}= 1264  then  0.53
          when  ${user_level_at}= 1265  then  0.23
          when  ${user_level_at}= 1266  then  0.63
          when  ${user_level_at}= 1267  then  0.43
          when  ${user_level_at}= 1268  then  0.53
          when  ${user_level_at}= 1269  then  0.18
          when  ${user_level_at}= 1270  then  0.83
          when  ${user_level_at}= 1271  then  0.83
          when  ${user_level_at}= 1272  then  0.53
          when  ${user_level_at}= 1273  then  0.38
          when  ${user_level_at}= 1274  then  0.53
          when  ${user_level_at}= 1275  then  0.23
          when  ${user_level_at}= 1276  then  0.63
          when  ${user_level_at}= 1277  then  0.43
          when  ${user_level_at}= 1278  then  0.53
          when  ${user_level_at}= 1279  then  0.18
          when  ${user_level_at}= 1280  then  0.83
          when  ${user_level_at}= 1281  then  0.83
          when  ${user_level_at}= 1282  then  0.53
          when  ${user_level_at}= 1283  then  0.38
          when  ${user_level_at}= 1284  then  0.53
          when  ${user_level_at}= 1285  then  0.23
          when  ${user_level_at}= 1286  then  0.63
          when  ${user_level_at}= 1287  then  0.43
          when  ${user_level_at}= 1288  then  0.53
          when  ${user_level_at}= 1289  then  0.13
          when  ${user_level_at}= 1290  then  0.83
          when  ${user_level_at}= 1291  then  0.83
          when  ${user_level_at}= 1292  then  0.53
          when  ${user_level_at}= 1293  then  0.38
          when  ${user_level_at}= 1294  then  0.58
          when  ${user_level_at}= 1295  then  0.18
          when  ${user_level_at}= 1296  then  0.63
          when  ${user_level_at}= 1297  then  0.38
          when  ${user_level_at}= 1298  then  0.53
          when  ${user_level_at}= 1299  then  0.13
          when  ${user_level_at}= 1300  then  0.98
          when  ${user_level_at}= 1301  then  0.88
          when  ${user_level_at}= 1302  then  0.63
          when  ${user_level_at}= 1303  then  0.43
          when  ${user_level_at}= 1304  then  0.58
          when  ${user_level_at}= 1305  then  0.28
          when  ${user_level_at}= 1306  then  0.63
          when  ${user_level_at}= 1307  then  0.48
          when  ${user_level_at}= 1308  then  0.53
          when  ${user_level_at}= 1309  then  0.18
          when  ${user_level_at}= 1310  then  0.88
          when  ${user_level_at}= 1311  then  0.88
          when  ${user_level_at}= 1312  then  0.53
          when  ${user_level_at}= 1313  then  0.38
          when  ${user_level_at}= 1314  then  0.53
          when  ${user_level_at}= 1315  then  0.23
          when  ${user_level_at}= 1316  then  0.63
          when  ${user_level_at}= 1317  then  0.43
          when  ${user_level_at}= 1318  then  0.53
          when  ${user_level_at}= 1319  then  0.18
          when  ${user_level_at}= 1320  then  0.83
          when  ${user_level_at}= 1321  then  0.83
          when  ${user_level_at}= 1322  then  0.53
          when  ${user_level_at}= 1323  then  0.38
          when  ${user_level_at}= 1324  then  0.53
          when  ${user_level_at}= 1325  then  0.23
          when  ${user_level_at}= 1326  then  0.63
          when  ${user_level_at}= 1327  then  0.43
          when  ${user_level_at}= 1328  then  0.53
          when  ${user_level_at}= 1329  then  0.18
          when  ${user_level_at}= 1330  then  0.83
          when  ${user_level_at}= 1331  then  0.83
          when  ${user_level_at}= 1332  then  0.53
          when  ${user_level_at}= 1333  then  0.38
          when  ${user_level_at}= 1334  then  0.53
          when  ${user_level_at}= 1335  then  0.23
          when  ${user_level_at}= 1336  then  0.63
          when  ${user_level_at}= 1337  then  0.43
          when  ${user_level_at}= 1338  then  0.53
          when  ${user_level_at}= 1339  then  0.13
          when  ${user_level_at}= 1340  then  0.83
          when  ${user_level_at}= 1341  then  0.83
          when  ${user_level_at}= 1342  then  0.53
          when  ${user_level_at}= 1343  then  0.38
          when  ${user_level_at}= 1344  then  0.58
          when  ${user_level_at}= 1345  then  0.18
          when  ${user_level_at}= 1346  then  0.63
          when  ${user_level_at}= 1347  then  0.38
          when  ${user_level_at}= 1348  then  0.53
          when  ${user_level_at}= 1349  then  0.13
          when  ${user_level_at}= 1350  then  0.98
          when  ${user_level_at}= 1351  then  0.88
          when  ${user_level_at}= 1352  then  0.63
          when  ${user_level_at}= 1353  then  0.43
          when  ${user_level_at}= 1354  then  0.58
          when  ${user_level_at}= 1355  then  0.28
          when  ${user_level_at}= 1356  then  0.63
          when  ${user_level_at}= 1357  then  0.48
          when  ${user_level_at}= 1358  then  0.53
          when  ${user_level_at}= 1359  then  0.18
          when  ${user_level_at}= 1360  then  0.88
          when  ${user_level_at}= 1361  then  0.88
          when  ${user_level_at}= 1362  then  0.53
          when  ${user_level_at}= 1363  then  0.38
          when  ${user_level_at}= 1364  then  0.53
          when  ${user_level_at}= 1365  then  0.23
          when  ${user_level_at}= 1366  then  0.63
          when  ${user_level_at}= 1367  then  0.43
          when  ${user_level_at}= 1368  then  0.53
          when  ${user_level_at}= 1369  then  0.18
          when  ${user_level_at}= 1370  then  0.83
          when  ${user_level_at}= 1371  then  0.83
          when  ${user_level_at}= 1372  then  0.53
          when  ${user_level_at}= 1373  then  0.38
          when  ${user_level_at}= 1374  then  0.53
          when  ${user_level_at}= 1375  then  0.23
          when  ${user_level_at}= 1376  then  0.63
          when  ${user_level_at}= 1377  then  0.43
          when  ${user_level_at}= 1378  then  0.53
          when  ${user_level_at}= 1379  then  0.18
          when  ${user_level_at}= 1380  then  0.83
          when  ${user_level_at}= 1381  then  0.83
          when  ${user_level_at}= 1382  then  0.53
          when  ${user_level_at}= 1383  then  0.38
          when  ${user_level_at}= 1384  then  0.53
          when  ${user_level_at}= 1385  then  0.23
          when  ${user_level_at}= 1386  then  0.63
          when  ${user_level_at}= 1387  then  0.43
          when  ${user_level_at}= 1388  then  0.53
          when  ${user_level_at}= 1389  then  0.13
          when  ${user_level_at}= 1390  then  0.83
          when  ${user_level_at}= 1391  then  0.83
          when  ${user_level_at}= 1392  then  0.53
          when  ${user_level_at}= 1393  then  0.38
          when  ${user_level_at}= 1394  then  0.58
          when  ${user_level_at}= 1395  then  0.18
          when  ${user_level_at}= 1396  then  0.63
          when  ${user_level_at}= 1397  then  0.38
          when  ${user_level_at}= 1398  then  0.53
          when  ${user_level_at}= 1399  then  0.13
          when  ${user_level_at}= 1400  then  0.98
          when  ${user_level_at}= 1401  then  0.88
          when  ${user_level_at}= 1402  then  0.63
          when  ${user_level_at}= 1403  then  0.43
          when  ${user_level_at}= 1404  then  0.58
          when  ${user_level_at}= 1405  then  0.28
          when  ${user_level_at}= 1406  then  0.63
          when  ${user_level_at}= 1407  then  0.48
          when  ${user_level_at}= 1408  then  0.53
          when  ${user_level_at}= 1409  then  0.18
          when  ${user_level_at}= 1410  then  0.88
          when  ${user_level_at}= 1411  then  0.88
          when  ${user_level_at}= 1412  then  0.53
          when  ${user_level_at}= 1413  then  0.38
          when  ${user_level_at}= 1414  then  0.53
          when  ${user_level_at}= 1415  then  0.23
          when  ${user_level_at}= 1416  then  0.63
          when  ${user_level_at}= 1417  then  0.43
          when  ${user_level_at}= 1418  then  0.53
          when  ${user_level_at}= 1419  then  0.18
          when  ${user_level_at}= 1420  then  0.83
          when  ${user_level_at}= 1421  then  0.83
          when  ${user_level_at}= 1422  then  0.53
          when  ${user_level_at}= 1423  then  0.38
          when  ${user_level_at}= 1424  then  0.53
          when  ${user_level_at}= 1425  then  0.23
          when  ${user_level_at}= 1426  then  0.63
          when  ${user_level_at}= 1427  then  0.43
          when  ${user_level_at}= 1428  then  0.53
          when  ${user_level_at}= 1429  then  0.18
          when  ${user_level_at}= 1430  then  0.83
          when  ${user_level_at}= 1431  then  0.83
          when  ${user_level_at}= 1432  then  0.53
          when  ${user_level_at}= 1433  then  0.38
          when  ${user_level_at}= 1434  then  0.53
          when  ${user_level_at}= 1435  then  0.23
          when  ${user_level_at}= 1436  then  0.63
          when  ${user_level_at}= 1437  then  0.43
          when  ${user_level_at}= 1438  then  0.53
          when  ${user_level_at}= 1439  then  0.13
          when  ${user_level_at}= 1440  then  0.83
          when  ${user_level_at}= 1441  then  0.83
          when  ${user_level_at}= 1442  then  0.53
          when  ${user_level_at}= 1443  then  0.38
          when  ${user_level_at}= 1444  then  0.58
          when  ${user_level_at}= 1445  then  0.18
          when  ${user_level_at}= 1446  then  0.63
          when  ${user_level_at}= 1447  then  0.38
          when  ${user_level_at}= 1448  then  0.53
          when  ${user_level_at}= 1449  then  0.13
          when  ${user_level_at}= 1450  then  0.98
          when  ${user_level_at}= 1451  then  0.88
          when  ${user_level_at}= 1452  then  0.63
          when  ${user_level_at}= 1453  then  0.43
          when  ${user_level_at}= 1454  then  0.58
          when  ${user_level_at}= 1455  then  0.28
          when  ${user_level_at}= 1456  then  0.63
          when  ${user_level_at}= 1457  then  0.48
          when  ${user_level_at}= 1458  then  0.53
          when  ${user_level_at}= 1459  then  0.18
          when  ${user_level_at}= 1460  then  0.88
          when  ${user_level_at}= 1461  then  0.88
          when  ${user_level_at}= 1462  then  0.53
          when  ${user_level_at}= 1463  then  0.38
          when  ${user_level_at}= 1464  then  0.53
          when  ${user_level_at}= 1465  then  0.23
          when  ${user_level_at}= 1466  then  0.63
          when  ${user_level_at}= 1467  then  0.43
          when  ${user_level_at}= 1468  then  0.53
          when  ${user_level_at}= 1469  then  0.18
          when  ${user_level_at}= 1470  then  0.83
          when  ${user_level_at}= 1471  then  0.83
          when  ${user_level_at}= 1472  then  0.53
          when  ${user_level_at}= 1473  then  0.38
          when  ${user_level_at}= 1474  then  0.53
          when  ${user_level_at}= 1475  then  0.23
          when  ${user_level_at}= 1476  then  0.63
          when  ${user_level_at}= 1477  then  0.43
          when  ${user_level_at}= 1478  then  0.53
          when  ${user_level_at}= 1479  then  0.18
          when  ${user_level_at}= 1480  then  0.83
          when  ${user_level_at}= 1481  then  0.83
          when  ${user_level_at}= 1482  then  0.53
          when  ${user_level_at}= 1483  then  0.38
          when  ${user_level_at}= 1484  then  0.53
          when  ${user_level_at}= 1485  then  0.23
          when  ${user_level_at}= 1486  then  0.63
          when  ${user_level_at}= 1487  then  0.43
          when  ${user_level_at}= 1488  then  0.53
          when  ${user_level_at}= 1489  then  0.13
          when  ${user_level_at}= 1490  then  0.83
          when  ${user_level_at}= 1491  then  0.83
          when  ${user_level_at}= 1492  then  0.53
          when  ${user_level_at}= 1493  then  0.38
          when  ${user_level_at}= 1494  then  0.58
          when  ${user_level_at}= 1495  then  0.18
          when  ${user_level_at}= 1496  then  0.63
          when  ${user_level_at}= 1497  then  0.38
          when  ${user_level_at}= 1498  then  0.53
          when  ${user_level_at}= 1499  then  0.13
          when  ${user_level_at}= 1500  then  0.98
          when  ${user_level_at}= 1501  then  0.88
          when  ${user_level_at}= 1502  then  0.63
          when  ${user_level_at}= 1503  then  0.43
          when  ${user_level_at}= 1504  then  0.58
          when  ${user_level_at}= 1505  then  0.28
          when  ${user_level_at}= 1506  then  0.63
          when  ${user_level_at}= 1507  then  0.48
          when  ${user_level_at}= 1508  then  0.53
          when  ${user_level_at}= 1509  then  0.18
          when  ${user_level_at}= 1510  then  0.88
          when  ${user_level_at}= 1511  then  0.88
          when  ${user_level_at}= 1512  then  0.53
          when  ${user_level_at}= 1513  then  0.38
          when  ${user_level_at}= 1514  then  0.53
          when  ${user_level_at}= 1515  then  0.23
          when  ${user_level_at}= 1516  then  0.63
          when  ${user_level_at}= 1517  then  0.43
          when  ${user_level_at}= 1518  then  0.53
          when  ${user_level_at}= 1519  then  0.18
          when  ${user_level_at}= 1520  then  0.83
          when  ${user_level_at}= 1521  then  0.83
          when  ${user_level_at}= 1522  then  0.53
          when  ${user_level_at}= 1523  then  0.38
          when  ${user_level_at}= 1524  then  0.53
          when  ${user_level_at}= 1525  then  0.23
          when  ${user_level_at}= 1526  then  0.63
          when  ${user_level_at}= 1527  then  0.43
          when  ${user_level_at}= 1528  then  0.53
          when  ${user_level_at}= 1529  then  0.18
          when  ${user_level_at}= 1530  then  0.83
          when  ${user_level_at}= 1531  then  0.83
          when  ${user_level_at}= 1532  then  0.53
          when  ${user_level_at}= 1533  then  0.38
          when  ${user_level_at}= 1534  then  0.53
          when  ${user_level_at}= 1535  then  0.23
          when  ${user_level_at}= 1536  then  0.63
          when  ${user_level_at}= 1537  then  0.43
          when  ${user_level_at}= 1538  then  0.53
          when  ${user_level_at}= 1539  then  0.13
          when  ${user_level_at}= 1540  then  0.83
          when  ${user_level_at}= 1541  then  0.83
          when  ${user_level_at}= 1542  then  0.53
          when  ${user_level_at}= 1543  then  0.38
          when  ${user_level_at}= 1544  then  0.58
          when  ${user_level_at}= 1545  then  0.18
          when  ${user_level_at}= 1546  then  0.63
          when  ${user_level_at}= 1547  then  0.38
          when  ${user_level_at}= 1548  then  0.53
          when  ${user_level_at}= 1549  then  0.13
          when  ${user_level_at}= 1550  then  0.98
          when  ${user_level_at}= 1551  then  0.88
          when  ${user_level_at}= 1552  then  0.63
          when  ${user_level_at}= 1553  then  0.43
          when  ${user_level_at}= 1554  then  0.58
          when  ${user_level_at}= 1555  then  0.28
          when  ${user_level_at}= 1556  then  0.63
          when  ${user_level_at}= 1557  then  0.48
          when  ${user_level_at}= 1558  then  0.53
          when  ${user_level_at}= 1559  then  0.18
          when  ${user_level_at}= 1560  then  0.88
          when  ${user_level_at}= 1561  then  0.88
          when  ${user_level_at}= 1562  then  0.53
          when  ${user_level_at}= 1563  then  0.38
          when  ${user_level_at}= 1564  then  0.53
          when  ${user_level_at}= 1565  then  0.23
          when  ${user_level_at}= 1566  then  0.63
          when  ${user_level_at}= 1567  then  0.43
          when  ${user_level_at}= 1568  then  0.53
          when  ${user_level_at}= 1569  then  0.18
          when  ${user_level_at}= 1570  then  0.83
          when  ${user_level_at}= 1571  then  0.83
          when  ${user_level_at}= 1572  then  0.53
          when  ${user_level_at}= 1573  then  0.38
          when  ${user_level_at}= 1574  then  0.53
          when  ${user_level_at}= 1575  then  0.23
          when  ${user_level_at}= 1576  then  0.63
          when  ${user_level_at}= 1577  then  0.43
          when  ${user_level_at}= 1578  then  0.53
          when  ${user_level_at}= 1579  then  0.18
          when  ${user_level_at}= 1580  then  0.83
          when  ${user_level_at}= 1581  then  0.83
          when  ${user_level_at}= 1582  then  0.53
          when  ${user_level_at}= 1583  then  0.38
          when  ${user_level_at}= 1584  then  0.53
          when  ${user_level_at}= 1585  then  0.23
          when  ${user_level_at}= 1586  then  0.63
          when  ${user_level_at}= 1587  then  0.43
          when  ${user_level_at}= 1588  then  0.53
          when  ${user_level_at}= 1589  then  0.13
          when  ${user_level_at}= 1590  then  0.83
          when  ${user_level_at}= 1591  then  0.83
          when  ${user_level_at}= 1592  then  0.53
          when  ${user_level_at}= 1593  then  0.38
          when  ${user_level_at}= 1594  then  0.58
          when  ${user_level_at}= 1595  then  0.18
          when  ${user_level_at}= 1596  then  0.63
          when  ${user_level_at}= 1597  then  0.38
          when  ${user_level_at}= 1598  then  0.53
          when  ${user_level_at}= 1599  then  0.13
          when  ${user_level_at}= 1600  then  0.98
         end;;
  }

  dimension: user_level_id {
    type: number
    sql: ${TABLE}.user_level_id ;;
  }

  dimension: user_level_id_string {
    type: string
    sql: ${TABLE}.user_level_id_string ;;
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

  dimension: user_split_test_name_Streak_Breaker{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%2802_SBPassive%' then 'Streak Breaker Passive'
               when ${TABLE}.user_split_test_name like '%2802_SBActive_5%' then 'Streak Breaker Active5'
               when ${TABLE}.user_split_test_name like '%2802_SBActive_8%' then 'Streak Breaker Active8'
         end ;;
  }

  dimension: user_split_test_name_Starter_Coin_01_IOS{
    type: string
    sql:  case when ${initial_coin} = 200 and ${TABLE}.user_split_test_name like '%0303_StarterCoin_01_200%' then 'Starter Coin 200'
               when ${initial_coin} = 400 and ${TABLE}.user_split_test_name like '%0303_StarterCoin_01_400%' then 'Starter Coin 400'
          end ;;
  }

  dimension: user_split_test_name_Starter_Coin_03_IOS{
    type: string
    sql:  case when ${initial_coin} = 200 and ${TABLE}.user_split_test_name like '%0303_StarterCoin_03_200%' then 'Starter Coin 200'
               when ${initial_coin} = 400 and ${TABLE}.user_split_test_name like '%0303_StarterCoin_03_400%' then 'Starter Coin 400'
          end ;;
  }

  dimension: user_split_test_name_Dynamic_Ease_Mode{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%0603_DynamicEaseMode_Default%' then 'Dynamic Ease Mode Default'
               when ${TABLE}.user_split_test_name like '%0603_DynamicEaseMode_Variant%' then 'Dynamic Ease Mode Variant'
          end ;;
  }

  dimension: user_split_test_name_Ad_Frequency{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%0603_AdFrequency_Default%' then 'Ad Frequency Default'
               when ${TABLE}.user_split_test_name like '%0603_AdFrequency_Variant%' then 'Ad Frequency Variant'
          end ;;
  }

  dimension: user_split_test_name_Blended_Easy_Balance{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%1103_BlendedEasyBalance_Default%' then 'Default'
               when ${TABLE}.user_split_test_name like '%1103_BlendedEasyBalance_Variant%' then 'Variant'
          end ;;
  }

  dimension: user_split_test_name_Element{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%1403_ElementDefault%' then 'Default'
               when ${TABLE}.user_split_test_name like '%1403_ElementVariant%' then 'Variant'
          end ;;
  }

  dimension: user_split_test_name_Daily_Reward{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%1403_DailyRewardsPassive%' then 'Passive'
               when ${TABLE}.user_split_test_name like '%1403_DailyRewardsActive%' then 'Active'
          end ;;
  }

  dimension: user_split_test_name_Offer_Frequency{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%1403_OfferFrequency_Default%' then 'Default'
               when ${TABLE}.user_split_test_name like '%1403_OfferFrequency_Variant%' then 'Variant'
          end ;;
  }

  dimension: user_split_test_name_Streak_Breaker_50_85{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%1703_StreakBreaker_50_5%' then 'Streak Breaker 50'
               when ${TABLE}.user_split_test_name like '%1703_StreakBreaker_85_5%' then 'Streak Breaker 85'
          end ;;
  }

  dimension: user_split_test_name_First500{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%2803_First500_Default%' then 'First 500 Default'
               when ${TABLE}.user_split_test_name like '%2803_First500_Variant%' then 'First 500 Variant'
          end ;;
  }

  dimension: user_split_test_name_WB_Gifts{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%2803_WBGifts_Passive%' then 'WBGifts Passive'
               when ${TABLE}.user_split_test_name like '%2803_WBGifts_Active%' then 'WBGifts Active'
          end ;;
  }

  dimension: user_split_test_name_Store_Cheap_Expensive{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%2803_Store_Default%' then 'Store Default'
               when ${TABLE}.user_split_test_name like '%2803_Store_Expensive%' then 'Store Expensive'
               when ${TABLE}.user_split_test_name like '%2803_Store_Cheap%' then 'Store Cheap'
          end ;;
  }

  dimension: user_split_test_name_Ads_Android{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%1704_Ads_Passive%' then 'Ads Passive'
               when ${TABLE}.user_split_test_name like '%1704_Ads_Active%' then 'Ads Active'
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
    sql: (case when ${TABLE}.event_name= 'LevelCompleted' and ${TABLE}.event_timestamp<to_timestamp('23.01.2025 00:00:00', 'DD-MM-YYYY HH24:MI:SS')
               and ${extra_move_count} is null then 1

               when ${TABLE}.event_name= 'LevelCompleted' and ${TABLE}.event_timestamp>=to_timestamp('23.01.2025 00:00:00', 'DD-MM-YYYY HH24:MI:SS') and ${end_game_offer_1_offer_type} is null then 1
                else 0
           end)  ;;
  }

  measure: win_count_streak5 {
    type: sum
    sql: (case when ${TABLE}.event_name = 'LevelCompleted' and ${TABLE}.event_timestamp<to_timestamp('23.01.2025 00:00:00', 'DD-MM-YYYY HH24:MI:SS')
               and ${extra_move_count} is null then 1

      when ${user_split_test_name_Streak_Breaker} = 'Streak Breaker Active5' and ${user_win_streak_count} >= 5 and  ${TABLE}.event_name = 'LevelCompleted' and ${TABLE}.event_timestamp>=to_timestamp('23.01.2025 00:00:00', 'DD-MM-YYYY HH24:MI:SS') and ${end_game_offer_1_offer_type} is null then 1
      else 0
      end)  ;;
  }

  measure: win_count_streak8 {
    type: sum
    sql: (case when ${TABLE}.event_name= 'LevelCompleted' and ${TABLE}.event_timestamp<to_timestamp('23.01.2025 00:00:00', 'DD-MM-YYYY HH24:MI:SS')
               and ${extra_move_count} is null then 1

      when ${user_split_test_name_Streak_Breaker} = 'Streak Breaker Active8' and ${user_win_streak_count} >= 8 and ${TABLE}.event_name= 'LevelCompleted' and ${TABLE}.event_timestamp>=to_timestamp('23.01.2025 00:00:00', 'DD-MM-YYYY HH24:MI:SS') and ${end_game_offer_1_offer_type} is null then 1
      else 0
      end)  ;;
  }

  measure: fail_count {
    type: sum
    sql: (case when ${TABLE}.event_timestamp<to_timestamp('23.01.2025 00:00:00', 'DD-MM-YYYY HH24:MI:SS')
               and (${extra_move_count} is not null or ${TABLE}.event_name= 'LevelFailed') then 1

               when ${TABLE}.event_timestamp>=to_timestamp('23.01.2025 00:00:00', 'DD-MM-YYYY HH24:MI:SS') and (${end_game_offer_1_offer_type} is not null or ${TABLE}.event_name= 'LevelFailed')  then 1
                else 0
           end) ;;
  }

  measure: fail_count_time {
    type: sum
    sql: (case when ${TABLE}.event_timestamp<to_timestamp('23.01.2025 00:00:00', 'DD-MM-YYYY HH24:MI:SS')
               and (${extra_move_count} is not null or ${TABLE}.event_name= 'LevelFailed') then 1

      when ${TABLE}.event_timestamp>=to_timestamp('23.01.2025 00:00:00', 'DD-MM-YYYY HH24:MI:SS') and (${end_game_offer_1_fail_type} = 'TimeOver' or (${TABLE}.event_name= 'LevelFailed' and ${TABLE}.fail_type = 'TimeOver'))  then 1
      else 0
      end) ;;
  }

  measure: fail_count_streak5 {
    type: sum
    sql: (case when ${TABLE}.event_timestamp<to_timestamp('23.01.2025 00:00:00', 'DD-MM-YYYY HH24:MI:SS')
               and (${extra_move_count} is not null or ${TABLE}.event_name= 'LevelFailed') then 1

      when ${user_split_test_name_Streak_Breaker} = 'Streak Breaker Active5' and ${user_win_streak_count} >= 5 and ${TABLE}.event_timestamp>=to_timestamp('23.01.2025 00:00:00', 'DD-MM-YYYY HH24:MI:SS') and (${end_game_offer_1_offer_type} is not null or ${TABLE}.event_name= 'LevelFailed')  then 1
      else 0
      end) ;;
  }

  measure: fail_count_streak8 {
    type: sum
    sql: (case when ${TABLE}.event_timestamp<to_timestamp('23.01.2025 00:00:00', 'DD-MM-YYYY HH24:MI:SS')
               and (${extra_move_count} is not null or ${TABLE}.event_name= 'LevelFailed') then 1

      when ${user_split_test_name_Streak_Breaker} = 'Streak Breaker Active8' and ${user_win_streak_count} >= 8 and ${TABLE}.event_timestamp>=to_timestamp('23.01.2025 00:00:00', 'DD-MM-YYYY HH24:MI:SS') and (${end_game_offer_1_offer_type} is not null or ${TABLE}.event_name= 'LevelFailed')  then 1
      else 0
      end) ;;
  }

  measure: win_rate {
    type: number
    sql: (1.0*${win_count}/nullif(${win_count} + ${fail_count},0)) ;;
    value_format: "0%"
  }

  measure: win_rate_streak5 {
    type: number
    sql: (1.0*${win_count_streak5}/nullif(${win_count_streak5} + ${fail_count_streak5},0)) ;;
    value_format: "0%"
  }

  measure: win_rate_streak8 {
    type: number
    sql:  (1.0*${win_count_streak8}/nullif(${win_count_streak8} + ${fail_count_streak8},0))  ;;
    value_format: "0%"
  }

  measure: diff_elo_score_per10 {
    type: percentile
    percentile: 10
    sql: ${user_difficulty_elo_score} ;;
    value_format: "##.00"
  }

  measure: diff_elo_score_per20 {
    type: percentile
    percentile: 20
    sql: ${user_difficulty_elo_score} ;;
    value_format: "##.00"
  }

  measure: diff_elo_score_per30 {
    type: percentile
    percentile: 30
    sql: ${user_difficulty_elo_score} ;;
    value_format: "##.00"
  }

  measure: diff_elo_score_per40 {
    type: percentile
    percentile: 40
    sql: ${user_difficulty_elo_score} ;;
    value_format: "##.00"
  }

  measure: diff_elo_score_per50 {
    type: percentile
    percentile: 50
    sql: ${user_difficulty_elo_score} ;;
    value_format: "##.00"
  }

  measure: diff_elo_score_per60 {
    type: percentile
    percentile: 60
    sql: ${user_difficulty_elo_score} ;;
    value_format: "##.00"
  }

  measure: diff_elo_score_per70 {
    type: percentile
    percentile: 70
    sql: ${user_difficulty_elo_score} ;;
    value_format: "##.00"
  }

  measure: diff_elo_score_per80 {
    type: percentile
    percentile: 80
    sql: ${user_difficulty_elo_score} ;;
    value_format: "##.00"
  }

  measure: diff_elo_score_per90 {
    type: percentile
    percentile: 90
    sql: ${user_difficulty_elo_score} ;;
    value_format: "##.00"
  }

  measure: user_level_reach_per10 {
    type: percentile
    percentile: 10
    sql: ${user_level_at} ;;
    value_format: "##"
  }

  measure: user_level_reach_per25 {
    type: percentile
    percentile: 25
    sql: ${user_level_at} ;;
    value_format: "##"
  }

  measure: user_level_reach_per75 {
    type: percentile
    percentile: 75
    sql: ${user_level_at} ;;
    value_format: "##"
  }

  measure: user_level_reach_per90 {
    type: percentile
    percentile: 90
    sql: ${user_level_at} ;;
    value_format: "##"
  }

}
