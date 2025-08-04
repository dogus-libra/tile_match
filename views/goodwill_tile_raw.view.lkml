view: goodwill_tile_raw {
  sql_table_name: apps_flyer.goodwill_tile_raw ;;

  dimension: ad {
    type: string
    sql: ${TABLE}.ad ;;
  }
  dimension: ad_id {
    type: string
    sql: ${TABLE}.ad_id ;;
  }
  dimension: ad_personalization_enabled {
    type: string
    sql: ${TABLE}.ad_personalization_enabled ;;
  }
  dimension: ad_placement {
    type: string
    sql: ${TABLE}.ad_placement ;;
  }
  dimension: ad_revenue_ad_type {
    type: string
    sql: ${TABLE}.ad_revenue_ad_type ;;
  }
  dimension: ad_revenue_custom_parameters {
    type: string
    sql: ${TABLE}.ad_revenue_custom_parameters ;;
  }
  dimension: ad_type {
    type: string
    sql: ${TABLE}.ad_type ;;
  }
  dimension: ad_unit {
    type: string
    sql: ${TABLE}.ad_unit ;;
  }
  dimension: ad_user_data_enabled {
    type: string
    sql: ${TABLE}.ad_user_data_enabled ;;
  }
  dimension: adset {
    type: string
    sql: ${TABLE}.adset ;;
  }
  dimension: adset_id {
    type: string
    sql: ${TABLE}.adset_id ;;
  }
  dimension: advertising_id {
    type: string
    sql: ${TABLE}.advertising_id ;;
  }
  dimension: af_ad {
    type: string
    sql: ${TABLE}.af_ad ;;
  }
  dimension: af_ad_id {
    type: string
    sql: ${TABLE}.af_ad_id ;;
  }
  dimension: af_ad_type {
    type: string
    sql: ${TABLE}.af_ad_type ;;
  }
  dimension: af_adset {
    type: string
    sql: ${TABLE}.af_adset ;;
  }
  dimension: af_adset_id {
    type: string
    sql: ${TABLE}.af_adset_id ;;
  }
  dimension: af_attribution_lookback {
    type: string
    sql: ${TABLE}.af_attribution_lookback ;;
  }
  dimension: af_c_id {
    type: string
    sql: ${TABLE}.af_c_id ;;
  }
  dimension: af_channel {
    type: string
    sql: ${TABLE}.af_channel ;;
  }
  dimension: af_cost_currency {
    type: string
    sql: ${TABLE}.af_cost_currency ;;
  }
  dimension: af_cost_model {
    type: string
    sql: ${TABLE}.af_cost_model ;;
  }
  dimension: af_cost_value {
    type: string
    sql: ${TABLE}.af_cost_value ;;
  }
  dimension: af_keywords {
    type: string
    sql: ${TABLE}.af_keywords ;;
  }
  dimension: af_prt {
    type: string
    sql: ${TABLE}.af_prt ;;
  }
  dimension: af_reengagement_window {
    type: string
    sql: ${TABLE}.af_reengagement_window ;;
  }
  dimension: af_siteid {
    type: string
    sql: ${TABLE}.af_siteid ;;
  }
  dimension: af_sub1 {
    type: string
    sql: ${TABLE}.af_sub1 ;;
  }
  dimension: af_sub2 {
    type: string
    sql: ${TABLE}.af_sub2 ;;
  }
  dimension: af_sub3 {
    type: string
    sql: ${TABLE}.af_sub3 ;;
  }
  dimension: af_sub4 {
    type: string
    sql: ${TABLE}.af_sub4 ;;
  }
  dimension: af_sub5 {
    type: string
    sql: ${TABLE}.af_sub5 ;;
  }
  dimension: af_sub_siteid {
    type: string
    sql: ${TABLE}.af_sub_siteid ;;
  }
  dimension: af_web_id {
    type: string
    sql: ${TABLE}.af_web_id ;;
  }
  dimension: amazon_aid {
    type: string
    sql: ${TABLE}.amazon_aid ;;
  }
  dimension: android_id {
    type: string
    sql: ${TABLE}.android_id ;;
  }
  dimension: app_group_id {
    type: string
    sql: ${TABLE}.app_group_id ;;
  }
  dimension: app_id {
    type: string
    sql: ${TABLE}.app_id ;;
  }
  dimension: app_name {
    type: string
    sql: ${TABLE}.app_name ;;
  }
  dimension: app_store_ids {
    type: string
    sql: ${TABLE}.app_store_ids ;;
  }
  dimension: app_type {
    type: string
    sql: ${TABLE}.app_type ;;
  }
  dimension: app_version {
    type: string
    sql: ${TABLE}.app_version ;;
  }
  dimension: apps_flyer_id {
    type: string
    sql: ${TABLE}.apps_flyer_id ;;
  }
  dimension: appsflyer_id {
    type: string
    sql: ${TABLE}.appsflyer_id ;;
  }
  dimension: att {
    type: string
    sql: ${TABLE}.att ;;
  }
  dimension_group: attributed_touch {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.attributed_touch_time ;;
  }
  dimension: attributed_touch_type {
    type: string
    sql: ${TABLE}.attributed_touch_type ;;
  }
  dimension: attribution_lookback {
    type: string
    sql: ${TABLE}.attribution_lookback ;;
  }
  dimension: blocked_reason {
    type: string
    sql: ${TABLE}.blocked_reason ;;
  }
  dimension: blocked_reason_rule {
    type: string
    sql: ${TABLE}.blocked_reason_rule ;;
  }
  dimension: blocked_reason_value {
    type: string
    sql: ${TABLE}.blocked_reason_value ;;
  }
  dimension: blocked_sub_reason {
    type: string
    sql: ${TABLE}.blocked_sub_reason ;;
  }
  dimension: bundle_id {
    type: string
    sql: ${TABLE}.bundle_id ;;
  }
  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
  }
  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: campaign_type {
    type: string
    sql: ${TABLE}.campaign_type ;;
  }
  dimension: carrier {
    type: string
    sql: ${TABLE}.carrier ;;
  }
  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }
  dimension: contributor_1_af_prt {
    type: string
    sql: ${TABLE}.contributor_1_af_prt ;;
  }
  dimension: contributor_1_campaign {
    type: string
    sql: ${TABLE}.contributor_1_campaign ;;
  }
  dimension: contributor_1_engagement_type {
    type: string
    sql: ${TABLE}.contributor_1_engagement_type ;;
  }
  dimension: contributor_1_match_type {
    type: string
    sql: ${TABLE}.contributor_1_match_type ;;
  }
  dimension: contributor_1_media_source {
    type: string
    sql: ${TABLE}.contributor_1_media_source ;;
  }
  dimension: contributor_1_partner {
    type: string
    sql: ${TABLE}.contributor_1_partner ;;
  }
  dimension: contributor_1_touch_time {
    type: string
    sql: ${TABLE}.contributor_1_touch_time ;;
  }
  dimension: contributor_1_touch_type {
    type: string
    sql: ${TABLE}.contributor_1_touch_type ;;
  }
  dimension: contributor_2_af_prt {
    type: string
    sql: ${TABLE}.contributor_2_af_prt ;;
  }
  dimension: contributor_2_campaign {
    type: string
    sql: ${TABLE}.contributor_2_campaign ;;
  }
  dimension: contributor_2_engagement_type {
    type: string
    sql: ${TABLE}.contributor_2_engagement_type ;;
  }
  dimension: contributor_2_match_type {
    type: string
    sql: ${TABLE}.contributor_2_match_type ;;
  }
  dimension: contributor_2_media_source {
    type: string
    sql: ${TABLE}.contributor_2_media_source ;;
  }
  dimension: contributor_2_partner {
    type: string
    sql: ${TABLE}.contributor_2_partner ;;
  }
  dimension: contributor_2_touch_time {
    type: string
    sql: ${TABLE}.contributor_2_touch_time ;;
  }
  dimension: contributor_2_touch_type {
    type: string
    sql: ${TABLE}.contributor_2_touch_type ;;
  }
  dimension: contributor_3_af_prt {
    type: string
    sql: ${TABLE}.contributor_3_af_prt ;;
  }
  dimension: contributor_3_campaign {
    type: string
    sql: ${TABLE}.contributor_3_campaign ;;
  }
  dimension: contributor_3_engagement_type {
    type: string
    sql: ${TABLE}.contributor_3_engagement_type ;;
  }
  dimension: contributor_3_match_type {
    type: string
    sql: ${TABLE}.contributor_3_match_type ;;
  }
  dimension: contributor_3_media_source {
    type: string
    sql: ${TABLE}.contributor_3_media_source ;;
  }
  dimension: contributor_3_partner {
    type: string
    sql: ${TABLE}.contributor_3_partner ;;
  }
  dimension: contributor_3_touch_time {
    type: string
    sql: ${TABLE}.contributor_3_touch_time ;;
  }
  dimension: contributor_3_touch_type {
    type: string
    sql: ${TABLE}.contributor_3_touch_type ;;
  }
  dimension: conversion_type {
    type: string
    sql: ${TABLE}.conversion_type ;;
  }
  dimension: cost_currency {
    type: string
    sql: ${TABLE}.cost_currency ;;
  }
  dimension: cost_model {
    type: string
    sql: ${TABLE}.cost_model ;;
  }
  dimension: cost_value {
    type: string
    sql: ${TABLE}.cost_value ;;
  }
  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
  }
  dimension: country_tier {
    type: string
    sql: case when ${country_code} in ('AU','AT','BE','BN','CA','KY','DK','FI','FR','DE','GL','HK','IS','IE','IM','IL','LI','LU','NL','NZ','NO','QA','SG','SE','CH','AE','GB','US','ES','IT','JP','KR','SA')
              then 'Tier 1'
              when ${country_code} in ('AD','AG','AR','AW','AZ','BS','BH','BB','BY','BA','BW','BR','IO','BG','BQ','CL','CN','CK','CR','HR','CU','CW','CY','CZ','DM','DO','EE','GF','PF','GA','GE','GR','GD','GP','GU','GG','GY','HU','IR','JE','KZ','KW','LV','LT','MO','MY','MV','MT','MQ','MU','YT','MX','ME','NR','NC','MK','OM','PA','PE','PL','PT','PR','RE','RO','RU','ST','RS','SC','SX','SK','SI','ZA','BL','KN','LC','PM','VC','TW','TH','TR','TM','VI','UY')
              then 'Tier 2'
              when ${country_code} in ('AF','AL','DZ','AO','AM','BD','BZ','BJ','BT','BO','BF','BI','KH','CM','CV','CF','TD','CO','CG','CD','CI','DJ','EC','EG','SV','SZ','ET','FJ','GM','GH','GT','GN','HT','HN','IN','ID','IQ','JM','JO','KE','XK','KG','LA','LB','LR','LY','MG','MW','ML','MR','MD','MN','MA','MZ','MM','NA','NP','NI','NG','PK','PS','PG','PY','PH','RW','SN','SL','SB','SO','SS','LK','SD','SR','SY','TJ','TZ','TL','TG','TT','TN','UG','UA','UZ','VU','VE','VN','EH','YE','ZM','ZW')
              then 'Tier 3'
              else ${country_code} end;;
  }
  dimension: custom_data {
    type: string
    sql: ${TABLE}.custom_data ;;
  }
  dimension: custom_dimension {
    type: string
    sql: ${TABLE}.custom_dimension ;;
  }
  dimension: customer_user_id {
    type: string
    sql: ${TABLE}.customer_user_id ;;
  }
  dimension: deeplink_url {
    type: string
    sql: ${TABLE}.deeplink_url ;;
  }
  dimension: detection_date {
    type: string
    sql: ${TABLE}.detection_date ;;
  }
  dimension: device_category {
    type: string
    sql: ${TABLE}.device_category ;;
  }
  dimension: device_download_time {
    type: string
    sql: ${TABLE}.device_download_time ;;
  }
  dimension: device_id_type {
    type: string
    sql: ${TABLE}.device_id_type ;;
  }
  dimension: device_model {
    type: string
    sql: ${TABLE}.device_model ;;
  }
  dimension: device_type {
    type: string
    sql: ${TABLE}.device_type ;;
  }
  dimension: dma {
    type: string
    sql: ${TABLE}.dma ;;
  }
  dimension: engagement_type {
    type: string
    sql: ${TABLE}.engagement_type ;;
  }
  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
  }
  dimension: event_revenue {
    type: number
    sql: ${TABLE}.event_revenue ;;
  }
  dimension: event_revenue_currency {
    type: string
    sql: ${TABLE}.event_revenue_currency ;;
  }
  dimension: event_revenue_usd {
    type: number
    sql: ${TABLE}.event_revenue_usd ;;
  }

  dimension: event_revenue_usd_round {
    type: number
    sql: ROUND(${TABLE}.event_revenue_usd, 1) ;;
  }

  dimension: event_source {
    type: string
    sql: ${TABLE}.event_source ;;
  }
  dimension_group: event {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.event_time ;;
  }
  dimension: event_url {
    type: string
    sql: ${TABLE}.event_url ;;
  }
  dimension: event_value {
    type: string
    sql: ${TABLE}.event_value ;;
  }

  dimension: package {
    type: string
    sql:  case when ${TABLE}.event_name = 'af_purchase' then (split_part(split_part(${TABLE}.event_value, 'goodwilltiles.', 2), '.', 1)) end  ;;
  }

  dimension: offer_id {
    type: string
    sql:  case when position('Offer' in ${TABLE}.event_value) > 0 THEN split_part(split_part(${TABLE}.event_value, 'Offer_', 2), '\"', 1) else null end ;;
  }

  dimension: receipt_package_price {
    type: string
    sql: case when ${TABLE}.event_name = 'af_purchase' then replace((split_part(split_part(${TABLE}.event_value, '"af_revenue":"', 2), '"', 1)),',','.') end  ;;
  }

  dimension: fraud_reason {
    type: string
    sql: ${TABLE}.fraud_reason ;;
  }
  dimension: fraud_sub_reason {
    type: string
    sql: ${TABLE}.fraud_sub_reason ;;
  }
  dimension: gdpr_applies {
    type: string
    sql: ${TABLE}.gdpr_applies ;;
  }
  dimension: gp_broadcast_referrer {
    type: string
    sql: ${TABLE}.gp_broadcast_referrer ;;
  }
  dimension: gp_click_time {
    type: string
    sql: ${TABLE}.gp_click_time ;;
  }
  dimension: gp_install_begin {
    type: string
    sql: ${TABLE}.gp_install_begin ;;
  }
  dimension: gp_referrer {
    type: string
    sql: ${TABLE}.gp_referrer ;;
  }
  dimension: http_referrer {
    type: string
    sql: ${TABLE}.http_referrer ;;
  }
  dimension: idfa {
    type: string
    sql: ${TABLE}.idfa ;;
  }
  dimension: idfv {
    type: string
    sql: ${TABLE}.idfv ;;
  }
  dimension: imei {
    type: string
    sql: ${TABLE}.imei ;;
  }
  dimension: impressions {
    type: string
    sql: ${TABLE}.impressions ;;
  }
  dimension: install_app_store {
    type: string
    sql: ${TABLE}.install_app_store ;;
  }
  dimension_group: install {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.install_time ;;
  }
  dimension: install_day_of_user {
    type: number
    sql: FLOOR(DATEDIFF(hour,${TABLE}.install_time,${TABLE}.event_time)/24) ;;
  }
  dimension: ip {
    type: string
    sql: ${TABLE}.ip ;;
  }
  dimension: is_lat {
    type: string
    sql: ${TABLE}.is_lat ;;
  }
  dimension: is_organic {
    type: string
    sql: ${TABLE}.is_organic ;;
  }
  dimension: is_primary_attribution {
    type: string
    sql: ${TABLE}.is_primary_attribution ;;
  }
  dimension: is_receipt_validated {
    type: string
    sql: ${TABLE}.is_receipt_validated ;;
  }
  dimension: is_retargeting {
    type: string
    sql: ${TABLE}.is_retargeting ;;
  }
  dimension: keyword_id {
    type: string
    sql: ${TABLE}.keyword_id ;;
  }
  dimension: keyword_match_type {
    type: string
    sql: ${TABLE}.keyword_match_type ;;
  }
  dimension: keywords {
    type: string
    sql: ${TABLE}.keywords ;;
  }
  dimension: language {
    type: string
    sql: ${TABLE}.language ;;
  }
  dimension: match_type {
    type: string
    sql: ${TABLE}.match_type ;;
  }
  dimension: media_channel {
    type: string
    sql: ${TABLE}.media_channel ;;
  }
  dimension: media_source {
    type: string
    sql: ${TABLE}.media_source ;;
  }
  dimension: media_type {
    type: string
    sql: ${TABLE}.media_type ;;
  }
  dimension: mediation_network {
    type: string
    sql: ${TABLE}.mediation_network ;;
  }
  dimension: monetization_network {
    type: string
    sql: ${TABLE}.monetization_network ;;
  }
  dimension: network_name {
    type: string
    sql:
              (case
                  when ${TABLE}.media_source in ('Facebook Ads','restricted') then 'facebook'
                  when (${TABLE}.media_source is null or ${TABLE}.media_source in ('Null','organic')) then 'Organic'
                  when ${TABLE}.media_source='applovin_int' then 'applovin'
                  when ${TABLE}.media_source='adjoe_int' then 'adjoe'
                else ${TABLE}.media_source end) ;;
  }

  dimension: network_account_id {
    type: string
    sql: ${TABLE}.network_account_id ;;
  }
  dimension: oaid {
    type: string
    sql: ${TABLE}.oaid ;;
  }
  dimension: operator {
    type: string
    sql: ${TABLE}.operator ;;
  }
  dimension: original_url {
    type: string
    sql: ${TABLE}.original_url ;;
  }
  dimension: os_version {
    type: string
    sql: ${TABLE}.os_version ;;
  }
  dimension: partner {
    type: string
    sql: ${TABLE}.partner ;;
  }
  dimension: pid {
    type: string
    sql: ${TABLE}.pid ;;
  }
  dimension: placement {
    type: string
    sql: ${TABLE}.placement ;;
  }
  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }
  dimension: postal_code {
    type: string
    sql: ${TABLE}.postal_code ;;
  }
  dimension: raw_consent_data {
    type: string
    sql: ${TABLE}.raw_consent_data ;;
  }
  dimension: reengagement_window {
    type: string
    sql: ${TABLE}.reengagement_window ;;
  }
  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }
  dimension: rejected_reason {
    type: string
    sql: ${TABLE}.rejected_reason ;;
  }
  dimension: retargeting_conversion_type {
    type: string
    sql: ${TABLE}.retargeting_conversion_type ;;
  }
  dimension: sdk_version {
    type: string
    sql: ${TABLE}.sdk_version ;;
  }
  dimension: segment {
    type: string
    sql: ${TABLE}.segment ;;
  }
  dimension: site_id {
    type: string
    sql: ${TABLE}.site_id ;;
  }
  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
  dimension: store_product_page {
    type: string
    sql: ${TABLE}.store_product_page ;;
  }
  dimension: sub_param_1 {
    type: string
    sql: ${TABLE}.sub_param_1 ;;
  }
  dimension: sub_param_2 {
    type: string
    sql: ${TABLE}.sub_param_2 ;;
  }
  dimension: sub_param_3 {
    type: string
    sql: ${TABLE}.sub_param_3 ;;
  }
  dimension: sub_param_4 {
    type: string
    sql: ${TABLE}.sub_param_4 ;;
  }
  dimension: sub_param_5 {
    type: string
    sql: ${TABLE}.sub_param_5 ;;
  }
  dimension: sub_site_id {
    type: string
    sql: ${TABLE}.sub_site_id ;;
  }
  dimension: user_agent {
    type: string
    sql: ${TABLE}.user_agent ;;
  }
  dimension: utm_campaign {
    type: string
    sql: ${TABLE}.utm_campaign ;;
  }
  dimension: utm_content {
    type: string
    sql: ${TABLE}.utm_content ;;
  }
  dimension: utm_id {
    type: string
    sql: ${TABLE}.utm_id ;;
  }
  dimension: utm_medium {
    type: string
    sql: ${TABLE}.utm_medium ;;
  }
  dimension: utm_source {
    type: string
    sql: ${TABLE}.utm_source ;;
  }
  dimension: utm_term {
    type: string
    sql: ${TABLE}.utm_term ;;
  }
  dimension: validation_reason_value {
    type: string
    sql: ${TABLE}.validation_reason_value ;;
  }
  dimension: web_event_type {
    type: string
    sql: ${TABLE}.web_event_type ;;
  }
  dimension: wifi {
    type: string
    sql: ${TABLE}.wifi ;;
  }

  dimension: purchase_grand_level {
    type: number
    description: "Satın alma sırasındaki Grand Mode seviyesi."
    sql: JSON_EXTRACT_PATH_TEXT(${TABLE}.event_value, 'GrandModeLevel') ;;
  }

  dimension: purchase_original_level {
    type: number
    description: "Satın alma sırasındaki Original Level."
    sql: JSON_EXTRACT_PATH_TEXT(${TABLE}.event_value, 'OriginalLevel') ;;
  }

  measure: count {
    type: count
    drill_fields: [app_name, event_name]
  }
}
