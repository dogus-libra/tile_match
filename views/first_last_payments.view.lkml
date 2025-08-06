view: first_last_payments {
  derived_table: {
    distribution: "appsflyer_id"
    sql:

    WITH ranked_purchases AS (
      SELECT
        appsflyer_id,
        customer_user_id,
        event_name,
        install_time,
        campaign,
        country_code,
        monetization_network,
        media_source,
        platform,
        event_time,
        event_value,
        event_revenue_usd,
        ROW_NUMBER() OVER (PARTITION BY appsflyer_id ORDER BY event_time ASC) AS rn,--(en eski ödeme = 1)
        ROW_NUMBER() OVER (PARTITION BY appsflyer_id ORDER BY event_time DESC) AS rn_desc -- (en yeni ödeme = 1)
      FROM
        apps_flyer.goodwill_tile_raw
      WHERE
        event_name = 'af_purchase'
    )

      SELECT
      appsflyer_id,
      MAX(customer_user_id) as customer_user_id,
      MAX(event_name) as event_name,
      MAX(install_time) as install_time,
      MAX(campaign) as campaign,
      MAX(country_code) as country_code,
      MAX(monetization_network) as monetization_network,
      MAX(media_source) as media_source,
      MAX(platform) as platform,

      MAX(CASE WHEN rn = 1 THEN event_time END) AS first_payment_date,
      MAX(CASE WHEN rn = 1 THEN event_revenue_usd END) AS first_payment_amount,
      MAX(CASE WHEN rn = 1 THEN JSON_EXTRACT_PATH_TEXT(event_value, 'OriginalLevel') END)::INTEGER AS first_payment_level,

      MAX(CASE WHEN rn_desc = 1 THEN event_time END) AS last_payment_date,
      MAX(CASE WHEN rn_desc = 1 THEN event_revenue_usd END) AS last_payment_amount,
      MAX(CASE WHEN rn_desc = 1 THEN JSON_EXTRACT_PATH_TEXT(event_value, 'OriginalLevel') END)::INTEGER AS last_payment_level,
      MAX(CASE WHEN rn_desc = 1 THEN JSON_EXTRACT_PATH_TEXT(event_value, 'GrandModeLevel') END)::INTEGER AS last_payment_grand_level

      FROM ranked_purchases
      GROUP BY appsflyer_id;;

    publish_as_db_view: yes
    sql_trigger_value: SELECT TRUNC((DATE_PART('hour', SYSDATE))/4)  ;;
    sortkeys: ["appsflyer_id"]
  }

  dimension: appsflyer_id {
    type: string
    sql: ${TABLE}.appsflyer_id ;;
  }

  dimension: customer_user_id {
    type: string
    sql: ${TABLE}.customer_user_id ;;
  }

  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
  }

  dimension: event_value {
    type: string
    sql: ${TABLE}.event_value ;;
  }

  dimension_group: event {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.event_time ;;
  }

  dimension_group: first_payment_date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.first_payment_date ;;
  }

  dimension: first_payment_amount {
    type: number
    sql: ${TABLE}.first_payment_amount ;;
  }

  dimension: first_payment_level {
    type: number
    sql: ${TABLE}.first_payment_level ;;
  }

  dimension: event_revenue_usd {
    type: number
    sql: ${TABLE}.event_revenue_usd ;;
  }

  dimension_group: install {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.install_time ;;
  }

  dimension: install_day_of_user {
    type: number
    sql: FLOOR(DATEDIFF(hour,${TABLE}.install_time,${TABLE}.event_time)/24) ;;
  }

  dimension_group: last_payment_date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.last_payment_date ;;
  }

  dimension: last_payment_amount {
    type: number
    sql: ${TABLE}.last_payment_amount ;;
  }

  dimension: last_payment_level {
    type: number
    sql: ${TABLE}.last_payment_level ;;
  }

  dimension: last_payment_grand_level {
    type: number
    sql: ${TABLE}.last_payment_grand_level ;;
  }

  dimension: payment_row_number {
    type: string
    sql: ${TABLE}.rn ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
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

}
