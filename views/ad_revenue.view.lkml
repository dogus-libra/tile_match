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
        SUM(g.event_revenue_usd) AS ad_revenue

    FROM apps_flyer.goodwill_tile_raw g

    LEFT JOIN session_setup s
        ON s.user_apps_flyer_id = g.appsflyer_id
        AND s.event_date = TRUNC(g.event_time)
        AND g.event_name = 'af_ad_revenue'

    GROUP BY s.app_version, TRUNC(g.event_time),g.appsflyer_id  ;;

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

  dimension_group: event {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.event_date ;;
  }

  measure: count {
    type: count
  }

}
