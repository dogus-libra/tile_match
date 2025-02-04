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
    sql: case when ${country} in ('AU','AT','BE','BN','CA','KY','DK','FI','FR','DE','GL','HK','IS','IE','IM','IL','LI','LU','NL','NZ','NO','QA','SG','SE','CH','AE','GB','US','ES','IT','JP','KR','SA')
              then 'Tier 1'
              when ${country} in ('AD','AG','AR','AW','AZ','BS','BH','BB','BY','BA','BW','BR','IO','BG','BQ','CL','CN','CK','CR','HR','CU','CW','CY','CZ','DM','DO','EE','GF','PF','GA','GE','GR','GD','GP','GU','GG','GY','HU','IR','JE','KZ','KW','LV','LT','MO','MY','MV','MT','MQ','MU','YT','MX','ME','NR','NC','MK','OM','PA','PE','PL','PT','PR','RE','RO','RU','ST','RS','SC','SX','SK','SI','ZA','BL','KN','LC','PM','VC','TW','TH','TR','TM','VI','UY')
              then 'Tier 2'
              when ${country} in ('AF','AL','DZ','AO','AM','BD','BZ','BJ','BT','BO','BF','BI','KH','CM','CV','CF','TD','CO','CG','CD','CI','DJ','EC','EG','SV','SZ','ET','FJ','GM','GH','GT','GN','HT','HN','IN','ID','IQ','JM','JO','KE','XK','KG','LA','LB','LR','LY','MG','MW','ML','MR','MD','MN','MA','MZ','MM','NA','NP','NI','NG','PK','PS','PG','PY','PH','RW','SN','SL','SB','SO','SS','LK','SD','SR','SY','TJ','TZ','TL','TG','TT','TN','UG','UA','UZ','VU','VE','VN','EH','YE','ZM','ZW')
              then 'Tier 3'
              else ${country} end;;
  }

  dimension: user_platform {
    type: string
    sql: case when ${TABLE}.user_platform = 'Android' then 'android'
              when ${TABLE}.user_platform = 'IPhonePlayer' then 'ios'
        end ;;
  }

}
