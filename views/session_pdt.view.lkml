include: "/models/tile_match.model.lkml"


view: session_pdt {
  derived_table: {
    distribution: "advertising_id"
    sql:

    select sess.*,COALESCE(fmr.country,sess.user_country_code) as country, COALESCE(fmr.app_version,sess.app_version_s) as app_version,
         COALESCE((CASE
             WHEN fmr.network_name = 'Apple Search Ads' THEN 'apple'
             WHEN fmr.network_name = 'Google Ads ACI' THEN 'adwords'
             WHEN fmr.network_name = 'Google Organic Search' THEN 'google_organic_search'
             WHEN fmr.network_name = 'Vungle' THEN 'vungle'
             WHEN fmr.network_name = 'ironSrc' THEN 'ironsource'
             WHEN fmr.network_name = 'Organic' OR fmr.network_name is null THEN 'Organic'
             WHEN fmr.network_name = 'UnityAds' THEN 'unity_ads'
             WHEN (fmr.network_name = 'Unattributed' OR fmr.network_name = 'Facebook Installs' OR
               fmr.network_name = 'Off-Facebook Installs' OR
               fmr.network_name = 'Facebook Messenger Installs' OR
               fmr.network_name = 'Instagram Installs') THEN 'facebook' END),(sess.user_network))   as network,

         COALESCE(rtrim(CASE
                   WHEN (fmr.network_name = 'Google Organic Search' OR
                         fmr.network_name = 'Organic' OR fmr.network_name is null) THEN NULL
                   ELSE SPLIT_PART((CASE
                                        WHEN (fmr.campaign_name = '' OR fmr.campaign_name IS NULL)
                                            THEN fmr.fb_install_referrer_campaign_group_name
                                        ELSE fmr.campaign_name END), '(', 1) END) ,sess.user_campaign) as campaign,

         rtrim(CASE
                   WHEN (fmr.network_name = 'Google Organic Search' OR
                         fmr.network_name = 'Organic' OR fmr.network_name is null) THEN NULL
                   WHEN fmr.network_name in ('UnityAds', 'ironSrc') THEN 'unity_ironSrc'
                   ELSE SPLIT_PART((CASE
                                        WHEN (fmr.adgroup_name = '' OR fmr.adgroup_name IS NULL)
                                            THEN fmr.fb_install_referrer_campaign_name
                                        ELSE fmr.adgroup_name END), '(', 1) END)  as adgroup,

         rtrim(CASE
                   WHEN (fmr.network_name = 'Google Organic Search' OR
                         fmr.network_name = 'Organic' OR fmr.network_name is null) THEN NULL
                   ELSE SPLIT_PART((CASE
                                        WHEN (creative_name = '' OR creative_name IS NULL)
                                            THEN fb_install_referrer_adgroup_name
                                        ELSE creative_name END), '(', 1) END)     as creative

      from (select *,
               max(case when datediff('hour', installed, session_start_time) between 12 and 36 then 1 else 0 end)
               over (partition by advertising_id) as retention_1,
               max(case when datediff('hour', installed, session_start_time) between 36 and 60 then 1 else 0 end)
               over (partition by advertising_id) as retention_2,
               max(case when datediff('hour', installed, session_start_time) between 60 and 84 then 1 else 0 end)
               over (partition by advertising_id) as retention_3,
               max(case when datediff('hour', installed, session_start_time) between 84 and 108 then 1 else 0 end)
               over (partition by advertising_id) as retention_4,
               max(case when datediff('hour', installed, session_start_time) between 108 and 132 then 1 else 0 end)
               over (partition by advertising_id) as retention_5,
               max(case when datediff('hour', installed, session_start_time) between 156 and 180 then 1 else 0 end)
               over (partition by advertising_id) as retention_7,
               max(case when datediff('hour', installed, session_start_time) between 324 and 348 then 1 else 0 end)
               over (partition by advertising_id) as retention_14

          from (select advertising_id,
                     session_id,
                     max(session_time)                      as session_time,
                     min(event_timestamp)                   as session_start_time,
                     min(arrival_ts)                        as arrival_ts,
                     max(build_no)                          as build_no,
                     max(connection_type)                   as connection_type,
                     max(event_id)                          as event_id,
                     max(event_name)                        as event_name,
                     max(event_type)                        as event_type,
                     max(event_version)                     as event_version,
                     max(installed_at)                      as installed,
                     max(inventory_coin)                    as inventory_coin,
                     max(inventory_life)                    as inventory_life,
                     max(ip_address)                        as ip_address,
                     max(user_adgroup)                      as user_adgroup,
                     max(user_campaign)                     as user_campaign,
                     max(user_creative)                     as user_creative,
                     max(user_current_fps)                  as user_current_fps,
                     max(user_device)                       as user_device,
                     max(user_level_at)                     as user_level_at,
                     max(user_level_id)                     as user_level_id,
                     max(user_manufacturer)                 as user_manufacturer,
                     max(user_network)                      as user_network,
                     bool_or(user_notification_state)       as user_notification_state,
                     max(user_os_version)                   as user_os_version,
                     max(user_platform)                     as user_platform,
                     max(user_session_count)                as user_session_count,
                     max(user_split_test_name)              as user_split_test_name,
                     max(user_test_routing_value)           as user_test_routing_value,
                     max(user_total_attempt_at_current_lvl) as user_total_attempt_at_current_lvl,
                     max(user_total_payment)                as user_total_payment,
                     max(user_total_session_time)           as user_total_session_time,
                     max(user_country_code)                 as user_country_code,
                     min(app_version)                       as app_version_s


          from tile_match.session
          where event_name = 'SessionActive'
          group by session_id, advertising_id) sess_in) sess
          left join (select idfa_or_gps_adid,
                             max(network_name)                            as network_name,
                             max(campaign_name)                           as campaign_name,
                             max(fb_install_referrer_campaign_group_name) as fb_install_referrer_campaign_group_name,
                             max(adgroup_name)                            as adgroup_name,
                             max(fb_install_referrer_campaign_name)       as fb_install_referrer_campaign_name,
                             max(creative_name)                           as creative_name,
                             max(fb_install_referrer_adgroup_name)        as fb_install_referrer_adgroup_name,
                             max(country)                                 as country,
                             min(app_version)                             as app_version
                      from adjust.tile_match_raw
                      group by idfa_or_gps_adid) fmr
          on sess.advertising_id = fmr.idfa_or_gps_adid;;

    publish_as_db_view: yes
    sql_trigger_value: select DATE_TRUNC('hour',getdate())  ;;
    sortkeys: ["advertising_id","country","session_start_time"]
  }

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
    sql: ${TABLE}.installed ;;
  }

  dimension: install_day_of_user {
    type: number
    sql: FLOOR(DATEDIFF(hour,${TABLE}.installed,${TABLE}.session_start_time)/24) ;;
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

  dimension: session_time {
    type: number
    sql: ${TABLE}.session_time ;;
  }

  dimension_group: client {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.session_start_time ;;
  }

  dimension: retention_1 {
    type: number
    sql: ${TABLE}.retention_1 ;;
  }

  dimension: retention_2 {
    type: number
    sql: ${TABLE}.retention_2 ;;
  }

  dimension: retention_3 {
    type: number
    sql: ${TABLE}.retention_3 ;;
  }

  dimension: retention_4 {
    type: number
    sql: ${TABLE}.retention_4 ;;
  }

  dimension: retention_5 {
    type: number
    sql: ${TABLE}.retention_5 ;;
  }

  dimension: retention_7 {
    type: number
    sql: ${TABLE}.retention_7 ;;
  }

  dimension: retention_14 {
    type: number
    sql: ${TABLE}.retention_14 ;;
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

  measure: avg_sessiontime {
    type: average
    sql: ${TABLE}.session_time / 60;;
  }

  measure: per1sessiontime {
    type: percentile
    percentile: 1
    sql: ${TABLE}.session_time / 60;;
  }

  measure: per5sessiontime {
    type: percentile
    percentile: 5
    sql: ${TABLE}.session_time / 60;;
  }

  measure: per10sessiontime {
    type: percentile
    percentile: 10
    sql: ${TABLE}.session_time / 60;;
  }

  measure: per25sessiontime {
    type: percentile
    percentile: 25
    sql: ${TABLE}.session_time / 60 ;;
  }

  measure: per50sessiontime {
    type: percentile
    percentile: 50
    sql: ${TABLE}.session_time / 60 ;;
  }

  measure: per75sessiontime {
    type: percentile
    percentile: 75
    sql: ${TABLE}.session_time / 60 ;;
  }

  measure: per90sessiontime {
    type: percentile
    percentile: 90
    sql: ${TABLE}.session_time / 60 ;;
  }

  measure: per95sessiontime {
    type: percentile
    percentile: 95
    sql: ${TABLE}.session_time / 60;;
  }

  measure: per99sessiontime {
    type: percentile
    percentile: 99
    sql: ${TABLE}.session_time / 60;;
  }

}
