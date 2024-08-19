# The name of this view in Looker is "Session"
view: session {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: tile_match.session ;;
  drill_fields: [session_id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: session_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.session_id ;;
  }
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

  dimension: build_no {
    type: number
    sql: ${TABLE}.build_no ;;
  }

  dimension: connection_type {
    type: number
    sql: ${TABLE}.connection_type ;;
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

  dimension_group: installed {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.installed_at ;;
  }

  dimension: inventory_coin {
    type: number
    sql: ${TABLE}.inventory_coin ;;
  }

  dimension: inventory_life {
    type: number
    sql: ${TABLE}.inventory_life ;;
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

  dimension: user_adgroup {
    type: string
    sql: ${TABLE}.user_adgroup ;;
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
  measure: count {
    type: count
    drill_fields: [session_id, user_split_test_name, event_name, progression.count]
  }
}
