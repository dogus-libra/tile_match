# The name of this view in Looker is "Tile Match Raw"
view: tile_match_raw {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: adjust.tile_match_raw ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Activity Kind" in Explore.

  dimension: activity_kind {
    type: string
    sql: ${TABLE}.activity_kind ;;
  }

  dimension: ad_impressions_count {
    type: number
    sql: ${TABLE}.ad_impressions_count ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_ad_impressions_count {
    type: sum
    sql: ${ad_impressions_count} ;;  }
  measure: average_ad_impressions_count {
    type: average
    sql: ${ad_impressions_count} ;;  }

  dimension: ad_mediation_platform {
    type: string
    sql: ${TABLE}.ad_mediation_platform ;;
  }

  dimension: ad_revenue_network {
    type: string
    sql: ${TABLE}.ad_revenue_network ;;
  }

  dimension: ad_revenue_payload {
    type: string
    sql: ${TABLE}.ad_revenue_payload ;;
  }

  dimension: ad_revenue_placement {
    type: string
    sql: ${TABLE}.ad_revenue_placement ;;
  }

  dimension: ad_revenue_unit {
    type: string
    sql: ${TABLE}.ad_revenue_unit ;;
  }

  dimension: adgroup_name {
    type: string
    sql: ${TABLE}.adgroup_name ;;
  }

  dimension: adid {
    type: string
    sql: ${TABLE}.adid ;;
  }

  dimension: android_id {
    type: string
    sql: ${TABLE}.android_id ;;
  }

  dimension: android_id_md5 {
    type: string
    sql: ${TABLE}.android_id_md5 ;;
  }

  dimension: api_level {
    type: string
    sql: ${TABLE}.api_level ;;
  }

  dimension: app_id {
    type: string
    sql: ${TABLE}.app_id ;;
  }

  dimension: app_name {
    type: string
    sql: ${TABLE}.app_name ;;
  }

  dimension: app_name_dashboard {
    type: string
    sql: ${TABLE}.app_name_dashboard ;;
  }

  dimension: app_token {
    type: string
    sql: ${TABLE}.app_token ;;
  }

  dimension: app_version {
    type: string
    sql: ${TABLE}.app_version ;;
  }

  dimension: app_version_raw {
    type: string
    sql: ${TABLE}.app_version_raw ;;
  }

  dimension: app_version_short {
    type: string
    sql: ${TABLE}.app_version_short ;;
  }

  dimension: att_status {
    type: string
    sql: ${TABLE}.att_status ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: attribution_expires {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.attribution_expires_at ;;
  }

  dimension: attribution_ttl {
    type: number
    sql: ${TABLE}.attribution_ttl ;;
  }

  dimension_group: attribution_updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.attribution_updated_at ;;
  }

  dimension: callback_ttl {
    type: number
    sql: ${TABLE}.callback_ttl ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: click_attribution_window {
    type: number
    sql: ${TABLE}.click_attribution_window ;;
  }

  dimension: click_referer {
    type: string
    sql: ${TABLE}.click_referer ;;
  }

  dimension_group: click {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.click_time ;;
  }

  dimension_group: click_time_hour {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.click_time_hour ;;
  }

  dimension: connection_type {
    type: string
    sql: ${TABLE}.connection_type ;;
  }

  dimension: conversion_duration {
    type: number
    sql: ${TABLE}.conversion_duration ;;
  }

  dimension: cost_amount {
    type: number
    sql: ${TABLE}.cost_amount ;;
  }

  dimension: cost_currency {
    type: string
    sql: ${TABLE}.cost_currency ;;
  }

  dimension: cost_id_md5 {
    type: string
    sql: ${TABLE}.cost_id_md5 ;;
  }

  dimension: cost_type {
    type: string
    sql: ${TABLE}.cost_type ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: country_tier {
    type: string
    sql: case when ${country} in ('AU','AT','BE','BN','CA','KY','DK','FI','FR','DE','GL','HK','IS','IE','IM','IL','LI','LU','NL','NZ','NO','QA','SG','SE','CH','AE','GB','US','ES','IT','JP','KR','SA', 'UK')
              then 'Tier 1'
              when ${country} in ('AD','AG','AR','AW','AZ','BS','BH','BB','BY','BA','BW','BR','IO','BG','BQ','CL','CN','CK','CR','HR','CU','CW','CY','CZ','DM','DO','EE','GF','PF','GA','GE','GR','GD','GP','GU','GG','GY','HU','IR','JE','KZ','KW','LV','LT','MO','MY','MV','MT','MQ','MU','YT','MX','ME','NR','NC','MK','OM','PA','PE','PL','PT','PR','RE','RO','RU','ST','RS','SC','SX','SK','SI','ZA','BL','KN','LC','PM','VC','TW','TH','TR','TM','VI','UY')
              then 'Tier 2'
              when ${country} in ('AF','AL','DZ','AO','AM','BD','BZ','BJ','BT','BO','BF','BI','KH','CM','CV','CF','TD','CO','CG','CD','CI','DJ','EC','EG','SV','SZ','ET','FJ','GM','GH','GT','GN','HT','HN','IN','ID','IQ','JM','JO','KE','XK','KG','LA','LB','LR','LY','MG','MW','ML','MR','MD','MN','MA','MZ','MM','NA','NP','NI','NG','PK','PS','PG','PY','PH','RW','SN','SL','SB','SO','SS','LK','SD','SR','SY','TJ','TZ','TL','TG','TT','TN','UG','UA','UZ','VU','VE','VN','EH','YE','ZM','ZW')
              then 'Tier 3'
              else ${country} end;;
  }

  dimension: country_subdivision {
    type: string
    sql: ${TABLE}.country_subdivision ;;
  }

  dimension: cpu_type {
    type: string
    sql: ${TABLE}.cpu_type ;;
  }

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }

  dimension_group: created_at_hour {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at_hour ;;
  }

  dimension: creative_name {
    type: string
    sql: ${TABLE}.creative_name ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: dbm_campaign_type {
    type: string
    sql: ${TABLE}.dbm_campaign_type ;;
  }

  dimension: dbm_creative_id {
    type: string
    sql: ${TABLE}.dbm_creative_id ;;
  }

  dimension: dbm_exchange_id {
    type: number
    sql: ${TABLE}.dbm_exchange_id ;;
  }

  dimension: dbm_external_customer_id {
    type: string
    sql: ${TABLE}.dbm_external_customer_id ;;
  }

  dimension: dbm_insertion_order_id {
    type: string
    sql: ${TABLE}.dbm_insertion_order_id ;;
  }

  dimension: dbm_line_item_id {
    type: string
    sql: ${TABLE}.dbm_line_item_id ;;
  }

  dimension: dbm_line_item_name {
    type: string
    sql: ${TABLE}.dbm_line_item_name ;;
  }

  dimension: dcm_campaign_type {
    type: string
    sql: ${TABLE}.dcm_campaign_type ;;
  }

  dimension: dcm_creative_id {
    type: string
    sql: ${TABLE}.dcm_creative_id ;;
  }

  dimension: dcm_external_customer_id {
    type: string
    sql: ${TABLE}.dcm_external_customer_id ;;
  }

  dimension: dcm_placement_id {
    type: string
    sql: ${TABLE}.dcm_placement_id ;;
  }

  dimension: dcm_placement_name {
    type: string
    sql: ${TABLE}.dcm_placement_name ;;
  }

  dimension: dcm_site_id {
    type: string
    sql: ${TABLE}.dcm_site_id ;;
  }

  dimension: dcp_xxx {
    type: string
    sql: ${TABLE}.dcp_xxx ;;
  }

  dimension: deeplink {
    type: string
    sql: ${TABLE}.deeplink ;;
  }

  dimension: device_atlas_id {
    type: number
    sql: ${TABLE}.device_atlas_id ;;
  }

  dimension: device_manufacturer {
    type: string
    sql: ${TABLE}.device_manufacturer ;;
  }

  dimension: device_name {
    type: string
    sql: ${TABLE}.device_name ;;
  }

  dimension: device_type {
    type: string
    sql: ${TABLE}.device_type ;;
  }

  dimension_group: engagement {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.engagement_time ;;
  }

  dimension_group: engagement_time_hour {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.engagement_time_hour ;;
  }

  dimension: environment {
    type: string
    sql: ${TABLE}.environment ;;
  }

  dimension: event {
    type: string
    sql: ${TABLE}.event ;;
  }

  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
  }

  dimension: external_device_id_md5 {
    type: string
    sql: ${TABLE}.external_device_id_md5 ;;
  }

  dimension: fb_install_referrer {
    type: string
    sql: ${TABLE}.fb_install_referrer ;;
  }

  dimension: fb_install_referrer_account_id {
    type: string
    sql: ${TABLE}.fb_install_referrer_account_id ;;
  }

  dimension: fb_install_referrer_ad_id {
    type: string
    sql: ${TABLE}.fb_install_referrer_ad_id ;;
  }

  dimension: fb_install_referrer_ad_objective_name {
    type: string
    sql: ${TABLE}.fb_install_referrer_ad_objective_name ;;
  }

  dimension: fb_install_referrer_adgroup_id {
    type: string
    sql: ${TABLE}.fb_install_referrer_adgroup_id ;;
  }

  dimension: fb_install_referrer_adgroup_name {
    type: string
    sql: ${TABLE}.fb_install_referrer_adgroup_name ;;
  }

  dimension: fb_install_referrer_campaign_group_id {
    type: string
    sql: ${TABLE}.fb_install_referrer_campaign_group_id ;;
  }

  dimension: fb_install_referrer_campaign_group_name {
    type: string
    sql: ${TABLE}.fb_install_referrer_campaign_group_name ;;
  }

  dimension: fb_install_referrer_campaign_id {
    type: string
    sql: ${TABLE}.fb_install_referrer_campaign_id ;;
  }

  dimension: fb_install_referrer_campaign_name {
    type: string
    sql: ${TABLE}.fb_install_referrer_campaign_name ;;
  }

  dimension: fb_install_referrer_publisher_platform {
    type: string
    sql: ${TABLE}.fb_install_referrer_publisher_platform ;;
  }

  dimension: fire_adid {
    type: string
    sql: ${TABLE}.fire_adid ;;
  }

  dimension: first_tracker {
    type: string
    sql: ${TABLE}.first_tracker ;;
  }

  dimension: first_tracker_name {
    type: string
    sql: ${TABLE}.first_tracker_name ;;
  }

  dimension: gclid {
    type: string
    sql: ${TABLE}.gclid ;;
  }

  dimension: gmp_product_type {
    type: string
    sql: ${TABLE}.gmp_product_type ;;
  }

  dimension: google_ads_ad_type {
    type: string
    sql: ${TABLE}.google_ads_ad_type ;;
  }

  dimension: google_ads_adgroup_id {
    type: number
    sql: ${TABLE}.google_ads_adgroup_id ;;
  }

  dimension: google_ads_adgroup_name {
    type: string
    sql: ${TABLE}.google_ads_adgroup_name ;;
  }

  dimension: google_ads_campaign_id {
    type: number
    sql: ${TABLE}.google_ads_campaign_id ;;
  }

  dimension: google_ads_campaign_name {
    type: string
    sql: ${TABLE}.google_ads_campaign_name ;;
  }

  dimension: google_ads_campaign_type {
    type: string
    sql: ${TABLE}.google_ads_campaign_type ;;
  }

  dimension: google_ads_creative_id {
    type: number
    sql: ${TABLE}.google_ads_creative_id ;;
  }

  dimension: google_ads_external_customer_id {
    type: number
    sql: ${TABLE}.google_ads_external_customer_id ;;
  }

  dimension: google_ads_keyword {
    type: string
    sql: ${TABLE}.google_ads_keyword ;;
  }

  dimension: google_ads_matchtype {
    type: string
    sql: ${TABLE}.google_ads_matchtype ;;
  }

  dimension: google_ads_network_subtype {
    type: string
    sql: ${TABLE}.google_ads_network_subtype ;;
  }

  dimension: google_ads_network_type {
    type: string
    sql: ${TABLE}.google_ads_network_type ;;
  }

  dimension: google_ads_placement {
    type: string
    sql: ${TABLE}.google_ads_placement ;;
  }

  dimension: google_ads_video_id {
    type: string
    sql: ${TABLE}.google_ads_video_id ;;
  }

  dimension: gps_adid {
    type: string
    sql: ${TABLE}.gps_adid ;;
  }

  dimension: gps_adid_md5 {
    type: string
    sql: ${TABLE}.gps_adid_md5 ;;
  }

  dimension: hardware_name {
    type: string
    sql: ${TABLE}.hardware_name ;;
  }

  dimension: iad_ad_id {
    type: number
    sql: ${TABLE}.iad_ad_id ;;
  }

  dimension: iad_conversion_type {
    type: string
    sql: ${TABLE}.iad_conversion_type ;;
  }

  dimension: iad_creative_set_id {
    type: number
    sql: ${TABLE}.iad_creative_set_id ;;
  }

  dimension: iad_creative_set_name {
    type: string
    sql: ${TABLE}.iad_creative_set_name ;;
  }

  dimension: iad_keyword_matchtype {
    type: string
    sql: ${TABLE}.iad_keyword_matchtype ;;
  }

  dimension: idfa {
    type: string
    sql: ${TABLE}.idfa ;;
  }

  dimension: idfa_md5 {
    type: string
    sql: ${TABLE}.idfa_md5 ;;
  }

  dimension: idfa_md5_hex {
    type: string
    sql: ${TABLE}.idfa_md5_hex ;;
  }

  dimension: idfa_or_android_id {
    type: string
    sql: ${TABLE}.idfa_or_android_id ;;
  }

  dimension: idfa_or_gps_adid {
    type: string
    sql: ${TABLE}.idfa_or_gps_adid ;;
  }

  dimension: idfa_or_gps_adid_or_fire_adid {
    type: string
    sql: ${TABLE}.idfa_or_gps_adid_or_fire_adid ;;
  }

  dimension: idfa_upper {
    type: string
    sql: ${TABLE}.idfa_upper ;;
  }

  dimension: idfv {
    type: string
    sql: ${TABLE}.idfv ;;
  }

  dimension: impression_attribution_window {
    type: string
    sql: ${TABLE}.impression_attribution_window ;;
  }

  dimension: impression_based {
    type: yesno
    sql: ${TABLE}.impression_based ;;
  }

  dimension_group: impression {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.impression_time ;;
  }

  dimension_group: impression_time_hour {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.impression_time_hour ;;
  }

  dimension: inactive_user_definition {
    type: number
    sql: ${TABLE}.inactive_user_definition ;;
  }

  dimension_group: install_begin {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.install_begin_time ;;
  }

  dimension_group: install_finish {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.install_finish_time ;;
  }

  dimension_group: installed_at {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.installed_at ;;
  }

  dimension_group: installed_at_hour {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.installed_at_hour ;;
  }

  dimension: ip_address {
    type: string
    sql: ${TABLE}.ip_address ;;
  }

  dimension: is_deeplink_click {
    type: yesno
    sql: ${TABLE}.is_deeplink_click ;;
  }

  dimension: is_google_play_store_downloaded {
    type: yesno
    sql: ${TABLE}.is_google_play_store_downloaded ;;
  }

  dimension: is_imported {
    type: yesno
    sql: ${TABLE}.is_imported ;;
  }

  dimension: is_organic {
    type: yesno
    sql: ${TABLE}.is_organic ;;
  }

  dimension: is_reattributed {
    type: yesno
    sql: ${TABLE}.is_reattributed ;;
  }

  dimension: is_s2s {
    type: yesno
    sql: ${TABLE}.is_s2s ;;
  }

  dimension: is_s2s_engagement_based {
    type: yesno
    sql: ${TABLE}.is_s2s_engagement_based ;;
  }

  dimension: isp {
    type: string
    sql: ${TABLE}.isp ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.language ;;
  }

  dimension_group: last_fallback {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.last_fallback_time ;;
  }

  dimension_group: last_session {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.last_session_time ;;
  }

  dimension: last_time_spent {
    type: string
    sql: ${TABLE}.last_time_spent ;;
  }

  dimension: last_tracker {
    type: string
    sql: ${TABLE}.last_tracker ;;
  }

  dimension: last_tracker_name {
    type: string
    sql: ${TABLE}.last_tracker_name ;;
  }

  dimension: lifetime_session_count {
    type: number
    sql: ${TABLE}.lifetime_session_count ;;
  }

  dimension: mac_md5 {
    type: string
    sql: ${TABLE}.mac_md5 ;;
  }

  dimension: mac_sha1 {
    type: string
    sql: ${TABLE}.mac_sha1 ;;
  }

  dimension: match_type {
    type: string
    sql: ${TABLE}.match_type ;;
  }

  dimension: mcc {
    type: string
    sql: ${TABLE}.mcc ;;
  }

  dimension: mnc {
    type: string
    sql: ${TABLE}.mnc ;;
  }

  dimension: network_name {
    type: string
    sql: ${TABLE}.network_name ;;
  }

  dimension: network_type {
    type: string
    sql: ${TABLE}.network_type ;;
  }

  dimension: nonce {
    type: string
    sql: ${TABLE}.nonce ;;
  }

  dimension: oaid {
    type: string
    sql: ${TABLE}.oaid ;;
  }

  dimension: oaid_md5 {
    type: string
    sql: ${TABLE}.oaid_md5 ;;
  }

  dimension: os_name {
    type: string
    sql: ${TABLE}.os_name ;;
  }

  dimension: os_version {
    type: string
    sql: ${TABLE}.os_version ;;
  }

  dimension: outdated_tracker {
    type: string
    sql: ${TABLE}.outdated_tracker ;;
  }

  dimension: partner {
    type: string
    sql: ${TABLE}.partner ;;
  }

  dimension: partner_parameters {
    type: string
    sql: ${TABLE}.partner_parameters ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postal_code ;;
  }

  dimension: probmatching_attribution_window {
    type: number
    sql: ${TABLE}.probmatching_attribution_window ;;
  }

  dimension: proxy_ip_address {
    type: string
    sql: ${TABLE}.proxy_ip_address ;;
  }

  dimension: publisher_parameters {
    type: string
    sql: ${TABLE}.publisher_parameters ;;
  }

  dimension: push_token {
    type: string
    sql: ${TABLE}.push_token ;;
  }

  dimension: random {
    type: string
    sql: ${TABLE}.random ;;
  }

  dimension: random_user_id {
    type: string
    sql: ${TABLE}.random_user_id ;;
  }

  dimension_group: reattributed {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.reattributed_at ;;
  }

  dimension_group: reattributed_at_hour {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.reattributed_at_hour ;;
  }

  dimension: reattribution_attribution_ttl {
    type: number
    sql: ${TABLE}.reattribution_attribution_ttl ;;
  }

  dimension: reattribution_attribution_window {
    type: number
    sql: ${TABLE}.reattribution_attribution_window ;;
  }

  dimension: reattribution_fallback_type {
    type: string
    sql: ${TABLE}.reattribution_fallback_type ;;
  }

  dimension_group: received {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.received_at ;;
  }

  dimension_group: referral {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.referral_time ;;
  }

  dimension: referrer {
    type: string
    sql: ${TABLE}.referrer ;;
  }

  dimension: reftag {
    type: string
    sql: ${TABLE}.reftag ;;
  }

  dimension: reftags {
    type: string
    sql: ${TABLE}.reftags ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension_group: reinstalled {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.reinstalled_at ;;
  }

  dimension: rejection_reason {
    type: string
    sql: ${TABLE}.rejection_reason ;;
  }

  dimension: reporting_cost {
    type: number
    sql: ${TABLE}.reporting_cost ;;
  }

  dimension: reporting_currency {
    type: string
    sql: ${TABLE}.reporting_currency ;;
  }

  dimension: reporting_revenue {
    type: number
    sql: ${TABLE}.reporting_revenue ;;
  }

  dimension: reporting_revenue_max {
    type: number
    sql: ${TABLE}.reporting_revenue_max ;;
  }

  dimension: reporting_revenue_min {
    type: number
    sql: ${TABLE}.reporting_revenue_min ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}.revenue ;;
  }

  dimension: revenue_cny {
    type: number
    sql: ${TABLE}.revenue_cny ;;
  }

  dimension: revenue_cny_cents {
    type: number
    sql: ${TABLE}.revenue_cny_cents ;;
  }

  dimension: revenue_float {
    type: number
    sql: ${TABLE}.revenue_float ;;
  }

  dimension: revenue_usd {
    type: number
    sql: ${TABLE}.revenue_usd ;;
  }

  dimension: revenue_usd_cents {
    type: number
    sql: ${TABLE}.revenue_usd_cents ;;
  }

  dimension: san_engagement_times {
    type: string
    sql: ${TABLE}.san_engagement_times ;;
  }

  dimension: sdk_version {
    type: string
    sql: ${TABLE}.sdk_version ;;
  }

  dimension: search_term {
    type: string
    sql: ${TABLE}.search_term ;;
  }

  dimension: secret_id {
    type: string
    sql: ${TABLE}.secret_id ;;
  }

  dimension: session_count {
    type: number
    sql: ${TABLE}.session_count ;;
  }

  dimension: sk_app_id {
    type: number
    sql: ${TABLE}.sk_app_id ;;
  }

  dimension: sk_attribution_signature {
    type: string
    sql: ${TABLE}.sk_attribution_signature ;;
  }

  dimension: sk_campaign_id {
    type: string
    sql: ${TABLE}.sk_campaign_id ;;
  }

  dimension: sk_conversion_value {
    type: number
    sql: ${TABLE}.sk_conversion_value ;;
  }

  dimension: sk_did_win {
    type: yesno
    sql: ${TABLE}.sk_did_win ;;
  }

  dimension: sk_fidelity_type {
    type: number
    sql: ${TABLE}.sk_fidelity_type ;;
  }

  dimension: sk_invalid_signature {
    type: yesno
    sql: ${TABLE}.sk_invalid_signature ;;
  }

  dimension: sk_network_id {
    type: string
    sql: ${TABLE}.sk_network_id ;;
  }

  dimension: sk_payload {
    type: string
    sql: ${TABLE}.sk_payload ;;
  }

  dimension: sk_redownload {
    type: yesno
    sql: ${TABLE}.sk_redownload ;;
  }

  dimension: sk_source_app_id {
    type: number
    sql: ${TABLE}.sk_source_app_id ;;
  }

  dimension: sk_transaction_id {
    type: string
    sql: ${TABLE}.sk_transaction_id ;;
  }

  dimension_group: sk_ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.sk_ts ;;
  }

  dimension: sk_version {
    type: string
    sql: ${TABLE}.sk_version ;;
  }

  dimension: store {
    type: string
    sql: ${TABLE}.store ;;
  }

  dimension_group: subscription_cancelled {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.subscription_cancelled_at ;;
  }

  dimension: subscription_environment {
    type: string
    sql: ${TABLE}.subscription_environment ;;
  }

  dimension: subscription_event_subtype {
    type: string
    sql: ${TABLE}.subscription_event_subtype ;;
  }

  dimension: subscription_event_type {
    type: string
    sql: ${TABLE}.subscription_event_type ;;
  }

  dimension_group: subscription_expiration {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.subscription_expiration_time ;;
  }

  dimension: subscription_expired_transaction_id {
    type: string
    sql: ${TABLE}.subscription_expired_transaction_id ;;
  }

  dimension: subscription_original_transaction_id {
    type: string
    sql: ${TABLE}.subscription_original_transaction_id ;;
  }

  dimension: subscription_product_id {
    type: string
    sql: ${TABLE}.subscription_product_id ;;
  }

  dimension_group: subscription_purchased {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.subscription_purchased_at ;;
  }

  dimension: subscription_sales_region {
    type: string
    sql: ${TABLE}.subscription_sales_region ;;
  }

  dimension: subscription_store {
    type: string
    sql: ${TABLE}.subscription_store ;;
  }

  dimension: subscription_transaction_id {
    type: string
    sql: ${TABLE}.subscription_transaction_id ;;
  }

  dimension: third_party_sharing_disabled {
    type: yesno
    sql: ${TABLE}.third_party_sharing_disabled ;;
  }

  dimension: time_spent {
    type: number
    sql: ${TABLE}.time_spent ;;
  }

  dimension: time_to_reinstall {
    type: number
    sql: ${TABLE}.time_to_reinstall ;;
  }

  dimension: time_to_uninstall {
    type: number
    sql: ${TABLE}.time_to_uninstall ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.timezone ;;
  }

  dimension: tracker {
    type: string
    sql: ${TABLE}.tracker ;;
  }

  dimension: tracker_name {
    type: string
    sql: ${TABLE}.tracker_name ;;
  }

  dimension: tracking_enabled {
    type: yesno
    sql: ${TABLE}.tracking_enabled ;;
  }

  dimension: tracking_limited {
    type: yesno
    sql: ${TABLE}.tracking_limited ;;
  }

  dimension: tweet_id {
    type: number
    sql: ${TABLE}.tweet_id ;;
  }

  dimension: twitter_line_item_id {
    type: string
    sql: ${TABLE}.twitter_line_item_id ;;
  }

  dimension_group: uninstalled {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.uninstalled_at ;;
  }

  dimension: user_agent {
    type: string
    sql: ${TABLE}.user_agent ;;
  }

  dimension: web_uuid {
    type: string
    sql: ${TABLE}.web_uuid ;;
  }

  dimension: win_adid {
    type: string
    sql: ${TABLE}.win_adid ;;
  }

  dimension: win_hwid {
    type: string
    sql: ${TABLE}.win_hwid ;;
  }

  dimension: win_naid {
    type: string
    sql: ${TABLE}.win_naid ;;
  }

  dimension: win_udid {
    type: string
    sql: ${TABLE}.win_udid ;;
  }

  dimension: within_callback_ttl {
    type: yesno
    sql: ${TABLE}.within_callback_ttl ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
  iad_creative_set_name,
  fb_install_referrer_ad_objective_name,
  fb_install_referrer_campaign_group_name,
  fb_install_referrer_campaign_name,
  fb_install_referrer_adgroup_name,
  dbm_line_item_name,
  dcm_placement_name,
  google_ads_adgroup_name,
  google_ads_campaign_name,
  event_name,
  os_name,
  device_name,
  hardware_name,
  creative_name,
  adgroup_name,
  campaign_name,
  network_name,
  last_tracker_name,
  first_tracker_name,
  tracker_name,
  app_name
  ]
  }

}
