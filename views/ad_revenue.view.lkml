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
        s.app_version AS app_version,
        TRUNC(g.event_time) AS event_date,
        SUM(g.event_revenue_usd) AS ad_revenue,
        g.campaign,
        g.monetization_network,
        g.platform,
        g.country_code,
        TRUNC(g.install_time) AS install_date

    FROM apps_flyer.goodwill_tile_raw g

    LEFT JOIN session_setup s
        ON s.user_apps_flyer_id = g.appsflyer_id
        AND s.event_date = TRUNC(g.event_time)
        AND g.event_name = 'af_ad_revenue'

    GROUP BY s.app_version, TRUNC(g.event_time), g.appsflyer_id, g.campaign, g.monetization_network, g.platform, g.country_code, TRUNC(g.install_time)  ;;

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

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  measure: count {
    type: count
  }

}
