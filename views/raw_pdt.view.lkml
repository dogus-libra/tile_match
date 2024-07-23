include: "/models/tile_match.model.lkml"



view: raw_pdt {
  derived_table: {
    distribution: "idfa_or_gps_adid"
    sql: select idfa_or_gps_adid,
                coalesce(max(r.country),max(s.user_country_code)) as country,
                min(r.app_version) as app_version,
                max(r.installed_at) as installed_at,
                max(CASE
                     WHEN r.network_name = 'Apple Search Ads' THEN 'apple'
                     WHEN r.network_name = 'Google Ads ACI' THEN 'adwords'
                     WHEN r.network_name = 'Google Organic Search' THEN 'google_organic_search'
                     WHEN r.network_name = 'Vungle' THEN 'vungle'
                     WHEN r.network_name = 'ironSrc' THEN 'ironsource'
                     WHEN r.network_name = 'Organic' OR network_name is null THEN 'Organic'
                     WHEN r.network_name = 'UnityAds' THEN 'unity_ads'
                     WHEN (r.network_name = 'Unattributed' OR network_name = 'Facebook Installs' OR
                           r.network_name = 'Off-Facebook Installs' OR
                           r.network_name = 'Facebook Messenger Installs' OR
                           r.network_name = 'Instagram Installs') THEN 'facebook' END)   as network,
                 max(rtrim(CASE
                           WHEN (r.network_name = 'Google Organic Search' OR
                                 r.network_name = 'Organic' OR r.network_name is null) THEN NULL
                           ELSE SPLIT_PART((CASE
                                                WHEN (r.campaign_name = '' OR r.campaign_name IS NULL)
                                                    THEN r.fb_install_referrer_campaign_group_name
                                                ELSE r.campaign_name END), '(', 1) END)) as campaign,
                 max(rtrim(CASE
                           WHEN (r.network_name = 'Google Organic Search' OR
                                 r.network_name = 'Organic' OR r.network_name is null) THEN NULL
                           WHEN r.network_name in ('UnityAds', 'ironSrc') THEN 'unity_ironSrc'
                           ELSE SPLIT_PART((CASE
                                                WHEN (r.adgroup_name = '' OR r.adgroup_name IS NULL)
                                                    THEN r.fb_install_referrer_campaign_name
                                                ELSE r.adgroup_name END), '(', 1) END))  as adgroup,
                 max(rtrim(CASE
                           WHEN (r.network_name = 'Google Organic Search' OR
                                 r.network_name = 'Organic' OR r.network_name is null) THEN NULL
                           ELSE SPLIT_PART((CASE
                                                WHEN (r.creative_name = '' OR creative_name IS NULL)
                                                    THEN r.fb_install_referrer_adgroup_name
                                                ELSE r.creative_name END), '(', 1) END))     as creative

                from adjust.tile_match_raw r left outer join tile_match.session s
                on r.idfa_or_gps_adid=s.advertising_id
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
