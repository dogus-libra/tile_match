# The name of this view in Looker is "Progression"
view: progression {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: fruit_merge.progression ;;

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

  dimension: begin {
    type: number
    sql: ${TABLE}.begin ;;
  }

  dimension: bombs_created {
    type: number
    sql: ${TABLE}.bombs_created ;;
  }

  dimension: booster_generator_fulled {
    type: number
    sql: ${TABLE}.booster_generator_fulled ;;
  }

  dimension: booster_generator_score {
    type: number
    sql: ${TABLE}.booster_generator_score ;;
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

  dimension: fail_type {
    type: string
    sql: ${TABLE}.fail_type ;;
  }

  dimension: game_mode {
    type: string
    sql: ${TABLE}.game_mode ;;
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

  dimension: move_object {
    type: string
    sql: ${TABLE}.move_object ;;
  }

  dimension: moves_made {
    type: number
    sql: ${TABLE}.moves_made ;;
  }

  dimension: moves_made_string {
    type: string
    sql: ${TABLE}.moves_made_string ;;
  }

  dimension: propellers_activated {
    type: number
    sql: ${TABLE}.propellers_activated ;;
  }

  dimension: remaining {
    type: number
    sql: ${TABLE}.remaining ;;
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

  dimension: targets_completed_average {
    type: number
    sql: ${TABLE}.targets_completed_average ;;
  }

  dimension: targets_completed_big {
    type: number
    sql: ${TABLE}.targets_completed_big ;;
  }

  dimension: targets_completed_enormous {
    type: number
    sql: ${TABLE}.targets_completed_enormous ;;
  }

  dimension: targets_completed_huge {
    type: number
    sql: ${TABLE}.targets_completed_huge ;;
  }

  dimension: targets_completed_large {
    type: number
    sql: ${TABLE}.targets_completed_large ;;
  }

  dimension: targets_completed_massive {
    type: number
    sql: ${TABLE}.targets_completed_massive ;;
  }

  dimension: targets_completed_medium {
    type: number
    sql: ${TABLE}.targets_completed_medium ;;
  }

  dimension: targets_completed_petite {
    type: number
    sql: ${TABLE}.targets_completed_petite ;;
  }

  dimension: targets_completed_total_balloon {
    type: number
    sql: ${TABLE}.targets_completed_total_balloon ;;
  }

  dimension: targets_completed_total_bush {
    type: number
    sql: ${TABLE}.targets_completed_total_bush ;;
  }

  dimension: targets_completed_total_cantoss {
    type: number
    sql: ${TABLE}.targets_completed_total_cantoss ;;
  }

  dimension: targets_completed_total_crate {
    type: number
    sql: ${TABLE}.targets_completed_total_crate ;;
  }

  dimension: targets_completed_total_crusher {
    type: number
    sql: ${TABLE}.targets_completed_total_crusher ;;
  }

  dimension: targets_completed_total_donut {
    type: number
    sql: ${TABLE}.targets_completed_total_donut ;;
  }

  dimension: targets_total_average {
    type: number
    sql: ${TABLE}.targets_total_average ;;
  }

  dimension: targets_total_balloon {
    type: number
    sql: ${TABLE}.targets_total_balloon ;;
  }

  dimension: targets_total_big {
    type: number
    sql: ${TABLE}.targets_total_big ;;
  }

  dimension: targets_total_bush {
    type: number
    sql: ${TABLE}.targets_total_bush ;;
  }

  dimension: targets_total_cantoss {
    type: number
    sql: ${TABLE}.targets_total_cantoss ;;
  }

  dimension: targets_total_crate {
    type: number
    sql: ${TABLE}.targets_total_crate ;;
  }

  dimension: targets_total_crusher {
    type: number
    sql: ${TABLE}.targets_total_crusher ;;
  }

  dimension: targets_total_donut {
    type: number
    sql: ${TABLE}.targets_total_donut ;;
  }

  dimension: targets_total_enormous {
    type: number
    sql: ${TABLE}.targets_total_enormous ;;
  }

  dimension: targets_total_huge {
    type: number
    sql: ${TABLE}.targets_total_huge ;;
  }

  dimension: targets_total_large {
    type: number
    sql: ${TABLE}.targets_total_large ;;
  }

  dimension: targets_total_massive {
    type: number
    sql: ${TABLE}.targets_total_massive ;;
  }

  dimension: targets_total_medium {
    type: number
    sql: ${TABLE}.targets_total_medium ;;
  }

  dimension: targets_total_petite {
    type: number
    sql: ${TABLE}.targets_total_petite ;;
  }

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
    drill_fields: [event_name, user_split_test_name, session.event_name, session.session_id, session.user_split_test_name]
  }
}
