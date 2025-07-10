view: ecpm {
  derived_table: {
    distribution: "appsflyer_id"
    sql:

WITH watched_ads AS (
  SELECT
    appsflyer_id,
    ad_revenue_ad_type,
    campaign,
    event_time,
    DATE(event_time) AS event_date,
    event_revenue_usd,
    ROW_NUMBER() OVER (
      PARTITION BY appsflyer_id, ad_revenue_ad_type, DATE(event_time)
      ORDER BY event_time
    ) AS ad_watch_order
  FROM
    apps_flyer.goodwill_tile_raw
  WHERE
    event_name = 'af_ad_revenue'
)

SELECT * FROM watched_ads ;;

    publish_as_db_view: yes
    sql_trigger_value: SELECT TRUNC((DATE_PART('hour', SYSDATE))/4)  ;;
    sortkeys: ["appsflyer_id"]
  }

  dimension: appsflyer_id {
    type: string
    sql: ${TABLE}.appsflyer_id ;;
  }

  dimension: ad_watch_order {
    type: number
    sql: ${TABLE}.ad_watch_order ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
  }

  dimension: ad_revenue_ad_type {
    type: string
    sql: ${TABLE}.ad_revenue_ad_type ;;
  }

  dimension: event_revenue_usd {
    type: number
    sql: ${TABLE}.event_revenue_usd ;;
  }

  dimension_group: event {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.event_date ;;
  }

  measure: count {
    type: count
  }

}
