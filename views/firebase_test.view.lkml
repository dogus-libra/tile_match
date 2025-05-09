view: firebase_test {
  derived_table: {
    distribution: "advertising_id"
    sql:  SELECT
    fb.*,
    coalesce(fb.f_exp_80::BIGINT, usr.StreakBreaker_03_iOS) as exp_80
FROM (
    SELECT
        advertising_id,
        max(firebase_exp_77) as exp_77,
        max(firebase_exp_78) as exp_78,
        max(firebase_exp_79) as exp_79,
        max(firebase_exp_80) as f_exp_80
    FROM "tile_match"."firebase_daily_user"
    group by advertising_id) fb
LEFT JOIN (
    SELECT
        advertising_id,
        (case when max(user_split_test_name) like '%0505_StreakBreaker_85%' then 0
             when max(user_split_test_name) like '%0505_StreakBreaker_50%' then 1 end)::BIGINT as StreakBreaker_03_iOS
    FROM "LOOKER_SCRATCH"."5J_tile_match_users_pdt"
    group by advertising_id) usr
ON (fb.advertising_id = usr.advertising_id)

    ;;
    publish_as_db_view: yes
    sql_trigger_value: select DATE_TRUNC('day',DATEADD('minute', -540 , getdate() )  )  ;;
    sortkeys: ["advertising_id"]
  }

  dimension: advertising_id {
    type: string
    sql: ${TABLE}.advertising_id ;;
  }

  dimension: routing_group {
    type: string
    sql: ${TABLE}.routing_group ;;
  }

  dimension: exp_77 {
    type: string
    sql: ${TABLE}.exp_77 ;;
  }

  dimension: exp_78 {
    type: string
    sql: ${TABLE}.exp_78 ;;
  }

  dimension: exp_79 {
    type: string
    sql: ${TABLE}.exp_79 ;;
  }

  dimension: exp_80 {
    type: string
    sql: ${TABLE}.exp_80 ;;
  }

  dimension: EasyMode_And_Difficulty_iOS_testgroup {
    type:string
    sql: case when ${exp_77}='0' then 'Dynamic Off Blended Default'
              when ${exp_77}='1' then 'Dynamic Off Blended Easy'
              when ${exp_77}='2' then 'Dynamic On Blended Easy'
              when ${exp_77}='3' then 'Dynamic On Blended Default' end ;;
  }

  dimension: Difficulty_iOS_testgroup {
    type:string
    sql: case when ${exp_78}='0' then 'Dynamic Off'
              when ${exp_78}='1' then 'Dynamic On' end ;;
  }

  dimension: Difficulty_Android_testgroup {
    type:string
    sql: case when ${exp_79}='0' then 'Dynamic Off'
              when ${exp_79}='1' then 'Dynamic On' end ;;
  }

  dimension: StreakBreaker_03_iOS_testgroup {
    type:string
    sql: case when ${exp_80}='0' then 'StreakBreaker85'
              when ${exp_80}='1' then 'StreakBreaker50' end ;;
  }

}
