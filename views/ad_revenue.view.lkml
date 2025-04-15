view: ad_revenue {
  derived_table: {
    distribution: "appsflyer_id"
    sql:
        WITH session_setup AS (
                                SELECT
                                    user_apps_flyer_id,
                                    TRUNC(event_timestamp) AS event_date,
                                    app_version
                                FROM tile_match.session
                                GROUP BY user_apps_flyer_id, TRUNC(event_timestamp),app_version)
      SELECT

        g.appsflyer_id,
        g.customer_user_id,
        s.app_version AS app_version,
        TRUNC(g.event_time) AS event_date,
        SUM(g.event_revenue_usd) AS ad_revenue,
        g.campaign,
        g.monetization_network,
        g.media_source,
        g.platform,
        g.country_code,
        TRUNC(g.install_time) AS install_date

    FROM apps_flyer.goodwill_tile_raw g

    LEFT JOIN session_setup s
        ON s.user_apps_flyer_id = g.appsflyer_id
        AND s.event_date = TRUNC(g.event_time)
        AND g.event_name = 'af_ad_revenue'

    GROUP BY s.app_version, TRUNC(g.event_time), g.appsflyer_id, g.campaign, g.monetization_network, g.media_source, g.platform, g.country_code, TRUNC(g.install_time), g.customer_user_id  ;;

    publish_as_db_view: yes
    sql_trigger_value: SELECT TRUNC((DATE_PART('hour', SYSDATE))/4)  ;;
    sortkeys: ["appsflyer_id"]
  }

  dimension: appsflyer_id {
    type: string
    sql: ${TABLE}.appsflyer_id ;;
  }

  dimension: app_version {
    type: string
    sql: ${TABLE}.app_version ;;
  }

  dimension: ad_revenue {
    type: number
    sql: ${TABLE}.ad_revenue ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
  }

  dimension: customer_user_id {
    type: string
    sql: ${TABLE}.customer_user_id ;;
  }

  dimension_group: event {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.event_date ;;
  }

  dimension_group: install {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.install_date ;;
  }

  dimension: monetization_network {
    type: string
    sql: ${TABLE}.monetization_network ;;
  }

  dimension: media_source {
    type: string
    sql: ${TABLE}.media_source ;;
  }
  dimension: network_name {
    type: string
    sql:
        (case
            when ${TABLE}.media_source in ('Facebook Ads','restricted') then 'facebook'
            when (${TABLE}.media_source is null or ${TABLE}.media_source in ('Null','organic')) then 'Organic'
            when ${TABLE}.media_source='applovin_int' then 'applovin'
            when ${TABLE}.media_source='adjoe_int' then 'adjoe'
          else ${TABLE}.media_source end) ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: country_tier {
    type: string
    sql: case when ${country_code} in ('AU','AT','BE','BN','CA','KY','DK','FI','FR','DE','GL','HK','IS','IE','IM','IL','LI','LU','NL','NZ','NO','QA','SG','SE','CH','AE','GB','US','ES','IT','JP','KR','SA')
              then 'Tier 1'
              when ${country_code} in ('AD','AG','AR','AW','AZ','BS','BH','BB','BY','BA','BW','BR','IO','BG','BQ','CL','CN','CK','CR','HR','CU','CW','CY','CZ','DM','DO','EE','GF','PF','GA','GE','GR','GD','GP','GU','GG','GY','HU','IR','JE','KZ','KW','LV','LT','MO','MY','MV','MT','MQ','MU','YT','MX','ME','NR','NC','MK','OM','PA','PE','PL','PT','PR','RE','RO','RU','ST','RS','SC','SX','SK','SI','ZA','BL','KN','LC','PM','VC','TW','TH','TR','TM','VI','UY')
              then 'Tier 2'
              when ${country_code} in ('AF','AL','DZ','AO','AM','BD','BZ','BJ','BT','BO','BF','BI','KH','CM','CV','CF','TD','CO','CG','CD','CI','DJ','EC','EG','SV','SZ','ET','FJ','GM','GH','GT','GN','HT','HN','IN','ID','IQ','JM','JO','KE','XK','KG','LA','LB','LR','LY','MG','MW','ML','MR','MD','MN','MA','MZ','MM','NA','NP','NI','NG','PK','PS','PG','PY','PH','RW','SN','SL','SB','SO','SS','LK','SD','SR','SY','TJ','TZ','TL','TG','TT','TN','UG','UA','UZ','VU','VE','VN','EH','YE','ZM','ZW')
              then 'Tier 3'
              else ${country_code} end;;
  }

  measure: count {
    type: count
  }

}
