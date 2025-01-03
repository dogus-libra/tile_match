include: "/models/tile_match.model.lkml"



view: raw_pdt {
  derived_table: {
    distribution: "idfa_or_gps_adid"
    sql: select idfa_or_gps_adid,
                max(r.country) as country,
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

                from adjust.tile_match_raw r
                group by idfa_or_gps_adid ;;

    publish_as_db_view: yes
    sql_trigger_value: select DATE_TRUNC('hour',getdate())  ;;
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

  dimension: country_tier {
    type: string
    sql: case when ${country} in ('DE','GB','IE','AU','NZ','US','CA','FR','IT','ES','AT','BE','NL','LU','FI','SE','CH','NO','DK','JP','KR')
      then 'Tier 1' else ${country} end;;
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

  dimension: pivot_app_version_list {
    type: string
    sql: {% if ${app_version}._is_filtered %} ${app_version} {% else %} 'App Version' {% endif %};;
  }

  dimension: network {
    type: string
    sql: ${TABLE}.network ;;
  }

  measure: count {
    type: count
  }

}
