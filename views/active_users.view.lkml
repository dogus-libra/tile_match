view: active_users {
  derived_table: {
    distribution: "event_day"
    sql:

WITH date_groups AS (
    SELECT
        TRUNC(event_timestamp) AS event_day,
        DATE_TRUNC('week', TRUNC(event_timestamp)) AS week_start,
        DATE_TRUNC('month', TRUNC(event_timestamp)) AS month_start
    FROM
        tile_match.session
    GROUP BY
        TRUNC(event_timestamp)
),
      wau AS (
    SELECT
        DATE_TRUNC('week', TRUNC(event_timestamp)) AS week_start,
        COUNT(DISTINCT advertising_id) AS weekly_active_users
    FROM
        tile_match.session
    GROUP BY
        DATE_TRUNC('week', TRUNC(event_timestamp))
),
      mau AS (
    SELECT
        DATE_TRUNC('month', TRUNC(event_timestamp)) AS month_start,
        COUNT(DISTINCT advertising_id) AS monthly_active_users
    FROM
        tile_match.session
    GROUP BY
        DATE_TRUNC('month', TRUNC(event_timestamp))
)
SELECT
    dg.event_day,
    CASE
        WHEN dg.event_day = dg.week_start THEN wau.weekly_active_users
        ELSE NULL
    END AS weekly_active_users,
    CASE
        WHEN dg.event_day = dg.month_start THEN mau.monthly_active_users
        ELSE NULL
    END AS monthly_active_users
FROM
    date_groups dg
LEFT JOIN
    wau ON dg.week_start = wau.week_start
LEFT JOIN
    mau ON dg.month_start = mau.month_start
ORDER BY
    dg.event_day;;

    publish_as_db_view: yes
    sql_trigger_value: SELECT TRUNC((DATE_PART('hour', SYSDATE))/4)  ;;
    sortkeys: ["event_day"]
  }

  dimension_group: event_day {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.event_day ;;
  }

  dimension: wau {
    type: number
    sql: ${TABLE}.weekly_active_users ;;
  }


  dimension: mau {
    type: number
    sql: ${TABLE}.monthly_active_users ;;
  }



}
