view: firebase_test {
  derived_table: {
    distribution: "advertising_id"
    sql:  SELECT
    fb.*,
    coalesce(fb.f_exp_80::BIGINT, usr.StreakBreaker_03_iOS) as exp_80,
    coalesce(fb.f_exp_83::BIGINT, usr.Starter_Prices_iOS) as exp_83,
    coalesce(fb.f_exp_88::BIGINT, usr.Balance_Exclude_02_iOS) as exp_88,
    coalesce(fb.f_exp_89::BIGINT, usr.Balance_02_iOS) as exp_89,
    coalesce(fb.f_exp_90::BIGINT, usr.StorePrices_iOS) as exp_90,
    coalesce(fb.f_exp_91::BIGINT, usr.Ads_iOS) as exp_91,
    coalesce(fb.f_exp_92::BIGINT, usr.StreakBreaker_iOS) as exp_92,
    coalesce(fb.f_exp_93::BIGINT, usr.StreakBreaker_Android) as exp_93,
    coalesce(fb.f_exp_94::BIGINT, usr.Balance_02_iOS_02) as exp_94
FROM (
    SELECT
        advertising_id,
        max(firebase_exp_77) as exp_77,
        max(firebase_exp_78) as exp_78,
        max(firebase_exp_79) as exp_79,
        max(firebase_exp_80) as f_exp_80,
        max(firebase_exp_83) as f_exp_83,
        max(firebase_exp_88) as f_exp_88,
        max(firebase_exp_89) as f_exp_89,
        max(firebase_exp_90) as f_exp_90,
        max(firebase_exp_91) as f_exp_91,
        max(firebase_exp_92) as f_exp_92,
        max(firebase_exp_93) as f_exp_93,
        max(firebase_exp_94) as f_exp_94
    FROM "tile_match"."firebase_daily_user"
    group by advertising_id) fb
LEFT JOIN (
    SELECT
        advertising_id,
        (case when max(user_split_test_name) like '%0505_StreakBreaker_85%' then 0
              when max(user_split_test_name) like '%0505_StreakBreaker_50%' then 1 end)::BIGINT as StreakBreaker_03_iOS,

        (case when max(user_split_test_name) like '%1605_Starter_Prices_Default%' then 0
              when max(user_split_test_name) like '%1605_Starter_Prices_Cheap%' then 1
              when max(user_split_test_name) like '%1605_Starter_Prices_Cheaper%' then 2 end)::BIGINT as Starter_Prices_iOS,

        (case when max(user_split_test_name) like '%1605_DefaultLevels%' then 0
              when max(user_split_test_name) like '%1605_BalancedLevels%' then 1 end)::BIGINT as Balance_Exclude_02_iOS,

        (case when max(user_split_test_name) like '%1605_DefaultLevels%' then 0
              when max(user_split_test_name) like '%1605_BalancedLevels_EasyModeOn%' then 1
              when max(user_split_test_name) like '%1605_BalancedLevels_EasyModeOff%' then 2 end)::BIGINT as Balance_02_iOS,

        (case when max(user_split_test_name) like '%2905_Default%' then 0
              when max(user_split_test_name) like '%2905_Cheaper%' then 1 end)::BIGINT as StorePrices_iOS,

        (case when max(user_split_test_name) like '%3005_ad_default%' then 0
              when max(user_split_test_name) like '%3005_ad_soft%' then 1
              when max(user_split_test_name) like '%3005_ad_softer%' then 2 end)::BIGINT as Ads_iOS,

        (case when max(user_split_test_name) like '%3005_SB_Default%' then 0
              when max(user_split_test_name) like '%3005_SB_New_Algorithm%' then 1 end)::BIGINT as StreakBreaker_iOS,

        (case when max(user_split_test_name) like '%3005_SB_Default%' then 0
              when max(user_split_test_name) like '%3005_SB_New_Algorithm%' then 1 end)::BIGINT as StreakBreaker_Android,

        (case when max(user_split_test_name) like '%0406_BlendedDefault%' then 0
              when max(user_split_test_name) like '%0406_BlendedEasyOn%' then 1
              when max(user_split_test_name) like '%0406_BlendedEasyOff%' then 2 end)::BIGINT as Balance_02_iOS_02



    FROM "LOOKER_SCRATCH"."5J_tile_match_users_pdt"
    group by advertising_id) usr
ON (fb.advertising_id = usr.advertising_id) ;;

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

  dimension: exp_83 {
    type: string
    sql: ${TABLE}.exp_83 ;;
  }

  dimension: exp_88 {
    type: string
    sql: ${TABLE}.exp_88 ;;
  }

  dimension: exp_89 {
    type: string
    sql: ${TABLE}.exp_89 ;;
  }

  dimension: exp_90 {
    type: string
    sql: ${TABLE}.exp_90 ;;
  }

  dimension: exp_91 {
    type: string
    sql: ${TABLE}.exp_91 ;;
  }

  dimension: exp_92 {
    type: string
    sql: ${TABLE}.exp_92 ;;
  }

  dimension: exp_93 {
    type: string
    sql: ${TABLE}.exp_93 ;;
  }

  dimension: exp_94 {
    type: string
    sql: ${TABLE}.exp_94 ;;
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

  dimension: Starter_Prices_iOS_testgroup {
    type:string
    sql: case when ${exp_83} = '0' then 'Starter Prices Default'
              when ${exp_83} = '1' then 'Starter Prices Cheap'
              when ${exp_83} = '2' then 'Starter Prices Cheaper' end ;;
  }

  dimension: Balance_Exclude_02_iOS_testgroup {
    type:string
    sql: case when ${exp_88} = '0' then 'Default Levels'
              when ${exp_88} = '1' then 'Balanced Levels' end ;;
  }

  dimension: Balance_02_iOS_testgroup {
    type:string
    sql: case when ${exp_89} = '0' then 'Default Levels'
              when ${exp_89} = '1' then 'Balanced Levels Easy ModeOn'
              when ${exp_89} = '2' then 'Balanced Levels Easy ModeOff' end ;;
  }

  dimension: Store_Prices_iOS_testgroup {
    type:string
    sql: case when ${exp_90} = '0' then 'Default'
              when ${exp_90} = '1' then 'Cheaper' end ;;
  }

  dimension: Ads_iOS_testgroup {
    type:string
    sql: case when ${exp_91} = '0' then 'Default'
              when ${exp_91} = '1' then 'Soft'
              when ${exp_91} = '2' then 'Softer' end ;;
  }

  dimension: StreakBreaker_iOS_testgroup {
    type:string
    sql: case when ${exp_92}='0' then 'Default'
              when ${exp_92}='1' then 'New_Algorithm' end ;;
  }

  dimension: StreakBreaker_Android_testgroup {
    type:string
    sql: case when ${exp_93}='0' then 'Default'
              when ${exp_93}='1' then 'New Algorithm' end ;;
  }

  dimension: Balance_02_iOS_02_testgroup {
    type:string
    sql: case when ${exp_94} = '0' then 'Blended Default'
              when ${exp_94} = '1' then 'Blended EasyOn'
              when ${exp_94} = '2' then 'Blended EasyOff' end ;;
  }

}
