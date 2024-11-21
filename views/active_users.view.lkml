view: active_users {
  derived_table: {
    distribution: "event_day"
    sql:


SELECT
    event_day,
    (SELECT
        COUNT(DISTINCT advertising_id)
     FROM tile_match.session
     WHERE trunc(event_timestamp) BETWEEN event_day - INTERVAL '7 days' AND event_day) AS weekly_active_users,

    (SELECT
        COUNT(DISTINCT advertising_id)
     FROM tile_match.session
     WHERE trunc(event_timestamp) BETWEEN event_day - INTERVAL '30 days' AND event_day) AS monthly_active_users
FROM (SELECT
        DISTINCT trunc(event_timestamp) AS event_day
      FROM tile_match.session) days
ORDER BY event_day;;

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
