view: goodwill_tile_cost {
  sql_table_name: apps_flyer.goodwill_tile_cost ;;

  dimension: ad {
    type: string
    sql: ${TABLE}.ad ;;
  }
  dimension: ad_account {
    type: string
    sql: ${TABLE}.ad_account ;;
  }
  dimension: ad_id {
    type: string
    sql: ${TABLE}.ad_id ;;
  }
  dimension: adset {
    type: string
    sql: ${TABLE}.adset ;;
  }
  dimension: adset_id {
    type: string
    sql: ${TABLE}.adset_id ;;
  }
  dimension: af_bid_strategy {
    type: string
    sql: ${TABLE}.af_bid_strategy ;;
  }
  dimension: af_cost_model {
    type: string
    sql: ${TABLE}.af_cost_model ;;
  }
  dimension: agency {
    type: string
    sql: ${TABLE}.agency ;;
  }
  dimension: app_id {
    type: string
    sql: ${TABLE}.app_id ;;
  }
  dimension: bid_amount {
    type: string
    sql: ${TABLE}.bid_amount ;;
  }
  dimension: bid_strategy {
    type: string
    sql: ${TABLE}.bid_strategy ;;
  }
  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
  }
  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: campaign_objective {
    type: string
    sql: ${TABLE}.campaign_objective ;;
  }
  dimension: ccvr {
    type: number
    sql: ${TABLE}.ccvr ;;
  }
  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }
  dimension: click_diff {
    type: number
    sql: ${TABLE}.click_diff ;;
  }
  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }
  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }
  dimension: cost_model {
    type: string
    sql: ${TABLE}.cost_model ;;
  }
  dimension: cost_without_fees {
    type: number
    sql: ${TABLE}.cost_without_fees ;;
  }
  dimension: cpi {
    type: number
    sql: ${TABLE}.cpi ;;
  }
  dimension: ctr {
    type: number
    sql: ${TABLE}.ctr ;;
  }
  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }
  dimension: cvr {
    type: number
    sql: ${TABLE}.cvr ;;
  }
  dimension: cvvr {
    type: number
    sql: ${TABLE}.cvvr ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension_group: dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.dt ;;
  }
  dimension: ecpc {
    type: number
    sql: ${TABLE}.ecpc ;;
  }
  dimension: ecpm {
    type: number
    sql: ${TABLE}.ecpm ;;
  }
  dimension: fees {
    type: string
    sql: ${TABLE}.fees ;;
  }
  dimension: geo {
    type: string
    sql: ${TABLE}.geo ;;
  }
  dimension: impression_diff {
    type: number
    sql: ${TABLE}.impression_diff ;;
  }
  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }
  dimension: install_diff {
    type: number
    sql: ${TABLE}.install_diff ;;
  }
  dimension: installs {
    type: number
    sql: ${TABLE}.installs ;;
  }
  dimension: keyword_id {
    type: string
    sql: ${TABLE}.keyword_id ;;
  }
  dimension: keyword_term {
    type: string
    sql: ${TABLE}.keyword_term ;;
  }
  dimension: media_source {
    type: string
    sql: ${TABLE}.media_source ;;
  }
  dimension: original_cost {
    type: number
    sql: ${TABLE}.original_cost ;;
  }
  dimension: original_cost_without_fees {
    type: number
    sql: ${TABLE}.original_cost_without_fees ;;
  }
  dimension: original_currency {
    type: string
    sql: ${TABLE}.original_currency ;;
  }
  dimension: os {
    type: string
    sql: ${TABLE}.os ;;
  }
  dimension: re_attributions {
    type: number
    sql: ${TABLE}.re_attributions ;;
  }
  dimension: re_engagements {
    type: number
    sql: ${TABLE}.re_engagements ;;
  }
  dimension: reported_clicks {
    type: number
    sql: ${TABLE}.reported_clicks ;;
  }
  dimension: reported_conversions {
    type: number
    sql: ${TABLE}.reported_conversions ;;
  }
  dimension: reported_cvr {
    type: number
    sql: ${TABLE}.reported_cvr ;;
  }
  dimension: reported_impressions {
    type: number
    sql: ${TABLE}.reported_impressions ;;
  }
  dimension: site_id {
    type: string
    sql: ${TABLE}.site_id ;;
  }
  dimension: t {
    type: string
    sql: ${TABLE}.t ;;
  }
  dimension: timezone {
    type: string
    sql: ${TABLE}.timezone ;;
  }
  dimension: v {
    type: number
    sql: ${TABLE}.v ;;
  }
  dimension: video_25p_views {
    type: number
    sql: ${TABLE}.video_25p_views ;;
  }
  dimension: video_50p_views {
    type: number
    sql: ${TABLE}.video_50p_views ;;
  }
  dimension: video_75p_views {
    type: number
    sql: ${TABLE}.video_75p_views ;;
  }
  dimension: video_completions {
    type: number
    sql: ${TABLE}.video_completions ;;
  }
  measure: count {
    type: count
  }
}
