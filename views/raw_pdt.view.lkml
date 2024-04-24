include: "/models/tile_match.model.lkml"



view: raw_pdt {
  derived_table: {
    distribution: "idfa_or_gps_adid"
    sql: select idfa_or_gps_adid,
                max(country) as country,
                min(app_version) as app_version,
                max(installed_at) as installed_at,
                max(CASE
                     WHEN network_name = 'Apple Search Ads' THEN 'apple'
                     WHEN network_name = 'Google Ads ACI' THEN 'adwords'
                     WHEN network_name = 'Google Organic Search' THEN 'google_organic_search'
                     WHEN network_name = 'Vungle' THEN 'vungle'
                     WHEN network_name = 'ironSrc' THEN 'ironsource'
                     WHEN network_name = 'Organic' OR network_name is null THEN 'Organic'
                     WHEN network_name = 'UnityAds' THEN 'unity_ads'
                     WHEN (network_name = 'Unattributed' OR network_name = 'Facebook Installs' OR
                           network_name = 'Off-Facebook Installs' OR
                           network_name = 'Facebook Messenger Installs' OR
                           network_name = 'Instagram Installs') THEN 'facebook' END)   as network,
                 max(rtrim(CASE
                           WHEN (network_name = 'Google Organic Search' OR
                                 network_name = 'Organic' OR network_name is null) THEN NULL
                           ELSE SPLIT_PART((CASE
                                                WHEN (campaign_name = '' OR campaign_name IS NULL)
                                                    THEN fb_install_referrer_campaign_group_name
                                                ELSE campaign_name END), '(', 1) END)) as campaign,
                 max(rtrim(CASE
                           WHEN (network_name = 'Google Organic Search' OR
                                 network_name = 'Organic' OR network_name is null) THEN NULL
                           WHEN network_name in ('UnityAds', 'ironSrc') THEN 'unity_ironSrc'
                           ELSE SPLIT_PART((CASE
                                                WHEN (adgroup_name = '' OR adgroup_name IS NULL)
                                                    THEN fb_install_referrer_campaign_name
                                                ELSE adgroup_name END), '(', 1) END))  as adgroup,
                 max(rtrim(CASE
                           WHEN (network_name = 'Google Organic Search' OR
                                 network_name = 'Organic' OR network_name is null) THEN NULL
                           ELSE SPLIT_PART((CASE
                                                WHEN (creative_name = '' OR creative_name IS NULL)
                                                    THEN fb_install_referrer_adgroup_name
                                                ELSE creative_name END), '(', 1) END))     as creative

                from adjust.tile_match_raw
                group by idfa_or_gps_adid ;;

    publish_as_db_view: yes
    sql_trigger_value: SELECT TRUNC((DATE_PART('hour', SYSDATE))/4)  ;;
    sortkeys: ["idfa_or_gps_adid","country"]
  }

  dimension: idfa_or_gps_adid {
    type: string
    sql: ${TABLE}.idfa_or_gps_adid ;;
  }

  dimension: adgroup {
    type: string
    sql: ${TABLE}.adgroup ;;
  }

  dimension: app_version {
    type: string
    sql: ${TABLE}.app_version ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
  }

  dimension: country {
    type: string
    sql: UPPER(${TABLE}.country) ;;
  }

  dimension: creative {
    type: string
    sql: ${TABLE}.creative ;;
  }

  dimension_group: installed_at {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.installed_at ;;
  }


  dimension: network {
    type: string
    sql: ${TABLE}.network ;;
  }

  measure: count {
    type: count
  }

}
