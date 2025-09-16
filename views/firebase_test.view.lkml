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
    coalesce(fb.f_exp_94::BIGINT, usr.Balance_02_iOS_02) as exp_94,
    coalesce(fb.f_exp_95::BIGINT, usr.StreakBreaker_iOS_02) as exp_95,
    coalesce(fb.f_exp_96::BIGINT, usr.StreakBreaker_Android_02) as exp_96,
    coalesce(fb.f_exp_97::BIGINT, usr.DynamicStickers_Android) as exp_97,
    coalesce(fb.f_exp_98::BIGINT, usr.DynamicStickers_iOS) as exp_98,
    coalesce(fb.f_exp_99::BIGINT, usr.Meta_Android) as exp_99,
    coalesce(fb.f_exp_100::BIGINT, usr.Meta_iOS) as exp_100,
    coalesce(fb.f_exp_101::BIGINT, usr.StreakBreaker_iOS_Exclude_03) as exp_101,
    coalesce(fb.f_exp_102::BIGINT, usr.Streak_Breaker_0907) as exp_102,
    coalesce(fb.f_exp_103::BIGINT, usr.Streak_Breaker_0907) as exp_103,
    coalesce(fb.f_exp_104::BIGINT, usr.Streak_Breaker_0907) as exp_104,
    coalesce(fb.f_exp_105::BIGINT, usr.StreakBreaker35_02_Excluded_iOS) as exp_105,
    coalesce(fb.f_exp_106::BIGINT, usr.StreakBreaker35_Android) as exp_106,
    coalesce(fb.f_exp_107::BIGINT, usr.StreakBreaker35_02_Users_iOS) as exp_107,
    coalesce(fb.f_exp_108::BIGINT, usr.CollectAndWin_Targets_iOS) as exp_108,
    coalesce(fb.f_exp_109::BIGINT, usr.CollectAndWin_Targets_Android) as exp_109

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
        max(firebase_exp_94) as f_exp_94,
        max(firebase_exp_95) as f_exp_95,
        max(firebase_exp_96) as f_exp_96,
        max(firebase_exp_97) as f_exp_97,
        max(firebase_exp_98) as f_exp_98,
        max(firebase_exp_99) as f_exp_99,
        max(firebase_exp_100) as f_exp_100,
        max(firebase_exp_101) as f_exp_101,
        max(firebase_exp_102) as f_exp_102,
        max(firebase_exp_103) as f_exp_103,
        max(firebase_exp_104) as f_exp_104,
        max(firebase_exp_105) as f_exp_105,
        max(firebase_exp_106) as f_exp_106,
        max(firebase_exp_107) as f_exp_107,
        max(firebase_exp_108) as f_exp_108,
        max(firebase_exp_109) as f_exp_109

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
              when max(user_split_test_name) like '%0406_BlendedEasyOff%' then 2 end)::BIGINT as Balance_02_iOS_02,

        (case when max(user_split_test_name) like '%1106_SB_Default%' then 0
              when max(user_split_test_name) like '%1106_SB_Levels_Off_Start_55%' then 1
              when max(user_split_test_name) like '%1106_SB_Levels_On_Start_85%' then 2 end)::BIGINT as StreakBreaker_iOS_02,

        (case when max(user_split_test_name) like '%1106_SB_Default%' then 0
              when max(user_split_test_name) like '%1106_SB_Levels_Off_Start_55%' then 1
              when max(user_split_test_name) like '%1106_SB_Levels_On_Start_85%' then 2 end)::BIGINT as StreakBreaker_Android_02,

        (case when max(user_split_test_name) like '%2006_DynamicStickers%' then 0
              when max(user_split_test_name) like '%2006_DefaultStickers%' then 1 end)::BIGINT as DynamicStickers_Android,

        (case when max(user_split_test_name) like '%2006_DynamicStickers%' then 0
              when max(user_split_test_name) like '%2006_DefaultStickers%' then 1 end)::BIGINT as DynamicStickers_iOS,

        (case when max(user_split_test_name) like '%2706_Default_Meta%' then 0
              when max(user_split_test_name) like '%2706_Default_Children%' then 1
              when max(user_split_test_name) like '%2706_Default_Story%' then 2 end)::BIGINT as Meta_Android,

        (case when max(user_split_test_name) like '%2706_Default_Meta%' then 0
              when max(user_split_test_name) like '%2706_Default_Children%' then 1
              when max(user_split_test_name) like '%2706_Default_Story%' then 2 end)::BIGINT as Meta_iOS,

        (case when max(user_split_test_name) like '%0307_SB_Default%' then 0
              when max(user_split_test_name) like '%0307_SB_Levels_Off_Start_55%' then 1 end)::BIGINT as StreakBreaker_iOS_Exclude_03,

        (case when max(user_split_test_name) like '%0907_ST_55%' and max(user_split_test_name) not like '%0907_ST_55_CH115%' then 0
              when max(user_split_test_name) like '%0907_ST_55_CH115%' then 1
              when max(user_split_test_name) like '%0907_ST_85%' then 2 end)::BIGINT as Streak_Breaker_0907,

        (case when max(user_split_test_name) like '%1209_SB_55%' then 0
              when max(user_split_test_name) like '%1209_SB_35%' then 1 end)::BIGINT as StreakBreaker35_02_Excluded_iOS,

        (case when max(user_split_test_name) like '%1209_SB_55%' then 0
              when max(user_split_test_name) like '%1209_SB_35%' then 1 end)::BIGINT as StreakBreaker35_Android,

        (case when max(user_split_test_name) like '%1209_SB_55%' then 0
              when max(user_split_test_name) like '%1209_SB_35%' then 1 end)::BIGINT as StreakBreaker35_02_Users_iOS,

        (case when max(user_split_test_name) like '%1209_Unranked_C&W%' then 0
              when max(user_split_test_name) like '%1209_Ranked_C&W%' then 1 end)::BIGINT as CollectAndWin_Targets_iOS,

        (case when max(user_split_test_name) like '%1209_Unranked_C&W%' then 0
              when max(user_split_test_name) like '%1209_Ranked_C&W%' then 1 end)::BIGINT as CollectAndWin_Targets_Android


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

  dimension: exp_95 {
    type: string
    sql: ${TABLE}.exp_95 ;;
  }

  dimension: exp_96 {
    type: string
    sql: ${TABLE}.exp_96 ;;
  }

  dimension: exp_97 {
    type: string
    sql: ${TABLE}.exp_97 ;;
  }

  dimension: exp_98 {
    type: string
    sql: ${TABLE}.exp_98 ;;
  }

  dimension: exp_99 {
    type: string
    sql: ${TABLE}.exp_99 ;;
  }

  dimension: exp_100 {
    type: string
    sql: ${TABLE}.exp_100 ;;
  }

  dimension: exp_101 {
    type: string
    sql: ${TABLE}.exp_101 ;;
  }

  dimension: exp_102 {
    type: string
    sql: ${TABLE}.exp_102 ;;
  }

  dimension: exp_103 {
    type: string
    sql: ${TABLE}.exp_103 ;;
  }

  dimension: exp_104 {
    type: string
    sql: ${TABLE}.exp_104 ;;
  }

  dimension: exp_105 {
    type: string
    sql: ${TABLE}.exp_105 ;;
  }

  dimension: exp_106 {
    type: string
    sql: ${TABLE}.exp_106 ;;
  }

  dimension: exp_107 {
    type: string
    sql: ${TABLE}.exp_107 ;;
  }

  dimension: exp_108 {
    type: string
    sql: ${TABLE}.exp_108 ;;
  }

  dimension: exp_109 {
    type: string
    sql: ${TABLE}.exp_109 ;;
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

  dimension: StreakBreaker_iOS_02_testgroup {
    type:string
    sql: case when ${exp_95} = '0' then 'Default'
              when ${exp_95} = '1' then 'SB Levels Off Start 55'
              when ${exp_95} = '2' then 'SB Levels On Start 85' end ;;
  }

  dimension: StreakBreaker_Android_02_testgroup {
    type:string
    sql: case when ${exp_96} = '0' then 'Default'
              when ${exp_96} = '1' then 'SB Levels Off Start 55'
              when ${exp_96} = '2' then 'SB Levels On Start 85' end ;;
  }

  dimension: DynamicStickers_Android_testgroup {
    type:string
    sql: case when ${exp_97} = '0' then 'Dynamic Stickers'
              when ${exp_97} = '1' then 'Default Stickers' end ;;
  }

  dimension: DynamicStickers_iOS_testgroup {
    type:string
    sql: case when ${exp_98} = '0' then 'Dynamic Stickers'
              when ${exp_98} = '1' then 'Default Stickers' end ;;
  }

  dimension: Meta_Android_testgroup {
    type:string
    sql: case when ${exp_99} = '0' then 'Default_Meta'
              when ${exp_99} = '1' then 'Default_Children'
              when ${exp_99} = '2' then 'Default_Story' end ;;
  }

  dimension: Meta_iOS_testgroup {
    type:string
    sql: case when ${exp_100} = '0' then 'Default Meta'
              when ${exp_100} = '1' then 'Default Children'
              when ${exp_100} = '2' then 'Default Story' end ;;
  }

  dimension: StreakBreaker_iOS_Exclude_03_testgroup {
    type:string
    sql: case when ${exp_101} = '0' then 'SB Default'
              when ${exp_101} = '1' then 'SB Levels Off Start 55' end ;;
  }

  dimension: StreakBreaker_iOS_03_testgroup {
    type:string
    sql: case when ${exp_102} = '0' then 'ST 55'
              when ${exp_102} = '1' then 'ST 55 CH115'
              when ${exp_102} = '2' then 'ST 85' end ;;
  }

  dimension: Streak_Breaker_Android_testgroup {
    type:string
    sql: case when ${exp_103} = '0' then 'ST 55'
              when ${exp_103} = '1' then 'ST 55 CH115'
              when ${exp_103} = '2' then 'ST 85' end ;;
  }

  dimension: Streak_Breaker_iOS_Exclude_03_testgroup {
    type:string
    sql: case when ${exp_104} = '0' then 'ST 55'
              when ${exp_104} = '1' then 'ST 55 CH115'
              when ${exp_104} = '2' then 'ST 85' end ;;
  }

  dimension: StreakBreaker35_02_Excluded_iOS_testgroup {
    type:string
    sql: case when ${exp_105} = '0' then 'SB 55'
              when ${exp_105} = '1' then 'SB 35' end ;;
  }

  dimension: StreakBreaker35_Android_testgroup {
    type:string
    sql: case when ${exp_106} = '0' then 'SB 55'
              when ${exp_106} = '1' then 'SB 35' end ;;
  }

  dimension: StreakBreaker35_02_Users_iOS_testgroup {
    type:string
    sql: case when ${exp_107} = '0' then 'SB 55'
              when ${exp_107} = '1' then 'SB 35' end ;;
  }

  dimension: CollectAndWin_Targets_iOS_testgroup {
    type:string
    sql: case when ${exp_108} = '0' then 'Unranked'
              when ${exp_108} = '1' then 'Ranked' end ;;
  }

  dimension: CollectAndWin_Targets_Android_testgroup {
    type:string
    sql: case when ${exp_109} = '0' then 'Unranked'
              when ${exp_109} = '1' then 'Ranked' end ;;
  }

}
