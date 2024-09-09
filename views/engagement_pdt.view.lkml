include: "/models/tile_match.model.lkml"



view: engagement_pdt {
  derived_table: {
    distribution: "advertising_id"
      sql: select advertising_id,
                           date_trunc('day', session_start_time) as client,
                           count(distinct session_id) as sessioncount,
                           sum(session_time) / 60 as playtime,
                           max(session_id) as session_id,
                           min(arrival_ts) as arrival_ts,
                           max(app_version) as app_version,
                           max(build_no) as build_no,
                           max(connection_type) as connection_type,
                           max(event_id) as event_id,
                           max(event_name) as event_name,
                           max(event_type) as event_type,
                           max(event_version) as event_version,
                           max(installed) as installed_at,
                          max(inventory_coin) as inventory_coin,
                          max(inventory_life) as inventory_life,
                          max(ip_address) as ip_address,
                          max(user_adgroup) as user_adgroup,
                          max(user_campaign) as user_campaign,
                          max(user_creative) as user_creative,
                          max(user_current_fps) as user_current_fps,
                          max(user_device) as user_device,
                          max(user_level_at) as user_level_at,
                          max(user_level_id) as user_level_id,
                          max(user_manufacturer) as user_manufacturer,
                          max(user_network) as user_network,
                          bool_or(user_notification_state) as user_notification_state,
                          max(user_os_version) as user_os_version,
                          max(user_platform) as user_platform,
                          max(user_session_count) as user_session_count,
                          max(user_split_test_name) as user_split_test_name,
                          max(user_test_routing_value) as user_test_routing_value,
                          max(user_total_attempt_at_current_lvl) as user_total_attempt_at_current_lvl,
                          max(user_total_payment) as user_total_payment,
                          max(user_total_session_time) as user_total_session_time,
                          max(network) as network,
                          max(campaign) as campaign,
                          max(adgroup) as adgroup,
                          max(creative) as creative,
                          max(country) as country
                from "LOOKER_SCRATCH"."5J_tile_match_session_pdt"
                group by advertising_id, client ;;

    publish_as_db_view: yes
    sql_trigger_value: select DATE_TRUNC('hour',getdate())  ;;
    sortkeys: ["advertising_id","country","client"]
    }


  dimension: advertising_id {
    type: string
    sql: ${TABLE}.advertising_id ;;
  }

  dimension: app_version {
    type: string
    sql: ${TABLE}.app_version ;;
  }

  dimension: pivot_app_version_list {
    type: string
    sql: {% if ${app_version}._is_filtered %} ${app_version} {% else %} 'App Version' {% endif %};;
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

  dimension_group: client {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.client ;;
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

  dimension: install_day_of_user {
    type: number
    sql: FLOOR(DATEDIFF(hour,${TABLE}.installed_at,${TABLE}.client)/24) ;;
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

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
  }

  dimension: sessioncount {
    type: number
    sql: ${TABLE}.sessioncount ;;
  }

  dimension: playtime {
    type: number
    sql: ${TABLE}.playtime ;;
  }

  dimension: user_adgroup {
    type: string
    sql: ${TABLE}.user_adgroup ;;
  }

  dimension: user_campaign {
    type: string
    sql: ${TABLE}.user_campaign ;;
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

  dimension: network {
    type: string
    sql: ${TABLE}.network ;;
  }

  dimension: creative {
    type: string
    sql: ${TABLE}.creative ;;
  }

  dimension: adgroup {
    type: string
    sql: ${TABLE}.adgroup ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
  }

  dimension: country {
    type: string
    sql: UPPER(${TABLE}.country) ;;
  }

  measure: count {
    type: count
  }

  measure: per1playtime {
    type: percentile
    percentile: 1
    sql: ${TABLE}.playtime ;;
  }

  measure: per5playtime {
    type: percentile
    percentile: 5
    sql: ${TABLE}.playtime ;;
  }

  measure: per10playtime {
    type: percentile
    percentile: 10
    sql: ${TABLE}.playtime ;;
  }

  measure: per25playtime {
    type: percentile
    percentile: 25
    sql: ${TABLE}.playtime ;;
  }

  measure: per75playtime {
    type: percentile
    percentile: 75
    sql: ${TABLE}.playtime ;;
  }

  measure: per90playtime {
    type: percentile
    percentile: 90
    sql: ${TABLE}.playtime ;;
  }

  measure: per95playtime {
    type: percentile
    percentile: 95
    sql: ${TABLE}.playtime ;;
  }

  measure: per99playtime {
    type: percentile
    percentile: 99
    sql: ${TABLE}.playtime ;;
  }

  measure: per1sessioncount {
    type: percentile
    percentile: 1
    sql: ${TABLE}.sessioncount ;;
  }

  measure: per5sessioncount {
    type: percentile
    percentile: 5
    sql: ${TABLE}.sessioncount ;;
  }

  measure: per10sessioncount {
    type: percentile
    percentile: 10
    sql: ${TABLE}.sessioncount ;;
  }

  measure: per25sessioncount {
    type: percentile
    percentile: 25
    sql: ${TABLE}.sessioncount ;;
  }

  measure: per75sessioncount {
    type: percentile
    percentile: 75
    sql: ${TABLE}.sessioncount ;;
  }

  measure: per90sessioncount {
    type: percentile
    percentile: 90
    sql: ${TABLE}.sessioncount ;;
  }

  measure: per95sessioncount {
    type: percentile
    percentile: 95
    sql: ${TABLE}.sessioncount ;;
  }

  measure: per99sessioncount {
    type: percentile
    percentile: 99
    sql: ${TABLE}.sessioncount ;;
  }


}
