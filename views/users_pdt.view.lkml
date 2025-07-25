include: "/models/tile_match.model.lkml"


view: users_pdt {
  derived_table: {
    distribution: "advertising_id"
    sql:
      with sess_user as (select advertising_id,

                          min(build_no)                    as first_build_no,
                          max(connection_type)             as connection_type,
                          max(end_game_offer)              as end_game_offer,
                          max(end_game_offer_1_offer_type) as end_game_offer_1_offer_type,
                          max(end_game_offer_2_offer_type) as end_game_offer_2_offer_type,
                          max(end_game_offer_3_offer_type) as end_game_offer_3_offer_type,
                          max(end_game_offer_4_offer_type) as end_game_offer_4_offer_type,
                          max(end_game_offer_5_offer_type) as end_game_offer_5_offer_type,
                          max(end_game_offer_6_offer_type) as end_game_offer_6_offer_type,
                          max(end_game_offer_7_offer_type) as end_game_offer_7_offer_type,
                          max(end_game_offer_8_offer_type) as end_game_offer_8_offer_type,
                          max(end_game_offer_9_offer_type) as end_game_offer_9_offer_type,
                          max(end_game_offer_10_offer_type) as end_game_offer_10_offer_type,
                          max(event_timestamp)             as last_event_time,
                          (case when max(event_timestamp) < DATEADD(day, -7, CURRENT_DATE) then max(user_level_at) end) as churn_last_level_no,
                          (case when max(event_timestamp) < DATEADD(day, -7, CURRENT_DATE) then max(event_timestamp) end) as churn_timestamp,
                          (case when max(event_timestamp) < DATEADD(day, -5, CURRENT_DATE) then max(user_level_at) end) as churn_last_level_no_5days,
                          (case when max(event_timestamp) < DATEADD(day, -5, CURRENT_DATE) then max(event_timestamp) end) as churn_timestamp_5days,
                          (case when max(event_timestamp) < DATEADD(day, -3, CURRENT_DATE) then max(user_level_at) end) as churn_last_level_no_3days,
                          (case when max(event_timestamp) < DATEADD(day, -3, CURRENT_DATE) then max(event_timestamp) end) as churn_timestamp_3days,

                          max(case when event_name = 'LevelCompleted' and user_level_at = 1 and inventory_coin = 200 and user_split_test_name LIKE '%2802_StarterCoin_01_200%' THEN 'Starter_Coin_200'
                                   when event_name = 'LevelCompleted' and user_level_at = 1 and inventory_coin = 400 and user_split_test_name LIKE '%2802_StarterCoin_01_400%' THEN 'Starter_Coin_400'
                                   end)                    as user_split_test_name_Starter_Coin_01_Android,

                          max(case when event_name = 'LevelCompleted' and user_level_at = 1 and inventory_coin = 200 and user_split_test_name LIKE '%0303_StarterCoin_01_200%' THEN 'Starter_Coin_200'
                                   when event_name = 'LevelCompleted' and user_level_at = 1 and inventory_coin = 400 and user_split_test_name LIKE '%0303_StarterCoin_01_400%' THEN 'Starter_Coin_400'
                                   end)                    as user_split_test_name_Starter_Coin_01_IOS,

                          max(case when event_name = 'LevelCompleted' and user_level_at = 1 and inventory_coin = 400 and user_split_test_name LIKE '%0303_StarterCoin_02_400%' THEN 'Starter_Coin_400'
                                   when event_name = 'LevelCompleted' and user_level_at = 1 and inventory_coin = 600 and user_split_test_name LIKE '%0303_StarterCoin_02_600%' THEN 'Starter_Coin_600'
                                   end)                    as user_split_test_name_Starter_Coin_02_IOS,

                          max(case when event_name = 'LevelCompleted' and user_level_at = 1 and inventory_coin = 200 and user_split_test_name LIKE '%0303_StarterCoin_03_200%' THEN 'Starter_Coin_200'
                                   when event_name = 'LevelCompleted' and user_level_at = 1 and inventory_coin = 400 and user_split_test_name LIKE '%0303_StarterCoin_03_400%' THEN 'Starter_Coin_400'
                                   end)                    as user_split_test_name_Starter_Coin_03_IOS,

                          max(case when event_name = 'LevelCompleted' and user_level_at = 1 and inventory_coin = 400 and user_split_test_name LIKE '%1703_StarterCoin_02_400%' THEN 'Starter_Coin_400'
                                   when event_name = 'LevelCompleted' and user_level_at = 1 and inventory_coin = 500 and user_split_test_name LIKE '%1703_StarterCoin_02_500%' THEN 'Starter_Coin_500'
                                   end)                    as user_split_test_name_Starter_Coin_02,

                          max(case when event_name = 'LevelCompleted' and user_level_at = 1 and inventory_coin = 200 and user_split_test_name LIKE '%1703_StarterCoin_03_200%' THEN 'Starter_Coin_200'
                                   when event_name = 'LevelCompleted' and user_level_at = 1 and inventory_coin = 300 and user_split_test_name LIKE '%1703_StarterCoin_03_300%' THEN 'Starter_Coin_300'
                                   end)                    as user_split_test_name_Starter_Coin_03,

                          max(event_version)               as last_event_version,
                          min(installed_at)                as installed,
                          max(ip_address)                  as ip_address,
                          max(user_adgroup)                as user_adgroup,
                          max(user_campaign)               as user_campaign,
                          max(user_creative)               as user_creative,
                          max(user_device)                 as user_device,
                          max(user_level_at)               as user_level_at,
                          max(user_level_id)               as user_level_id,
                          max(user_manufacturer)           as user_manufacturer,
                          max(user_network)                as user_network,
                          bool_or(user_notification_state) as user_notification_state,
                          max(user_os_version)             as user_os_version,
                          max(user_platform)               as user_platform,
                          max(user_session_count)          as user_session_count,
                          max(user_split_test_name)        as user_split_test_name,
                          max(user_test_routing_value)     as user_test_routing_value,
                          max(user_total_payment)          as user_total_payment,
                          max(user_total_session_time)     as user_total_session_time,
                          max(user_country_code)           as user_country_code,
                          max(app_version)                 as lst_app_version,
                          min(app_version)                 as fst_app_version,
                          max(user_game_mode)              as user_game_mode,
                          max(user_grand_mode_level)       as user_grand_mode_level,
                          max(user_win_streak_count)       as user_win_streak_count,
                          max(user_win_streak_group)       as user_win_streak_group,
                          max(user_apps_flyer_id)          as user_apps_flyer_id,
                          max(user_id)                     as user_id

                   FROM ( SELECT
                          advertising_id,
                          build_no,
                          connection_type,
                          end_game_offer,
                          end_game_offer_1_offer_type,
                          end_game_offer_2_offer_type,
                          end_game_offer_3_offer_type,
                          end_game_offer_4_offer_type,
                          end_game_offer_5_offer_type,
                          end_game_offer_6_offer_type,
                          end_game_offer_7_offer_type,
                          end_game_offer_8_offer_type,
                          end_game_offer_9_offer_type,
                          end_game_offer_10_offer_type,
                          event_name,
                          event_timestamp,
                          event_version,
                          installed_at,
                          inventory_coin,
                          ip_address,
                          user_adgroup,
                          user_campaign,
                          user_creative,
                          user_device,
                          user_level_at,
                          user_level_id,
                          user_manufacturer,
                          user_network,
                          user_notification_state,
                          user_os_version,
                          user_platform,
                          user_session_count,
                          LAST_VALUE(user_split_test_name IGNORE NULLS) OVER (
                                       PARTITION BY advertising_id
                                       ORDER BY event_timestamp ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
                                    ) AS user_split_test_name,
                          user_test_routing_value,
                          user_total_payment,
                          user_total_session_time,
                          user_country_code,
                          app_version,
                          user_game_mode,
                          user_grand_mode_level,
                          user_win_streak_count,
                          user_win_streak_group,
                          user_apps_flyer_id,
                          user_id
                          FROM
                            (SELECT
                            advertising_id,
                            build_no,
                            connection_type,
                            null as end_game_offer,
                            null as end_game_offer_1_offer_type,
                            null as end_game_offer_2_offer_type,
                            null as end_game_offer_3_offer_type,
                            null as end_game_offer_4_offer_type,
                            null as end_game_offer_5_offer_type,
                            null as end_game_offer_6_offer_type,
                            null as end_game_offer_7_offer_type,
                            null as end_game_offer_8_offer_type,
                            null as end_game_offer_9_offer_type,
                            null as end_game_offer_10_offer_type,
                            event_name,
                            event_timestamp,
                            event_version,
                            installed_at,
                            inventory_coin,
                            ip_address,
                            user_adgroup,
                            user_campaign,
                            user_creative,
                            user_device,
                            user_level_at,
                            user_level_id,
                            user_manufacturer,
                            user_network,
                            user_notification_state,
                            user_os_version,
                            user_platform,
                            user_session_count,
                            user_split_test_name,
                            user_test_routing_value,
                            user_total_payment,
                            user_total_session_time,
                            user_country_code,
                            app_version,
                            user_game_mode,
                            user_grand_mode_level,
                            user_win_streak_count,
                            user_win_streak_group,
                            user_apps_flyer_id,
                            user_id

                            FROM tile_match.session

                            UNION ALL

                            SELECT
                            advertising_id,
                            build_no,
                            connection_type,
                            null as end_game_offer,
                            null as end_game_offer_1_offer_type,
                            null as end_game_offer_2_offer_type,
                            null as end_game_offer_3_offer_type,
                            null as end_game_offer_4_offer_type,
                            null as end_game_offer_5_offer_type,
                            null as end_game_offer_6_offer_type,
                            null as end_game_offer_7_offer_type,
                            null as end_game_offer_8_offer_type,
                            null as end_game_offer_9_offer_type,
                            null as end_game_offer_10_offer_type,
                            event_name,
                            event_timestamp,
                            event_version,
                            installed_at,
                            inventory_coin,
                            ip_address,
                            user_adgroup,
                            user_campaign,
                            user_creative,
                            user_device,
                            user_level_at,
                            user_level_id,
                            user_manufacturer,
                            user_network,
                            user_notification_state,
                            user_os_version,
                            user_platform,
                            user_session_count,
                            user_split_test_name,
                            user_test_routing_value,
                            user_total_payment,
                            user_total_session_time,
                            user_country_code,
                            app_version,
                            user_game_mode,
                            user_grand_mode_level,
                            user_win_streak_count,
                            user_win_streak_group,
                            user_apps_flyer_id,
                            user_id

                            FROM tile_match.monitoring

                            UNION ALL

                            SELECT
                            advertising_id,
                            build_no,
                            connection_type,
                            end_game_offer,
                            end_game_offer_1_offer_type,
                            end_game_offer_2_offer_type,
                            end_game_offer_3_offer_type,
                            end_game_offer_4_offer_type,
                            end_game_offer_5_offer_type,
                            end_game_offer_6_offer_type,
                            end_game_offer_7_offer_type,
                            end_game_offer_8_offer_type,
                            end_game_offer_9_offer_type,
                            end_game_offer_10_offer_type,
                            event_name,
                            event_timestamp,
                            event_version,
                            installed_at,
                            inventory_coin,
                            ip_address,
                            user_adgroup,
                            user_campaign,
                            user_creative,
                            user_device,
                            user_level_at,
                            user_level_id,
                            user_manufacturer,
                            user_network,
                            user_notification_state,
                            user_os_version,
                            user_platform,
                            user_session_count,
                            user_split_test_name,
                            user_test_routing_value,
                            user_total_payment,
                            user_total_session_time,
                            user_country_code,
                            app_version,
                            user_game_mode,
                            user_grand_mode_level,
                            user_win_streak_count,
                            user_win_streak_group,
                            user_apps_flyer_id,
                            user_id

                            FROM tile_match.progression) AS cd) AS combined_data
                   group by advertising_id),

     ret_table as (select advertising_id as ret_advertising_id,
                          max(case
                                  when datediff('hour',installed_at,  sysdate) > 36
                                      then case when datediff('hour', installed_at, event_timestamp) between 12 and 36 then 1 else 0 end end)   as retention_1,
                          max(case
                                  when datediff('hour',installed_at,  sysdate) > 60
                                      then case when datediff('hour', installed_at, event_timestamp) between 36 and 60 then 1 else 0 end end)   as retention_2,
                          max(case
                                  when datediff('hour',installed_at,  sysdate) > 84
                                      then case when datediff('hour', installed_at, event_timestamp) between 60 and 84 then 1 else 0 end end)   as retention_3,
                          max(case
                                  when datediff('hour',installed_at,  sysdate) > 108
                                      then case when datediff('hour', installed_at, event_timestamp) between 84 and 108 then 1 else 0 end end)  as retention_4,
                          max(case
                                  when datediff('hour',installed_at,  sysdate) > 132
                                      then case when datediff('hour', installed_at, event_timestamp) between 108 and 132 then 1 else 0 end end) as retention_5,
                          max(case
                                  when datediff('hour',installed_at,  sysdate) > 180
                                      then case when datediff('hour', installed_at, event_timestamp) between 156 and 180 then 1 else 0 end end) as retention_7,
                          max(case
                                  when datediff('hour',installed_at,  sysdate) > 252
                                      then case when datediff('hour', installed_at, event_timestamp) between 228 and 252 then 1 else 0 end end) as retention_10,
                          max(case
                                  when datediff('hour',installed_at,  sysdate) > 348
                                      then case when datediff('hour', installed_at, event_timestamp) between 324 and 348 then 1 else 0 end end) as retention_14,
                          max(case
                                  when datediff('hour',installed_at,  sysdate) > 444
                                      then case when datediff('hour', installed_at, event_timestamp) between 420 and 444 then 1 else 0 end end) as retention_18,
                          max(case
                                  when datediff('hour',installed_at,  sysdate) > 516
                                      then case when datediff('hour', installed_at, event_timestamp) between 492 and 516 then 1 else 0 end end) as retention_21,
                          max(case
                                  when datediff('hour',installed_at,  sysdate) > 588
                                      then case when datediff('hour', installed_at, event_timestamp) between 564 and 588 then 1 else 0 end end) as retention_24,
                          max(case
                                  when datediff('hour',installed_at,  sysdate) > 684
                                      then case when datediff('hour', installed_at, event_timestamp) between 660 and 684 then 1 else 0 end end) as retention_28,
                          max(case
                                  when datediff('hour',installed_at,  sysdate) > 1092
                                      then case when datediff('hour', installed_at, event_timestamp) between 1068 and 1092 then 1 else 0 end end) as retention_45,
                          max(case
                                  when datediff('hour',installed_at,  sysdate) > 1452
                                      then case when datediff('hour', installed_at, event_timestamp) between 1428 and 1452 then 1 else 0 end end) as retention_60,
                          max(case
                                  when datediff('hour',installed_at,  sysdate) > 2172
                                      then case when datediff('hour', installed_at, event_timestamp) between 2148 and 2172 then 1 else 0 end end) as retention_90,
                          max(case
                                  when datediff('hour',installed_at,  sysdate) > 2880
                                      then case when datediff('hour', installed_at, event_timestamp) between 2856 and 2880 then 1 else 0 end end) as retention_120,
                          max(case
                                  when datediff('hour',installed_at,  sysdate) > 4332
                                      then case when datediff('hour', installed_at, event_timestamp) between 4308 and 4332 then 1 else 0 end end) as retention_180,
                          max(case
                                  when datediff('hour',installed_at,  sysdate) > 8652
                                      then case when datediff('hour', installed_at, event_timestamp) between 8628 and 8652 then 1 else 0 end end) as retention_360
                   from tile_match.monitoring
                   group by advertising_id),

     ad_usr as (select idfa_or_gps_adid,
                        max(network_name)                            as network_name,
                        max(campaign_name)                           as campaign_name,
                        max(fb_install_referrer_campaign_group_name) as fb_install_referrer_campaign_group_name,
                        max(adgroup_name)                            as adgroup_name,
                        max(fb_install_referrer_campaign_name)       as fb_install_referrer_campaign_name,
                        max(creative_name)                           as creative_name,
                        max(fb_install_referrer_adgroup_name)        as fb_install_referrer_adgroup_name,
                        max(UPPER(country))                          as country,
                        min(app_version_short)                       as f_app_version,
                        max(app_version_short)                       as l_app_version,
                        null                                         as ltv1_iap,
                        null                                         as ltv2_iap,
                        null                                         as ltv3_iap,
                        null                                         as ltv4_iap,
                        null                                         as ltv5_iap,
                        null                                         as ltv7_iap,
                        null                                         as ltv10_iap,
                        null                                         as ltv14_iap,
                        null                                         as ltv18_iap,
                        null                                         as ltv21_iap,
                        null                                         as ltv24_iap,
                        null                                         as ltv28_iap,
                        null                                         as ltv45_iap,
                        null                                         as ltv60_iap,
                        null                                         as ltv90_iap,
                        null                                         as ltv120_iap,
                        null                                         as ltvcurr_iap,
                        null                                         as ltv1_ad,
                        null                                         as ltv2_ad,
                        null                                         as ltv3_ad,
                        null                                         as ltv4_ad,
                        null                                         as ltv5_ad,
                        null                                         as ltv7_ad,
                        null                                         as ltv10_ad,
                        null                                         as ltv14_ad,
                        null                                         as ltv18_ad,
                        null                                         as ltv21_ad,
                        null                                         as ltv24_ad,
                        null                                         as ltv28_ad,
                        null                                         as ltv45_ad,
                        null                                         as ltv60_ad,
                        null                                         as ltv90_ad,
                        null                                         as ltv120_ad,
                        null                                         as ltvcurr_ad,
                        null                                         as payment_1,
                        null                                         as payment_3,
                        null                                         as payment_7,
                        null                                         as payment_14,
                        null                                         as payment_21,
                        null                                         as payment_28,
                        null                                         as payment_45,
                        null                                         as payment_60,
                        null                                         as payment_90,
                        null                                         as payment_120

                 from adjust.tile_match_raw
                 group by idfa_or_gps_adid),

     af_usr as (select coalesce(UPPER(idfv), LOWER(advertising_id))  as idfa_or_gps_adid,
                        max(case when event_name='install' then
                              (case
                                 when media_source in ('Facebook Ads','restricted') then 'facebook'
                                 when (media_source is null or media_source in ('Null','organic')) then 'Organic'
                                 when media_source='applovin_int' then 'applovin'
                                 when media_source='adjoe_int' then 'adjoe'
                               else media_source end)  end)                                                  as network_name,
                        max(case when event_name='install' then campaign end)                                as campaign_name,
                        null                                                                                 as fb_install_referrer_campaign_group_name,
                        max(case when event_name='install' then adset end)                                   as adgroup_name,
                        null                                                                                 as fb_install_referrer_campaign_name,
                        max(case when event_name='install' then ad end)                                      as creative_name,
                        null                                                                                 as fb_install_referrer_adgroup_name,
                        max(UPPER(country_code))                                                             as country,
                        min(app_version)                                                                     as f_app_version,
                        max(app_version)                                                                     as l_app_version,
                        sum(case
                                when (datediff('hour', install_time, event_time) < 36) and event_name='af_purchase' then event_revenue_usd  end)         as ltv1_iap,
                        sum(case
                                when (datediff('hour', install_time, event_time) < 60) and event_name='af_purchase' then event_revenue_usd  end)         as ltv2_iap,
                        sum(case
                                when (datediff('hour', install_time, event_time) < 84) and event_name='af_purchase' then event_revenue_usd  end)         as ltv3_iap,
                        sum(case
                                when (datediff('hour', install_time, event_time) < 108) and event_name='af_purchase' then event_revenue_usd  end)        as ltv4_iap,
                        sum(case
                                when (datediff('hour', install_time, event_time) < 132) and event_name='af_purchase' then event_revenue_usd  end)        as ltv5_iap,
                        sum(case
                                when (datediff('hour', install_time, event_time) < 180) and event_name='af_purchase' then event_revenue_usd  end)        as ltv7_iap,
                        sum(case
                                when (datediff('hour', install_time, event_time) < 252) and event_name='af_purchase' then event_revenue_usd  end)        as ltv10_iap,
                        sum(case
                                when (datediff('hour', install_time, event_time) < 348) and event_name='af_purchase' then event_revenue_usd  end)        as ltv14_iap,
                        sum(case
                                when (datediff('hour', install_time, event_time) < 444) and event_name='af_purchase' then event_revenue_usd  end)        as ltv18_iap,
                        sum(case
                                when (datediff('hour', install_time, event_time) < 516) and event_name='af_purchase' then event_revenue_usd  end)        as ltv21_iap,
                        sum(case
                                when (datediff('hour', install_time, event_time) < 588) and event_name='af_purchase' then event_revenue_usd  end)        as ltv24_iap,
                        sum(case
                                when (datediff('hour', install_time, event_time) < 684) and event_name='af_purchase' then event_revenue_usd  end)        as ltv28_iap,
                        sum(case
                                when (datediff('hour', install_time, event_time) < 1092) and event_name='af_purchase' then event_revenue_usd  end)       as ltv45_iap,
                        sum(case
                                when (datediff('hour', install_time, event_time) < 1452) and event_name='af_purchase' then event_revenue_usd  end)       as ltv60_iap,
                        sum(case
                                when (datediff('hour', install_time, event_time) < 2172) and event_name='af_purchase' then event_revenue_usd  end)       as ltv90_iap,
                        sum(case
                                when (datediff('hour', install_time, event_time) < 2892) and event_name='af_purchase' then event_revenue_usd  end)       as ltv120_iap,
                        sum(case
                                when event_name='af_purchase' then event_revenue_usd  end)
                                  as ltvcurr_iap,
                        sum(case
                                when (datediff('hour', install_time, event_time) < 36) and event_name='af_ad_revenue' then event_revenue_usd  end)       as ltv1_ad,
                        sum(case
                                when (datediff('hour', install_time, event_time) < 60) and event_name='af_ad_revenue' then event_revenue_usd  end)       as ltv2_ad,
                        sum(case
                                when (datediff('hour', install_time, event_time) < 84) and event_name='af_ad_revenue' then event_revenue_usd  end)       as ltv3_ad,
                        sum(case
                                when (datediff('hour', install_time, event_time) < 108) and event_name='af_ad_revenue' then event_revenue_usd  end)      as ltv4_ad,
                        sum(case
                                when (datediff('hour', install_time, event_time) < 132) and event_name='af_ad_revenue' then event_revenue_usd  end)      as ltv5_ad,
                        sum(case
                                when (datediff('hour', install_time, event_time) < 180) and event_name='af_ad_revenue' then event_revenue_usd  end)      as ltv7_ad,
                        sum(case
                                when (datediff('hour', install_time, event_time) < 252) and event_name='af_ad_revenue' then event_revenue_usd  end)      as ltv10_ad,
                        sum(case
                                when (datediff('hour', install_time, event_time) < 348) and event_name='af_ad_revenue' then event_revenue_usd  end)      as ltv14_ad,
                        sum(case
                                when (datediff('hour', install_time, event_time) < 444) and event_name='af_ad_revenue' then event_revenue_usd  end)      as ltv18_ad,
                        sum(case
                                when (datediff('hour', install_time, event_time) < 516) and event_name='af_ad_revenue' then event_revenue_usd  end)      as ltv21_ad,
                        sum(case
                                when (datediff('hour', install_time, event_time) < 588) and event_name='af_ad_revenue' then event_revenue_usd  end)      as ltv24_ad,
                        sum(case
                                when (datediff('hour', install_time, event_time) < 684) and event_name='af_ad_revenue' then event_revenue_usd  end)      as ltv28_ad,
                        sum(case
                                when (datediff('hour', install_time, event_time) < 1092) and event_name='af_ad_revenue' then event_revenue_usd  end)     as ltv45_ad,
                        sum(case
                                when (datediff('hour', install_time, event_time) < 1452) and event_name='af_ad_revenue' then event_revenue_usd  end)     as ltv60_ad,
                        sum(case
                                when (datediff('hour', install_time, event_time) < 2172) and event_name='af_ad_revenue' then event_revenue_usd  end)     as ltv90_ad,
                        sum(case
                                when (datediff('hour', install_time, event_time) < 2892) and event_name='af_ad_revenue' then event_revenue_usd  end)     as ltv120_ad,
                        sum(case
                                when event_name='af_ad_revenue' then event_revenue_usd  end)
                                  as ltvcurr_ad,
                        count(distinct case
                                            when (datediff('hour', install_time, event_time) < 36) and event_name='af_purchase' then event_time end)
                                  as payment_1,
                        count(distinct case
                                            when (datediff('hour', install_time, event_time) < 84) and event_name='af_purchase' then event_time end)
                                  as payment_3,
                        count(distinct case
                                            when (datediff('hour', install_time, event_time) < 180) and event_name='af_purchase' then event_time end)
                                  as payment_7,
                        count(distinct case
                                            when (datediff('hour', install_time, event_time) < 348) and event_name='af_purchase' then event_time end)
                                  as payment_14,
                        count(distinct case
                                            when (datediff('hour', install_time, event_time) < 516) and event_name='af_purchase' then event_time end)
                                  as payment_21,
                        count(distinct case
                                            when (datediff('hour', install_time, event_time) < 684) and event_name='af_purchase' then event_time end)
                                  as payment_28,
                        count(distinct case
                                            when (datediff('hour', install_time, event_time) < 1092) and event_name='af_purchase' then event_time end)
                                  as payment_45,
                        count(distinct case
                                            when (datediff('hour', install_time, event_time) < 1452) and event_name='af_purchase' then event_time end)
                                  as payment_60,
                        count(distinct case
                                            when (datediff('hour', install_time, event_time) < 2172) and event_name='af_purchase' then event_time end)
                                  as payment_90,
                        count(distinct case
                                            when (datediff('hour', install_time, event_time) < 2892) and event_name='af_purchase' then event_time end)
                                  as payment_120

                 from apps_flyer.goodwill_tile_raw
                 group by idfa_or_gps_adid),

     adf_usr as (select * from ad_usr union all select * from af_usr),

     adj_usr as (select idfa_or_gps_adid,
                        max(case when network_name<>'Organic' then network_name else 'Organic' end)        as network_name,
                        max(campaign_name)                                                                 as campaign_name,
                        max(fb_install_referrer_campaign_group_name)                                       as fb_install_referrer_campaign_group_name,
                        max(adgroup_name)                                                                  as adgroup_name,
                        max(fb_install_referrer_campaign_name)                                             as fb_install_referrer_campaign_name,
                        max(creative_name)                                                                 as creative_name,
                        max(fb_install_referrer_adgroup_name)                                              as fb_install_referrer_adgroup_name,
                        max(country)                                                                       as country,
                        min(f_app_version)                                                                 as f_app_version,
                        max(l_app_version)                                                                 as l_app_version,
                        max(ltv1_iap)                                                                      as ltv1_iap,
                        max(ltv2_iap)                                                                      as ltv2_iap,
                        max(ltv3_iap)                                                                      as ltv3_iap,
                        max(ltv4_iap)                                                                      as ltv4_iap,
                        max(ltv5_iap)                                                                      as ltv5_iap,
                        max(ltv7_iap)                                                                      as ltv7_iap,
                        max(ltv10_iap)                                                                     as ltv10_iap,
                        max(ltv14_iap)                                                                     as ltv14_iap,
                        max(ltv18_iap)                                                                     as ltv18_iap,
                        max(ltv21_iap)                                                                     as ltv21_iap,
                        max(ltv24_iap)                                                                     as ltv24_iap,
                        max(ltv28_iap)                                                                     as ltv28_iap,
                        max(ltv45_iap)                                                                     as ltv45_iap,
                        max(ltv60_iap)                                                                     as ltv60_iap,
                        max(ltv90_iap)                                                                     as ltv90_iap,
                        max(ltv120_iap)                                                                    as ltv120_iap,
                        max(ltvcurr_iap)                                                                   as ltvcurr_iap,
                        max(ltv1_ad)                                                                       as ltv1_ad,
                        max(ltv2_ad)                                                                       as ltv2_ad,
                        max(ltv3_ad)                                                                       as ltv3_ad,
                        max(ltv4_ad)                                                                       as ltv4_ad,
                        max(ltv5_ad)                                                                       as ltv5_ad,
                        max(ltv7_ad)                                                                       as ltv7_ad,
                        max(ltv10_ad)                                                                      as ltv10_ad,
                        max(ltv14_ad)                                                                      as ltv14_ad,
                        max(ltv18_ad)                                                                      as ltv18_ad,
                        max(ltv21_ad)                                                                      as ltv21_ad,
                        max(ltv24_ad)                                                                      as ltv24_ad,
                        max(ltv28_ad)                                                                      as ltv28_ad,
                        max(ltv45_ad)                                                                      as ltv45_ad,
                        max(ltv60_ad)                                                                      as ltv60_ad,
                        max(ltv90_ad)                                                                      as ltv90_ad,
                        max(ltv120_ad)                                                                     as ltv120_ad,
                        max(ltvcurr_ad)                                                                    as ltvcurr_ad,
                        max(payment_1)                                                                     as payment_1,
                        max(payment_3)                                                                     as payment_3,
                        max(payment_7)                                                                     as payment_7,
                        max(payment_14)                                                                    as payment_14,
                        max(payment_21)                                                                    as payment_21,
                        max(payment_28)                                                                    as payment_28,
                        max(payment_45)                                                                    as payment_45,
                        max(payment_60)                                                                    as payment_60,
                        max(payment_90)                                                                    as payment_90,
                        max(payment_120)                                                                   as payment_120
                 from adf_usr
                 group by idfa_or_gps_adid),

     joined_table as (select *
                      from sess_user
                               left join ret_table on sess_user.advertising_id = ret_table.ret_advertising_id
                               left join adj_usr on sess_user.advertising_id = idfa_or_gps_adid)

      select advertising_id,
             first_build_no,
             connection_type,
             churn_last_level_no,
             churn_timestamp,
             churn_last_level_no_5days,
             churn_timestamp_5days,
             churn_last_level_no_3days,
             churn_timestamp_3days,
             end_game_offer,
             end_game_offer_1_offer_type,
             end_game_offer_2_offer_type,
             end_game_offer_3_offer_type,
             end_game_offer_4_offer_type,
             end_game_offer_5_offer_type,
             end_game_offer_6_offer_type,
             end_game_offer_7_offer_type,
             end_game_offer_8_offer_type,
             end_game_offer_9_offer_type,
             end_game_offer_10_offer_type,
             last_event_time,
             last_event_version,
             installed,
             ip_address,
             user_adgroup,
             user_apps_flyer_id,
             user_id,
             user_campaign,
             user_creative,
             user_device,
             user_level_at,
             user_level_id,
             user_manufacturer,
             user_network,
             user_notification_state,
             user_os_version,
             user_platform,
             user_session_count,
             user_split_test_name,
             user_split_test_name_Starter_Coin_01_Android,
             user_split_test_name_Starter_Coin_01_IOS,
             user_split_test_name_Starter_Coin_02_IOS,
             user_split_test_name_Starter_Coin_03_IOS,
             user_split_test_name_Starter_Coin_02,
             user_split_test_name_Starter_Coin_03,
             user_test_routing_value,
             user_total_payment,
             user_total_session_time,
             user_country_code,
             user_game_mode,
             user_grand_mode_level,
             user_win_streak_count,
             user_win_streak_group,
             retention_1,
             retention_2,
             retention_3,
             retention_4,
             retention_5,
             retention_7,
             retention_10,
             retention_14,
             retention_18,
             retention_21,
             retention_24,
             retention_28,
             retention_45,
             retention_60,
             retention_90,
             retention_120,
             retention_180,
             retention_360,
             ltv1_iap,
             ltv2_iap,
             ltv3_iap,
             ltv4_iap,
             ltv5_iap,
             ltv7_iap,
             ltv10_iap,
             ltv14_iap,
             ltv18_iap,
             ltv21_iap,
             ltv24_iap,
             ltv28_iap,
             ltv45_iap,
             ltv60_iap,
             ltv90_iap,
             ltv120_iap,
             ltvcurr_iap,
             ltv1_ad,
             ltv2_ad,
             ltv3_ad,
             ltv4_ad,
             ltv5_ad,
             ltv7_ad,
             ltv10_ad,
             ltv14_ad,
             ltv18_ad,
             ltv21_ad,
             ltv24_ad,
             ltv28_ad,
             ltv45_ad,
             ltv60_ad,
             ltv90_ad,
             ltv120_ad,
             ltvcurr_ad,
             payment_1,
             payment_3,
             payment_7,
             payment_14,
             payment_21,
             payment_28,
             payment_45,
             payment_60,
             payment_90,
             payment_120,
             idfa_or_gps_adid,
             network_name,
             campaign_name,
             fb_install_referrer_campaign_group_name,
             adgroup_name,
             fb_install_referrer_campaign_name,
             creative_name,
             fb_install_referrer_adgroup_name,
             COALESCE(country, user_country_code) as country,
             COALESCE(f_app_version, fst_app_version) as first_app_version,
             COALESCE(l_app_version, lst_app_version) as last_app_version,
             COALESCE((CASE
                 WHEN network_name = 'Apple Search Ads' THEN 'apple'
                 WHEN network_name = 'Google Ads ACI' THEN 'adwords'
                 WHEN network_name = 'Google Organic Search' THEN 'google_organic_search'
                 WHEN network_name = 'Vungle' THEN 'vungle'
                 WHEN network_name = 'ironSrc' THEN 'ironsource'
                 WHEN network_name = 'Organic' OR network_name is null THEN 'Organic'
                 WHEN network_name = 'UnityAds' THEN 'unity_ads'
                 WHEN (network_name = 'Unattributed' OR network_name = 'Facebook Installs' OR
                   network_name = 'Off-Facebook Installs' OR
                   network_name = 'Facebook Messenger Installs' OR
                   network_name = 'Instagram Installs') THEN 'facebook' ELSE network_name END),(user_network))   as network,

            COALESCE(rtrim(CASE
            WHEN (network_name = 'Google Organic Search' OR
            network_name = 'Organic' OR network_name is null) THEN NULL
            ELSE SPLIT_PART((CASE
            WHEN (campaign_name = '' OR campaign_name IS NULL)
            THEN fb_install_referrer_campaign_group_name
            ELSE campaign_name END), '(', 1) END) ,user_campaign) as campaig,
            (case when network_name in ('google_organic_search','Google Organic Search')
                    or network in ('google_organic_search','Google Organic Search')
                    or user_network in ('google_organic_search','Google Organic Search')
                  then 'Organic' else campaig end) as campaign,

            COALESCE(rtrim(CASE
            WHEN (network_name = 'Google Organic Search' OR
            network_name = 'Organic' OR network_name is null) THEN NULL
            WHEN network_name in ('UnityAds', 'ironSrc') THEN 'unity_ironSrc'
            ELSE SPLIT_PART((CASE
            WHEN (adgroup_name = '' OR adgroup_name IS NULL)
            THEN fb_install_referrer_campaign_name
            ELSE adgroup_name END), '(', 1) END) ,user_adgroup)  as adgroup,

            COALESCE(rtrim(CASE
            WHEN (network_name = 'Google Organic Search' OR
            network_name = 'Organic' OR network_name is null) THEN NULL
            ELSE SPLIT_PART((CASE
            WHEN (creative_name = '' OR creative_name IS NULL)
            THEN fb_install_referrer_adgroup_name
            ELSE creative_name END), '(', 1) END) ,user_creative)  as creative,

            (case when campaign is null then (case when network = 'Organic' or network = 'google_organic_search' then 'Organic' end) else campaign end) as campaig2,
            (case when network_name in ('google_organic_search','Google Organic Search')
                    or network in ('google_organic_search','Google Organic Search')
                    or user_network in ('google_organic_search','Google Organic Search')
                  then 'Organic' else campaig2 end) as campaign2,

            (case when network_name in ('google_organic_search','Google Organic Search')
                    or network in ('google_organic_search','Google Organic Search')
                    or user_network in ('google_organic_search','Google Organic Search')
                  then coalesce(campaign,campaign2) end) as google_search_keyword

      from joined_table
      where trunc(installed) between (trunc(sysdate)-721) and (trunc(sysdate)-1)
      ;;

    publish_as_db_view: yes
    sql_trigger_value: SELECT TRUNC((DATE_PART('hour', SYSDATE))/2)  ;;
    sortkeys: ["advertising_id","country"]
  }

  dimension: advertising_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.advertising_id ;;
  }

  dimension: app_version {
    type: string
    sql: ${TABLE}.first_app_version ;;
  }

  dimension: initial_coin {
    type: number
    sql: ${TABLE}.initial_coin ;;
  }

  dimension: app_version_last {
    type: string
    sql: ${TABLE}.last_app_version ;;
  }

  dimension_group: arrival_ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.arrival_ts ;;
  }

  dimension: build_no {
    type: number
    sql: ${TABLE}.first_build_no ;;
  }

  dimension: churn_last_level_no {
    type: number
    sql: ${TABLE}.churn_last_level_no ;;
  }

  dimension: churn_last_level_no_5days {
    type: number
    sql: ${TABLE}.churn_last_level_no_5days ;;
  }

  dimension: churn_last_level_no_3days {
    type: number
    sql: ${TABLE}.churn_last_level_no_3days ;;
  }

  dimension: churn_timestamp {
    type: date_time
    sql: ${TABLE}.churn_timestamp ;;
  }

  dimension: churn_timestamp_5days {
    type: date_time
    sql: ${TABLE}.churn_timestamp_5days ;;
  }

  dimension: churn_timestamp_3days {
    type: date_time
    sql: ${TABLE}.churn_timestamp_3days ;;
  }

  dimension: connection_type {
    type: number
    sql: ${TABLE}.connection_type ;;
  }

  dimension: end_game_offer {
    type: string
    sql: ${TABLE}.end_game_offer ;;
  }

  dimension: extra_move_count {
    type: number
    sql:  case when end_game_offer_1_offer_type is not null and end_game_offer_2_offer_type is null then 1
                             when end_game_offer_2_offer_type is not null and end_game_offer_3_offer_type is null then 2
                             when end_game_offer_3_offer_type is not null and end_game_offer_4_offer_type is null then 3
                             when end_game_offer_4_offer_type is not null and end_game_offer_5_offer_type is null then 4
                             when end_game_offer_5_offer_type is not null and end_game_offer_6_offer_type is null then 5
                             when end_game_offer_6_offer_type is not null and end_game_offer_7_offer_type is null then 6
                             when end_game_offer_7_offer_type is not null and end_game_offer_8_offer_type is null then 7
                             when end_game_offer_8_offer_type is not null and end_game_offer_9_offer_type is null then 8
                             when end_game_offer_9_offer_type is not null and end_game_offer_10_offer_type is null then 9
                             when end_game_offer_10_offer_type is not null  then 10 end ;;
  }

  dimension: event_version {
    type: string
    sql: ${TABLE}.last_event_version ;;
  }

  dimension_group: installed {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.installed ;;
  }

  dimension: inventory_coin {
    type: number
    sql: ${TABLE}.inventory_coin ;;
  }

  dimension: inventory_life {
    type: number
    sql: ${TABLE}.inventory_life ;;
  }

  dimension: ip_address {
    type: string
    sql: ${TABLE}.ip_address ;;
  }

  dimension: last_event_time {
    type: date_time
    sql: ${TABLE}.last_event_time ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
  }

  dimension: session_time {
    type: number
    sql: ${TABLE}.session_time ;;
  }

  dimension: retention_1 {
    type: number
    sql: ${TABLE}.retention_1 ;;
  }

  dimension: retention_2 {
    type: number
    sql: ${TABLE}.retention_2 ;;
  }

  dimension: retention_3 {
    type: number
    sql: ${TABLE}.retention_3 ;;
  }

  dimension: retention_4 {
    type: number
    sql: ${TABLE}.retention_4 ;;
  }

  dimension: retention_5 {
    type: number
    sql: ${TABLE}.retention_5 ;;
  }

  dimension: retention_7 {
    type: number
    sql: ${TABLE}.retention_7 ;;
  }

  dimension: retention_10 {
    type: number
    sql: ${TABLE}.retention_10 ;;
  }

  dimension: retention_14 {
    type: number
    sql: ${TABLE}.retention_14 ;;
  }

  dimension: retention_18 {
    type: number
    sql: ${TABLE}.retention_18 ;;
  }

  dimension: retention_21 {
    type: number
    sql: ${TABLE}.retention_21 ;;
  }

  dimension: retention_24 {
    type: number
    sql: ${TABLE}.retention_24 ;;
  }

  dimension: retention_28 {
    type: number
    sql: ${TABLE}.retention_28 ;;
  }

  dimension: retention_45 {
    type: number
    sql: ${TABLE}.retention_45 ;;
  }

  dimension: retention_60 {
    type: number
    sql: ${TABLE}.retention_60 ;;
  }

  dimension: retention_90 {
    type: number
    sql: ${TABLE}.retention_90 ;;
  }

  dimension: retention_120 {
    type: number
    sql: ${TABLE}.retention_120 ;;
  }

  dimension: retention_180 {
    type: number
    sql: ${TABLE}.retention_180 ;;
  }

  dimension: retention_360 {
    type: number
    sql: ${TABLE}.retention_360 ;;
  }

  dimension: ltv1_iap {
    type: number
    sql: coalesce(${TABLE}.ltv1_iap,0) ;;
  }

  dimension: ltv2_iap {
    type: number
    sql: coalesce(${TABLE}.ltv2_iap,0) ;;
  }

  dimension: ltv3_iap {
    type: number
    sql: coalesce(${TABLE}.ltv3_iap,0) ;;
  }

  dimension: ltv4_iap {
    type: number
    sql: coalesce(${TABLE}.ltv4_iap,0) ;;
  }

  dimension: ltv5_iap {
    type: number
    sql: coalesce(${TABLE}.ltv5_iap,0) ;;
  }

  dimension: ltv7_iap {
    type: number
    sql: coalesce(${TABLE}.ltv7_iap,0) ;;
  }

  dimension: ltv10_iap {
    type: number
    sql: coalesce(${TABLE}.ltv10_iap,0) ;;
  }

  dimension: ltv14_iap {
    type: number
    sql: coalesce(${TABLE}.ltv14_iap,0) ;;
  }

  dimension: ltv18_iap {
    type: number
    sql: coalesce(${TABLE}.ltv18_iap,0) ;;
  }

  dimension: ltv21_iap {
    type: number
    sql: coalesce(${TABLE}.ltv21_iap,0) ;;
  }

  dimension: ltv24_iap {
    type: number
    sql: coalesce(${TABLE}.ltv24_iap,0) ;;
  }

  dimension: ltv28_iap {
    type: number
    sql: coalesce(${TABLE}.ltv28_iap,0) ;;
  }

  dimension: ltv45_iap {
    type: number
    sql: coalesce(${TABLE}.ltv45_iap,0) ;;
  }

  dimension: ltv60_iap {
    type: number
    sql: coalesce(${TABLE}.ltv60_iap,0) ;;
  }

  dimension: ltv90_iap {
    type: number
    sql: coalesce(${TABLE}.ltv90_iap,0) ;;
  }

  dimension: ltv120_iap {
    type: number
    sql: coalesce(${TABLE}.ltv120_iap,0) ;;
  }

  dimension: ltvcurr_iap {
    type: number
    sql: coalesce(${TABLE}.ltvcurr_iap,0) ;;
  }

  dimension: ltv1_iap_net {
    type: number
    sql: ${ltv1_iap}*0.7 ;;
  }

  dimension: ltv2_iap_net {
    type: number
    sql: ${ltv2_iap}*0.7 ;;
  }

  dimension: ltv3_iap_net {
    type: number
    sql: ${ltv3_iap}*0.7 ;;
  }

  dimension: ltv4_iap_net {
    type: number
    sql: ${ltv4_iap}*0.7 ;;
  }

  dimension: ltv5_iap_net {
    type: number
    sql: ${ltv5_iap}*0.7 ;;
  }

  dimension: ltv7_iap_net {
    type: number
    sql: ${ltv7_iap}*0.7 ;;
  }

  dimension: ltv10_iap_net {
    type: number
    sql: ${ltv10_iap}*0.7 ;;
  }

  dimension: ltv14_iap_net {
    type: number
    sql: ${ltv14_iap}*0.7 ;;
  }

  dimension: ltv18_iap_net {
    type: number
    sql: ${ltv18_iap}*0.7 ;;
  }

  dimension: ltv21_iap_net {
    type: number
    sql: ${ltv21_iap}*0.7 ;;
  }

  dimension: ltv24_iap_net {
    type: number
    sql: ${ltv24_iap}*0.7 ;;
  }

  dimension: ltv28_iap_net {
    type: number
    sql: ${ltv28_iap}*0.7 ;;
  }

  dimension: ltv45_iap_net {
    type: number
    sql: ${ltv45_iap}*0.7 ;;
  }

  dimension: ltv60_iap_net {
    type: number
    sql: ${ltv60_iap}*0.7 ;;
  }

  dimension: ltv90_iap_net {
    type: number
    sql: ${ltv90_iap}*0.7 ;;
  }

  dimension: ltv120_iap_net {
    type: number
    sql: ${ltv120_iap}*0.7 ;;
  }

  dimension: ltvcurr_iap_net {
    type: number
    sql: ${ltvcurr_iap}*0.7 ;;
  }

  dimension: ltv1_blended_net {
    type: number
    sql: ${ltv1_iap_net} + ${ltv1_ad} ;;
  }

  dimension: ltv2_blended_net {
    type: number
    sql: ${ltv2_iap_net} + ${ltv2_ad} ;;
  }

  dimension: ltv3_blended_net {
    type: number
    sql: ${ltv3_iap_net} + ${ltv3_ad} ;;
  }

  dimension: ltv4_blended_net {
    type: number
    sql: ${ltv4_iap_net} + ${ltv4_ad} ;;
  }

  dimension: ltv5_blended_net {
    type: number
    sql: ${ltv5_iap_net} + ${ltv5_ad} ;;
  }

  dimension: ltv7_blended_net {
    type: number
    sql: ${ltv7_iap_net} + ${ltv7_ad} ;;
  }

  dimension: ltv10_blended_net {
    type: number
    sql: ${ltv10_iap_net} + ${ltv10_ad} ;;
  }

  dimension: ltv14_blended_net {
    type: number
    sql: ${ltv14_iap_net} + ${ltv14_ad} ;;
  }

  dimension: ltv18_blended_net {
    type: number
    sql: ${ltv18_iap_net} + ${ltv18_ad} ;;
  }

  dimension: ltv21_blended_net {
    type: number
    sql: ${ltv21_iap_net} + ${ltv21_ad} ;;
  }

  dimension: ltv24_blended_net {
    type: number
    sql: ${ltv24_iap_net} + ${ltv24_ad} ;;
  }

  dimension: ltv28_blended_net {
    type: number
    sql: ${ltv28_iap_net} + ${ltv28_ad} ;;
  }

  dimension: ltv45_blended_net {
    type: number
    sql: ${ltv45_iap_net} + ${ltv45_ad} ;;
  }

  dimension: ltv60_blended_net {
    type: number
    sql: ${ltv60_iap_net} + ${ltv60_ad} ;;
  }

  dimension: ltv90_blended_net {
    type: number
    sql: ${ltv90_iap_net} + ${ltv90_ad} ;;
  }

  dimension: ltv120_blended_net {
    type: number
    sql: ${ltv120_iap_net} + ${ltv120_ad} ;;
  }

  dimension: ltvcurr_blended_net {
    type: number
    sql: ${ltvcurr_iap_net} + ${ltvcurr_ad} ;;
  }

  dimension: ltv1_blended_gross {
    type: number
    sql: ${ltv1_iap} + ${ltv1_ad} ;;
  }

  dimension: ltv2_blended_gross {
    type: number
    sql: ${ltv2_iap} + ${ltv2_ad} ;;
  }

  dimension: ltv3_blended_gross {
    type: number
    sql: ${ltv3_iap} + ${ltv3_ad} ;;
  }

  dimension: ltv4_blended_gross {
    type: number
    sql: ${ltv4_iap} + ${ltv4_ad} ;;
  }

  dimension: ltv5_blended_gross {
    type: number
    sql: ${ltv5_iap} + ${ltv5_ad} ;;
  }

  dimension: ltv7_blended_gross {
    type: number
    sql: ${ltv7_iap} + ${ltv7_ad} ;;
  }

  dimension: ltv10_blended_gross {
    type: number
    sql: ${ltv10_iap} + ${ltv10_ad} ;;
  }

  dimension: ltv14_blended_gross {
    type: number
    sql: ${ltv14_iap} + ${ltv14_ad} ;;
  }

  dimension: ltv18_blended_gross {
    type: number
    sql: ${ltv18_iap} + ${ltv18_ad} ;;
  }

  dimension: ltv21_blended_gross {
    type: number
    sql: ${ltv21_iap} + ${ltv21_ad} ;;
  }

  dimension: ltv24_blended_gross {
    type: number
    sql: ${ltv24_iap} + ${ltv24_ad} ;;
  }

  dimension: ltv28_blended_gross {
    type: number
    sql: ${ltv28_iap} + ${ltv28_ad} ;;
  }

  dimension: ltv45_blended_gross {
    type: number
    sql: ${ltv45_iap} + ${ltv45_ad} ;;
  }

  dimension: ltv60_blended_gross {
    type: number
    sql: ${ltv60_iap} + ${ltv60_ad} ;;
  }

  dimension: ltv90_blended_gross {
    type: number
    sql: ${ltv90_iap} + ${ltv90_ad} ;;
  }

  dimension: ltv120_blended_gross {
    type: number
    sql: ${ltv120_iap} + ${ltv120_ad} ;;
  }

  dimension: ltvcurr_blended_gross {
    type: number
    sql: ${ltvcurr_iap} + ${ltvcurr_ad} ;;
  }

  dimension: ltv1_ad {
    type: number
    sql: coalesce(${TABLE}.ltv1_ad,0) ;;
  }

  dimension: ltv2_ad {
    type: number
    sql: coalesce(${TABLE}.ltv2_ad,0) ;;
  }

  dimension: ltv3_ad {
    type: number
    sql: coalesce(${TABLE}.ltv3_ad,0) ;;
  }

  dimension: ltv4_ad {
    type: number
    sql: coalesce(${TABLE}.ltv4_ad,0) ;;
  }

  dimension: ltv5_ad {
    type: number
    sql: coalesce(${TABLE}.ltv5_ad,0) ;;
  }

  dimension: ltv7_ad {
    type: number
    sql: coalesce(${TABLE}.ltv7_ad,0) ;;
  }

  dimension: ltv10_ad {
    type: number
    sql: coalesce(${TABLE}.ltv10_ad,0) ;;
  }

  dimension: ltv14_ad {
    type: number
    sql: coalesce(${TABLE}.ltv14_ad,0) ;;
  }

  dimension: ltv18_ad {
    type: number
    sql: coalesce(${TABLE}.ltv18_ad,0) ;;
  }

  dimension: ltv21_ad {
    type: number
    sql: coalesce(${TABLE}.ltv21_ad,0) ;;
  }

  dimension: ltv24_ad {
    type: number
    sql: coalesce(${TABLE}.ltv24_ad,0) ;;
  }

  dimension: ltv28_ad {
    type: number
    sql: coalesce(${TABLE}.ltv28_ad,0) ;;
  }

  dimension: ltv45_ad {
    type: number
    sql: coalesce(${TABLE}.ltv45_ad,0) ;;
  }

  dimension: ltv60_ad {
    type: number
    sql: coalesce(${TABLE}.ltv60_ad,0) ;;
  }

  dimension: ltv90_ad {
    type: number
    sql: coalesce(${TABLE}.ltv90_ad,0) ;;
  }

  dimension: ltv120_ad {
    type: number
    sql: coalesce(${TABLE}.ltv120_ad,0) ;;
  }

  dimension: ltvcurr_ad {
    type: number
    sql: coalesce(${TABLE}.ltvcurr_ad,0) ;;
  }

  dimension: payer1 {
    type: number
    sql: case when ${TABLE}.ltv1_iap>0 then ${TABLE}.advertising_id end ;;
  }

  dimension: payer3 {
    type: number
    sql: case when ${TABLE}.ltv3_iap>0 then ${TABLE}.advertising_id end ;;
  }

  dimension: payer7 {
    type: number
    sql: case when ${TABLE}.ltv7_iap>0 then ${TABLE}.advertising_id end ;;
  }

  dimension: payer14 {
    type: number
    sql: case when ${TABLE}.ltv14_iap>0 then ${TABLE}.advertising_id end ;;
  }

  dimension: payer21 {
    type: number
    sql: case when ${TABLE}.ltv21_iap>0 then ${TABLE}.advertising_id end ;;
  }

  dimension: payer28 {
    type: number
    sql: case when ${TABLE}.ltv28_iap>0 then ${TABLE}.advertising_id end ;;
  }

  dimension: payer45 {
    type: number
    sql: case when ${TABLE}.ltv45_iap>0 then ${TABLE}.advertising_id end ;;
  }

  dimension: payer60 {
    type: number
    sql: case when ${TABLE}.ltv60_iap>0 then ${TABLE}.advertising_id end ;;
  }

  dimension: payer90 {
    type: number
    sql: case when ${TABLE}.ltv90_iap>0 then ${TABLE}.advertising_id end ;;
  }

  dimension: payer120 {
    type: number
    sql: case when ${TABLE}.ltv120_iap>0 then ${TABLE}.advertising_id end ;;
  }

  dimension: payment1 {
    type: number
    sql: coalesce(${TABLE}.payment_1,0) ;;
  }

  dimension: payment3 {
    type: number
    sql: coalesce(${TABLE}.payment_3,0) ;;
  }

  dimension: payment7 {
    type: number
    sql: coalesce(${TABLE}.payment_7,0) ;;
  }

  dimension: payment14 {
    type: number
    sql: coalesce(${TABLE}.payment_14,0) ;;
  }

  dimension: payment21 {
    type: number
    sql: coalesce(${TABLE}.payment_21,0) ;;
  }

  dimension: payment28 {
    type: number
    sql: coalesce(${TABLE}.payment_28,0) ;;
  }

  dimension: payment45 {
    type: number
    sql: coalesce(${TABLE}.payment_45,0) ;;
  }

  dimension: payment60 {
    type: number
    sql: coalesce(${TABLE}.payment_60,0) ;;
  }

  dimension: payment90 {
    type: number
    sql: coalesce(${TABLE}.payment_90,0) ;;
  }

  dimension: payment120 {
    type: number
    sql: coalesce(${TABLE}.payment_120,0) ;;
  }

  dimension: isPayer {
    type: string
    sql: (CASE WHEN ${ltvcurr_iap} >0 THEN 'payer' ELSE 'non-payer' END) ;;
  }

  dimension: user_adgroup {
    type: string
    sql: ${TABLE}.user_adgroup ;;
  }

  dimension: user_apps_flyer_id {
    type: string
    sql: ${TABLE}.user_apps_flyer_id ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_campaign {
    type: string
    sql: ${TABLE}.user_campaign ;;
  }

  dimension: user_creative {
    type: string
    sql: ${TABLE}.user_creative ;;
  }

  dimension: user_current_fps {
    type: number
    sql: ${TABLE}.user_current_fps ;;
  }

  dimension: user_device {
    type: string
    sql: ${TABLE}.user_device ;;
  }

  dimension: user_game_mode {
    type: string
    sql: case when ${TABLE}.user_game_mode is null then 'Normal'
              when ${TABLE}.user_game_mode = 1 then 'Grand Mode' end;;
  }

  dimension: user_grand_mode_level {
    type: number
    sql: ${TABLE}.user_grand_mode_level ;;
  }

  dimension: user_win_streak_count {
    type: number
    sql: ${TABLE}.user_win_streak_count ;;
  }

  dimension: user_win_streak_group {
    type: string
    sql: case when ${TABLE}.user_win_streak_group is null then 'Default'
              when ${TABLE}.user_win_streak_group = 1 then 'Streak1'
              when ${TABLE}.user_win_streak_group = 2 then 'Streak2'
              when ${TABLE}.user_win_streak_group = 3 then 'Streak3'
              when ${TABLE}.user_win_streak_group = 4 then 'Streak4'
              when ${TABLE}.user_win_streak_group = 5 then 'Streak5' end ;;
  }

  dimension: user_level_at {
    type: number
    sql: ${TABLE}.user_level_at ;;
  }

  dimension: user_level_id {
    type: number
    sql: ${TABLE}.user_level_id ;;
  }

  dimension: user_manufacturer {
    type: string
    sql: ${TABLE}.user_manufacturer ;;
  }

  dimension: user_network {
    type: string
    sql: ${TABLE}.user_network ;;
  }

  dimension: user_notification_state {
    type: yesno
    sql: ${TABLE}.user_notification_state ;;
  }

  dimension: user_os_version {
    type: string
    sql: ${TABLE}.user_os_version ;;
  }

  dimension: user_platform {
    type: string
    sql: case when ${TABLE}.user_platform = 'Android' then 'android'
              when ${TABLE}.user_platform = 'IPhonePlayer' then 'ios'
        end ;;
  }

  dimension: user_session_count {
    type: number
    sql: ${TABLE}.user_session_count ;;
  }

  dimension: user_split_test_name {
    type: string
    sql: ${TABLE}.user_split_test_name ;;
  }

  dimension: user_split_test_name_target {
    type: string
    sql:  case when ${TABLE}.user_split_test_name = '2' then 'W/out Target'
               when ${TABLE}.user_split_test_name = '6' then 'Target'
          end ;;
  }

  dimension: user_split_test_name_tutorial {
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%MetaTutorialsActive%' then 'MetaTutorialActive'
               when ${TABLE}.user_split_test_name like '%MetaTutorialsPassive%' then 'MetaTutorialsPassive'
          end ;;
  }

  dimension: user_split_test_name_balance {
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%BalancedLevels%' then 'BalancedLevels'
               when ${TABLE}.user_split_test_name like '%OldLevels%' then 'OldLevels'
          end ;;
  }

  dimension: user_split_test_name_elements {
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%DefaultElements%' then 'DefaultElements'
               when ${TABLE}.user_split_test_name like '%SimplifiedElements%' then 'SimplifiedElements'
          end ;;
  }

  dimension: user_split_test_name_simplifiedTutorials {
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%PassiveTutorials%' then 'PassiveTutorials'
               when ${TABLE}.user_split_test_name like '%SimplifiedTutorials%' then 'SimplifiedTutorials'
          end ;;
  }

  dimension: user_split_test_name_challengeLevel {
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%ChallengeLevels%' then 'ChallengeLevels'
               when ${TABLE}.user_split_test_name like '%NormalLevels%' then 'NormalLevels'
          end ;;
  }

  dimension: user_split_test_name_collectAndWin {
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%CollectAndWinActive%' then 'CollectAndWinActive'
               when ${TABLE}.user_split_test_name like '%CollectAndWinPassive%' then 'CollectAndWinPassive'
          end ;;
  }

  dimension: user_split_test_name_TF_TT_levels {
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%2908Default%' then 'DefaultLevels'
               when ${TABLE}.user_split_test_name like '%2908TF%' then 'TileFamilyLevels'
               when ${TABLE}.user_split_test_name like '%2908TT%' then 'TripleTilesLevels'
          end ;;
  }

  dimension: user_split_test_name_more_challenged_levels{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%0609DefaultLevels%' then 'DefaultLevels'
               when ${TABLE}.user_split_test_name like '%0609DefaultChallenged%' then 'DefaultChallenged'
               when ${TABLE}.user_split_test_name like '%0609SimplifiedChallenged%' then 'SimplifiedChallenged'
          end ;;
  }

  dimension: user_split_test_name_TF_challenged{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%1309DefaultChallenged%' then 'DefaultChallenged'
               when ${TABLE}.user_split_test_name like '%1309SimplifiedChallenged%' then 'SimplifiedChallenged'
               when ${TABLE}.user_split_test_name like '%1309TFLevels%' then 'TileFamilyLevels'
          end ;;
  }

  dimension: user_split_test_name_Ruby_Rush{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%1309RubyRushActive%' then 'Ruby Rush Active'
               when ${TABLE}.user_split_test_name like '%1309RubyRushPassive%' then 'Ruby Rush Passive'
          end ;;
  }

  dimension: user_split_test_name_level_test{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%2009DefaultChallenged%' then 'Default Challenged'
               when ${TABLE}.user_split_test_name like '%2009SimplifiedChallenged%' then 'Simplified Challenged'
               when ${TABLE}.user_split_test_name like '%2009NewOrder%' then 'New Order'
               when ${TABLE}.user_split_test_name like '%2009TF%' then 'TF'
          end ;;
  }

  dimension: user_split_test_name_Dynamic_Backgrounds{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%2709_DefaultBackground%' then 'Default Background'
               when ${TABLE}.user_split_test_name like '%2709_DynamicBackgrounds%' then 'Dynamic Backgrounds'
          end ;;
  }

  dimension: user_split_test_name_LevelDetails_PopUp{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%2709_AggresiveLevelDetailsPopUp%' then 'Aggresive Level Details PopUp'
               when ${TABLE}.user_split_test_name like '%2709_DefaultLevelDetailsPopUp%' then 'Default Level Details PopUp'
          end ;;
  }

  dimension: user_split_test_name_New_Balanced_Levels{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%0110BalancedLevels%' then 'Balanced Levels'
               when ${TABLE}.user_split_test_name like '%0110DefaultLevels%' then 'Default Levels'
          end ;;
  }

  dimension: user_split_test_name_Initial_Coin{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%1110_InitialCoin200"%' then 'Initial Coin 200'
               when ${TABLE}.user_split_test_name like '%1110_InitialCoin300%' then 'Initial Coin 300'
               when ${TABLE}.user_split_test_name like '%1110_InitialCoin400%' then 'Initial Coin 400'
               when ${TABLE}.user_split_test_name like '%1110_InitialCoin2000%' then 'Initial Coin 2000'
          end ;;
  }

  dimension: user_split_test_name_Seasonal_Pass{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%1101_SeasonalPassActive%' then 'Seasonal Pass Active'
               when ${TABLE}.user_split_test_name like '%1101_SeasonalPassPassive%' then 'Seasonal Pass Passive'
          end ;;
  }

  dimension: user_split_test_name_Well_Balanced_Levels{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%1110_WellBalancedLevels%' then 'Well Balanced Levels'
               when ${TABLE}.user_split_test_name like '%1110_DefaultLevels%' then 'Default Levels'
          end ;;
  }

  dimension: user_split_test_name_Stamp_Mission{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%2510_StampMissionActive%' then 'Stamp Mission Active'
               when ${TABLE}.user_split_test_name like '%2510_StampMissionPassive%' then 'Stamp Mission Passive'
          end ;;
  }

  dimension: user_split_test_name_Meta_Flow{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%2510_MetaAuto%' then 'Meta Auto'
               when ${TABLE}.user_split_test_name like '%2510_MetaDefault%' then 'Meta Default'
          end ;;
  }

  dimension: user_split_test_name_Pass_Tutorial{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%2510_PassTutorialDefault%' then 'Default'
               when ${TABLE}.user_split_test_name like '%2510_PassTutorialIgnoreInfo%' then 'Ignore Info'
               when ${TABLE}.user_split_test_name like '%2510_PassTutorialIgnoreButton%' then 'Ignore Button'
          end ;;
  }

  dimension: user_split_test_name_Stamp_Mission_Tutorial{
    type: string
    sql: case when ${TABLE}.user_split_test_name like '%2510_StampMissionActive%' then (case when ${TABLE}.user_split_test_name like '%2510_StampMissionTutorialsActive%' then 'Tutorials Active'
               when ${TABLE}.user_split_test_name like '%2510_StampMissionTutorialsPassive%' then 'Tutorials Passive'
          end) end ;;
  }

  dimension: user_split_test_name_Level_Balance{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%2510_BalancedLevels%' then 'Balanced Levels'
               when ${TABLE}.user_split_test_name like '%2510_DefaultLevels%' then 'Default Levels'
          end ;;
  }

  dimension: user_split_test_name_Time_Balance{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%0811_TimeBalanced%' then 'Time Balanced Levels'
               when ${TABLE}.user_split_test_name like '%0811_OldLevels%' then 'Old Levels'
          end ;;
  }

  dimension: user_split_test_name_Real_Time_Balance{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%1311_TimeBalanced%' then 'Time Balanced Levels'
               when ${TABLE}.user_split_test_name like '%1311_OldLevels%' then 'Old Levels'
               when ${TABLE}.user_split_test_name like '%1311_Balanced%' then 'Balanced Levels'
          end ;;
  }

  dimension: user_split_test_name_Oz_Balance{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%2211_DefaultLevels%' then 'Default Levels'
               when ${TABLE}.user_split_test_name like '%2211_BalancedLevels%' then 'Balanced Levels'
          end ;;
  }

  dimension: user_split_test_name_Level_Coin{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%2211_DefaultCoin%' then 'Default Coin'
               when ${TABLE}.user_split_test_name like '%2211_NoCoin%' then 'No Coin'
          end ;;
  }

  dimension: user_split_test_name_Fortune_Forest{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%2211_ActiveFortune%' then 'Fortune Forest Active'
               when ${TABLE}.user_split_test_name like '%2211_PassiveFortune%' then 'Fortune Forest Passive'
          end ;;
  }

  dimension: user_split_test_name_Oz_Hakiki_Balance{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%2811_DefaultLevels%' then 'Default Levels'
               when ${TABLE}.user_split_test_name like '%2811_BalancedLevels%' then 'Balanced Levels'
          end ;;
  }

  dimension: user_split_test_name_Mixed_Balance{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%0612_DefaultLevels%' then 'Default Levels'
               when ${TABLE}.user_split_test_name like '%0612_NewStickers%' then 'New_Stickers'
               when ${TABLE}.user_split_test_name like '%0612_BalancedLevels%' then 'Balanced Levels'
          end ;;
  }

  dimension: user_split_test_name_Rack_Feedback{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%0612_RackFeedbackActive%' then 'Rack Feedback Active'
               when ${TABLE}.user_split_test_name like '%0612_RackFeedbackPassive%' then 'Rack Feedback Passive'
          end ;;
  }

  dimension: user_split_test_name_Live_Event_Calendar{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%0612_FortuneSingle%' then 'Fortune Single'
               when ${TABLE}.user_split_test_name like '%0612_FortuneMulti%' then 'Fortune Multi'
               when ${TABLE}.user_split_test_name like '%0612_CoinRushActive%' then 'Coin Rush Active'
               when ${TABLE}.user_split_test_name like '%0612_PassiveEvents%' then 'Passive Events'
          end ;;
  }

  dimension: user_split_test_name_New_Live_Event_Calendar{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%1312_FortuneSingle%' then 'Fortune Single'
               when ${TABLE}.user_split_test_name like '%1312_FortuneMulti%' then 'Fortune Multi'
          end ;;
  }

  dimension: user_split_test_name_Ekin_Balance{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%2012_Default%' then 'Default Levels'
               when ${TABLE}.user_split_test_name like '%2012_OldDefault%' then 'Old Default Levels'
               when ${TABLE}.user_split_test_name like '%2012_Balanced%' then 'Balanced Levels'
          end ;;
  }

  dimension: user_split_test_name_Pay_and_Proceed{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%2612_Default%' then 'Pay and Proceed Passive'
               when ${TABLE}.user_split_test_name like '%2612_PPActive%' then 'Pay and Proceed Active'
          end ;;
  }

  dimension: user_split_test_name_Streak_Path{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%0301_StreakPathActive%' then 'Streak Path Active'
               when ${TABLE}.user_split_test_name like '%0301_StreakPathPassive%' then 'Streak Path Passive'
          end ;;
  }

  dimension: user_split_test_name_Banner_IOS{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%3101BannerOff%' then 'Banner Off'
               when ${TABLE}.user_split_test_name like '%3101BannerTop%' then 'Banner Top'
               when ${TABLE}.user_split_test_name like '%3101BannerBottom%' then 'Banner Bottom'
          end ;;
  }

  dimension: user_split_test_name_IOS_Android_Balance{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%2201Default%' then 'Default'
               when ${TABLE}.user_split_test_name like '%2201Balanced%' then 'Balanced'
          end ;;
  }

  dimension: user_split_test_name_Melisa_Balance{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%1402Default%' then 'Default'
               when ${TABLE}.user_split_test_name like '%1402Balanced%' then 'Balanced'
          end ;;
  }

  dimension: user_split_test_name_Invite_Friend{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%1402InviteFriendsActive%' then 'Invite Friends Active'
               when ${TABLE}.user_split_test_name like '%1402InviteFriendsPassive%' then 'Invite Friends Passive'
          end ;;
  }

  dimension: user_split_test_name_Streak_Breaker{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%2802_SBPassive%' then 'Streak Breaker Passive'
               when ${TABLE}.user_split_test_name like '%2802_SBActive_5%' then 'Streak Breaker Active5'
               when ${TABLE}.user_split_test_name like '%2802_SBActive_8%' then 'Streak Breaker Active8'
         end ;;
  }

  dimension: user_split_test_name_Starter_Coin_01_Android{
    type: string
    sql:  ${TABLE}.user_split_test_name_Starter_Coin_01_Android ;;
  }

  dimension: user_split_test_name_Starter_Coin_01_IOS{
    type: string
    sql:  ${TABLE}.user_split_test_name_Starter_Coin_01_IOS ;;
  }

  dimension: user_split_test_name_Starter_Coin_02_IOS{
    type: string
    sql:  ${TABLE}.user_split_test_name_Starter_Coin_02_IOS ;;
  }

  dimension: user_split_test_name_Starter_Coin_03_IOS{
    type: string
    sql:  ${TABLE}.user_split_test_name_Starter_Coin_03_IOS ;;
  }

  dimension: user_split_test_name_Dynamic_Ease_Mode{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%0603_DynamicEaseMode_Default%' then 'Dynamic Ease Mode Default'
               when ${TABLE}.user_split_test_name like '%0603_DynamicEaseMode_Variant%' then 'Dynamic Ease Mode Variant'
          end ;;
  }

  dimension: user_split_test_name_Ad_Frequency{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%0603_AdFrequency_Default%' then 'Ad Frequency Default'
               when ${TABLE}.user_split_test_name like '%0603_AdFrequency_Variant%' then 'Ad Frequency Variant'
          end ;;
  }

  dimension: user_split_test_name_Blended_Easy_Balance{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%1103_BlendedEasyBalance_Default%' then 'Default'
               when ${TABLE}.user_split_test_name like '%1103_BlendedEasyBalance_Variant%' then 'Variant'
          end ;;
  }

  dimension: user_split_test_name_Element{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%1403_ElementDefault%' then 'Default'
               when ${TABLE}.user_split_test_name like '%1403_ElementVariant%' then 'Variant'
          end ;;
  }

  dimension: user_split_test_name_Daily_Reward{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%1403_DailyRewardsPassive%' then 'Passive'
               when ${TABLE}.user_split_test_name like '%1403_DailyRewardsActive%' then 'Active'
          end ;;
  }

  dimension: user_split_test_name_Offer_Frequency{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%1403_OfferFrequency_Default%' then 'Default'
               when ${TABLE}.user_split_test_name like '%1403_OfferFrequency_Variant%' then 'Variant'
          end ;;
  }

  dimension: user_split_test_name_Starter_Coin_02{
    type: string
    sql:  ${TABLE}.user_split_test_name_Starter_Coin_02 ;;
  }

  dimension: user_split_test_name_Starter_Coin_03{
    type: string
    sql:  ${TABLE}.user_split_test_name_Starter_Coin_03 ;;
  }

  dimension: user_split_test_name_Streak_Breaker_50_85{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%1703_StreakBreaker_50_5%' then 'Streak Breaker 50'
               when ${TABLE}.user_split_test_name like '%1703_StreakBreaker_85_5%' then 'Streak Breaker 85'
          end ;;
  }

  dimension: user_split_test_name_Streak_Breaker_50_85_v2{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%0505_StreakBreaker_50%' then 'Streak Breaker 50'
               when ${TABLE}.user_split_test_name like '%0505_StreakBreaker_85%' then 'Streak Breaker 85'
          end ;;
  }

  dimension: user_split_test_name_First500{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%2803_First500_Default%' then 'First 500 Default'
               when ${TABLE}.user_split_test_name like '%2803_First500_Variant%' then 'First 500 Variant'
          end ;;
  }

  dimension: user_split_test_name_WB_Gifts{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%2803_WBGifts_Passive%' then 'WBGifts Passive'
               when ${TABLE}.user_split_test_name like '%2803_WBGifts_Active%' then 'WBGifts Active'
          end ;;
  }

  dimension: user_split_test_name_Store_Cheap_Expensive{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%2803_Store_Default%' then 'Store Default'
               when ${TABLE}.user_split_test_name like '%2803_Store_Expensive%' then 'Store Expensive'
               when ${TABLE}.user_split_test_name like '%2803_Store_Cheap%' then 'Store Cheap'
          end ;;
  }

  dimension: user_split_test_name_Ads_Android{
    type: string
    sql:  case when ${TABLE}.user_split_test_name like '%1704_Ads_Passive%' then 'Ads Passive'
               when ${TABLE}.user_split_test_name like '%1704_Ads_Active%' then 'Ads Active'
          end ;;
  }

  dimension: user_test_routing_value {
    type: number
    sql: ${TABLE}.user_test_routing_value ;;
  }

  dimension: user_total_attempt_at_current_lvl {
    type: number
    sql: ${TABLE}.user_total_attempt_at_current_lvl ;;
  }

  dimension: user_total_payment {
    type: number
    sql: ${TABLE}.user_total_payment ;;
  }

  dimension: user_total_session_time {
    type: number
    sql: ${TABLE}.user_total_session_time ;;
  }

  dimension: network {
    type: string
    sql: ${TABLE}.network ;;
  }

  dimension: network_name {
    type: string
    sql: ${TABLE}.network_name ;;
  }

  dimension: creative {
    type: string
    sql: ${TABLE}.creative ;;
  }

  dimension: adgroup {
    type: string
    sql: ${TABLE}.adgroup ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
  }

  dimension: campaign2 {
    type: string
    sql: ${TABLE}.campaign2 ;;
  }

  dimension: google_search_keyword {
    type: string
    sql: ${TABLE}.google_search_keyword ;;
  }

  dimension: pivot_campaign_list {
    type: string
    sql: {% if ${campaign2}._is_filtered %} ${campaign} {% else %} ${campaign2} {% endif %} ;;
  }

  dimension: pivot_network_list {
    type: string
    sql: {% if ${network}._is_filtered %} ${network} {% else %} 'network' {% endif %};;
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

  measure: count {
    type: count
  }

  measure: avg_sessiontime {
    type: average
    sql: ${TABLE}.session_time / 60;;
  }

  measure: per1sessiontime {
    type: percentile
    percentile: 1
    sql: ${TABLE}.session_time / 60;;
  }

  measure: per5sessiontime {
    type: percentile
    percentile: 5
    sql: ${TABLE}.session_time / 60;;
  }

  measure: per10sessiontime {
    type: percentile
    percentile: 10
    sql: ${TABLE}.session_time / 60;;
  }

  measure: per25sessiontime {
    type: percentile
    percentile: 25
    sql: ${TABLE}.session_time / 60 ;;
  }

  measure: per50sessiontime {
    type: percentile
    percentile: 50
    sql: ${TABLE}.session_time / 60 ;;
  }

  measure: per75sessiontime {
    type: percentile
    percentile: 75
    sql: ${TABLE}.session_time / 60 ;;
  }

  measure: per90sessiontime {
    type: percentile
    percentile: 90
    sql: ${TABLE}.session_time / 60 ;;
  }

  measure: per95sessiontime {
    type: percentile
    percentile: 95
    sql: ${TABLE}.session_time / 60;;
  }

  measure: per99sessiontime {
    type: percentile
    percentile: 99
    sql: ${TABLE}.session_time / 60;;
  }

}
