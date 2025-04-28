view: firebase_daily_user {
  sql_table_name: tile_match.firebase_daily_user ;;

  dimension: advertising_id {
    type: string
    sql: ${TABLE}.advertising_id ;;
  }
  dimension: af_campaign_code {
    type: string
    sql: ${TABLE}.af_campaign_code ;;
  }
  dimension: app_version {
    type: string
    sql: ${TABLE}.app_version ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  dimension: device_advertising_id {
    type: string
    sql: ${TABLE}.device_advertising_id ;;
  }
  dimension: device_category {
    type: string
    sql: ${TABLE}.device_category ;;
  }
  dimension: device_is_limited_ad_tracking {
    type: string
    sql: ${TABLE}.device_is_limited_ad_tracking ;;
  }
  dimension: device_language {
    type: string
    sql: ${TABLE}.device_language ;;
  }
  dimension: device_mobile_brand_name {
    type: string
    sql: ${TABLE}.device_mobile_brand_name ;;
  }
  dimension: device_mobile_model_name {
    type: string
    sql: ${TABLE}.device_mobile_model_name ;;
  }
  dimension: device_mobile_os_hardware_model {
    type: string
    sql: ${TABLE}.device_mobile_os_hardware_model ;;
  }
  dimension: device_operating_system {
    type: string
    sql: ${TABLE}.device_operating_system ;;
  }
  dimension: device_operating_system_version {
    type: string
    sql: ${TABLE}.device_operating_system_version ;;
  }
  dimension: device_time_zone_offset_seconds {
    type: number
    sql: ${TABLE}.device_time_zone_offset_seconds ;;
  }
  dimension: device_vendor_id {
    type: string
    sql: ${TABLE}.device_vendor_id ;;
  }
  dimension_group: event {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.event_date ;;
  }
  dimension: event_date_string {
    type: string
    sql: ${TABLE}.event_date_string ;;
  }
  dimension: firebase_exp_13 {
    type: string
    sql: ${TABLE}.firebase_exp_13 ;;
  }
  dimension: firebase_exp_14 {
    type: string
    sql: ${TABLE}.firebase_exp_14 ;;
  }
  dimension: firebase_exp_15 {
    type: string
    sql: ${TABLE}.firebase_exp_15 ;;
  }
  dimension: firebase_exp_16 {
    type: string
    sql: ${TABLE}.firebase_exp_16 ;;
  }
  dimension: firebase_exp_17 {
    type: string
    sql: ${TABLE}.firebase_exp_17 ;;
  }
  dimension: firebase_exp_18 {
    type: string
    sql: ${TABLE}.firebase_exp_18 ;;
  }
  dimension: firebase_exp_19 {
    type: string
    sql: ${TABLE}.firebase_exp_19 ;;
  }
  dimension: firebase_exp_20 {
    type: string
    sql: ${TABLE}.firebase_exp_20 ;;
  }
  dimension: firebase_exp_21 {
    type: string
    sql: ${TABLE}.firebase_exp_21 ;;
  }
  dimension: firebase_exp_22 {
    type: string
    sql: ${TABLE}.firebase_exp_22 ;;
  }
  dimension: firebase_exp_24 {
    type: string
    sql: ${TABLE}.firebase_exp_24 ;;
  }
  dimension: firebase_exp_25 {
    type: string
    sql: ${TABLE}.firebase_exp_25 ;;
  }
  dimension: firebase_exp_26 {
    type: string
    sql: ${TABLE}.firebase_exp_26 ;;
  }
  dimension: firebase_exp_27 {
    type: string
    sql: ${TABLE}.firebase_exp_27 ;;
  }
  dimension: firebase_exp_28 {
    type: string
    sql: ${TABLE}.firebase_exp_28 ;;
  }
  dimension: firebase_exp_29 {
    type: string
    sql: ${TABLE}.firebase_exp_29 ;;
  }
  dimension: firebase_exp_30 {
    type: string
    sql: ${TABLE}.firebase_exp_30 ;;
  }
  dimension: firebase_exp_31 {
    type: string
    sql: ${TABLE}.firebase_exp_31 ;;
  }
  dimension: firebase_exp_32 {
    type: string
    sql: ${TABLE}.firebase_exp_32 ;;
  }
  dimension: firebase_exp_33 {
    type: string
    sql: ${TABLE}.firebase_exp_33 ;;
  }
  dimension: firebase_exp_35 {
    type: string
    sql: ${TABLE}.firebase_exp_35 ;;
  }
  dimension: firebase_exp_36 {
    type: string
    sql: ${TABLE}.firebase_exp_36 ;;
  }
  dimension: firebase_exp_37 {
    type: string
    sql: ${TABLE}.firebase_exp_37 ;;
  }
  dimension: firebase_exp_38 {
    type: string
    sql: ${TABLE}.firebase_exp_38 ;;
  }
  dimension: firebase_exp_39 {
    type: string
    sql: ${TABLE}.firebase_exp_39 ;;
  }
  dimension: firebase_exp_40 {
    type: string
    sql: ${TABLE}.firebase_exp_40 ;;
  }
  dimension: firebase_exp_41 {
    type: string
    sql: ${TABLE}.firebase_exp_41 ;;
  }
  dimension: firebase_exp_42 {
    type: string
    sql: ${TABLE}.firebase_exp_42 ;;
  }
  dimension: firebase_exp_43 {
    type: string
    sql: ${TABLE}.firebase_exp_43 ;;
  }
  dimension: firebase_exp_44 {
    type: string
    sql: ${TABLE}.firebase_exp_44 ;;
  }
  dimension: firebase_exp_45 {
    type: string
    sql: ${TABLE}.firebase_exp_45 ;;
  }
  dimension: firebase_exp_46 {
    type: string
    sql: ${TABLE}.firebase_exp_46 ;;
  }
  dimension: firebase_exp_47 {
    type: string
    sql: ${TABLE}.firebase_exp_47 ;;
  }
  dimension: firebase_exp_48 {
    type: string
    sql: ${TABLE}.firebase_exp_48 ;;
  }
  dimension: firebase_exp_49 {
    type: string
    sql: ${TABLE}.firebase_exp_49 ;;
  }
  dimension: firebase_exp_50 {
    type: string
    sql: ${TABLE}.firebase_exp_50 ;;
  }
  dimension: firebase_exp_51 {
    type: string
    sql: ${TABLE}.firebase_exp_51 ;;
  }
  dimension: firebase_exp_52 {
    type: string
    sql: ${TABLE}.firebase_exp_52 ;;
  }
  dimension: firebase_exp_53 {
    type: string
    sql: ${TABLE}.firebase_exp_53 ;;
  }
  dimension: firebase_exp_54 {
    type: string
    sql: ${TABLE}.firebase_exp_54 ;;
  }
  dimension: firebase_exp_55 {
    type: string
    sql: ${TABLE}.firebase_exp_55 ;;
  }
  dimension: firebase_exp_56 {
    type: string
    sql: ${TABLE}.firebase_exp_56 ;;
  }
  dimension: firebase_exp_57 {
    type: string
    sql: ${TABLE}.firebase_exp_57 ;;
  }
  dimension: firebase_exp_58 {
    type: string
    sql: ${TABLE}.firebase_exp_58 ;;
  }
  dimension: firebase_exp_59 {
    type: string
    sql: ${TABLE}.firebase_exp_59 ;;
  }
  dimension: firebase_exp_61 {
    type: string
    sql: ${TABLE}.firebase_exp_61 ;;
  }
  dimension: firebase_exp_62 {
    type: string
    sql: ${TABLE}.firebase_exp_62 ;;
  }
  dimension: firebase_exp_63 {
    type: string
    sql: ${TABLE}.firebase_exp_63 ;;
  }
  dimension: firebase_exp_64 {
    type: string
    sql: ${TABLE}.firebase_exp_64 ;;
  }
  dimension: firebase_exp_65 {
    type: string
    sql: ${TABLE}.firebase_exp_65 ;;
  }
  dimension: firebase_exp_66 {
    type: string
    sql: ${TABLE}.firebase_exp_66 ;;
  }
  dimension: firebase_exp_67 {
    type: string
    sql: ${TABLE}.firebase_exp_67 ;;
  }
  dimension: firebase_exp_68 {
    type: string
    sql: ${TABLE}.firebase_exp_68 ;;
  }
  dimension: firebase_exp_69 {
    type: string
    sql: ${TABLE}.firebase_exp_69 ;;
  }
  dimension: firebase_exp_70 {
    type: string
    sql: ${TABLE}.firebase_exp_70 ;;
  }
  dimension: firebase_exp_71 {
    type: string
    sql: ${TABLE}.firebase_exp_71 ;;
  }
  dimension: firebase_exp_72 {
    type: string
    sql: ${TABLE}.firebase_exp_72 ;;
  }
  dimension: firebase_exp_73 {
    type: string
    sql: ${TABLE}.firebase_exp_73 ;;
  }
  dimension: firebase_exp_74 {
    type: string
    sql: ${TABLE}.firebase_exp_74 ;;
  }
  dimension: firebase_exp_75 {
    type: string
    sql: ${TABLE}.firebase_exp_75 ;;
  }
  dimension_group: max_event_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.max_event_timestamp ;;
  }
  dimension: max_event_timestamp_string {
    type: string
    sql: ${TABLE}.max_event_timestamp_string ;;
  }
  dimension_group: min_event_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.min_event_timestamp ;;
  }
  dimension: min_event_timestamp_string {
    type: string
    sql: ${TABLE}.min_event_timestamp_string ;;
  }
  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }
  dimension: test_routing_value {
    type: string
    sql: ${TABLE}.test_routing_value ;;
  }
  dimension: test_routing_value_v2 {
    type: string
    sql: ${TABLE}.test_routing_value_v2 ;;
  }
  dimension: user_first_touch_timestamp {
    type: string
    sql: ${TABLE}.user_first_touch_timestamp ;;
  }
  dimension_group: user_first_touch_timestamp_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.user_first_touch_timestamp_timestamp ;;
  }
  dimension: user_ltv_currency {
    type: string
    sql: ${TABLE}.user_ltv_currency ;;
  }
  dimension: user_ltv_revenue {
    type: number
    sql: ${TABLE}.user_ltv_revenue ;;
  }
  dimension: user_pseudo_id {
    type: string
    sql: ${TABLE}.user_pseudo_id ;;
  }
  measure: count {
    type: count
    drill_fields: [device_mobile_brand_name, device_mobile_model_name]
  }
}
