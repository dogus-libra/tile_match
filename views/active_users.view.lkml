view: active_users {
  derived_table: {
    distribution: "event_day"
    sql:

SELECT event_day,
       network,
       campaign,
       adgroup,
       creative,
       country,
       user_platform,

       (SELECT COUNT(DISTINCT advertising_id)

        FROM ${session_pdt.SQL_TABLE_NAME} se
        WHERE trunc(session_start_time) BETWEEN days.event_day - INTERVAL '7 days' AND days.event_day
          AND se.country = days.country
          AND coalesce(se.campaign, 'organic') = days.campaign
          AND coalesce(se.adgroup, 'organic') = days.adgroup
          AND coalesce(se.creative, 'organic') = days.creative
          AND se.user_platform = days.user_platform) AS weekly_active_users,

       (SELECT COUNT(DISTINCT advertising_id)
        FROM ${session_pdt.SQL_TABLE_NAME} s
        WHERE trunc(session_start_time) BETWEEN days.event_day - INTERVAL '30 days' AND days.event_day
          AND s.country = days.country
          AND coalesce(s.campaign, 'organic')  = days.campaign
          AND coalesce(s.adgroup, 'organic')   = days.adgroup
          AND coalesce(s.creative, 'organic') = days.creative
          AND s.user_platform = days.user_platform)  AS monthly_active_users

FROM (SELECT DISTINCT trunc(session_start_time)     AS event_day,
                      coalesce(campaign, 'organic') as campaign,
                      coalesce(adgroup, 'organic')  as adgroup,
                      coalesce(creative, 'organic') as creative,
                      network,
                      country,
                      user_platform
      FROM ${session_pdt.SQL_TABLE_NAME}) days

GROUP BY event_day, creative, network, campaign, adgroup, country, user_platform
ORDER BY event_day  ;;

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
    sql: ${TABLE}.monthly_active_users;;
  }

  dimension: creative {
    type: string
    sql: ${TABLE}.creative ;;
  }

  dimension: partner {
    type: string
    sql: ${TABLE}.network ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
  }

  dimension: adgroup {
    type: string
    sql: ${TABLE}.adgroup ;;
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

  dimension: user_platform {
    type: string
    sql: case when ${TABLE}.user_platform = 'Android' then 'android'
              when ${TABLE}.user_platform = 'IPhonePlayer' then 'ios'
        end ;;
  }

}
