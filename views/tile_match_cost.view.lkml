# The name of this view in Looker is "Tile Match Cost"
view: tile_match_cost {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: adjust.tile_match_cost ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Ad ID Network" in Explore.

  dimension: ad_id_network {
    type: string
    sql: ${TABLE}.ad_id_network ;;
  }

  dimension: ad_network {
    type: string
    sql: ${TABLE}.ad_network ;;
  }

  dimension: ad_spend {
    type: number
    sql: ${TABLE}.ad_spend ;;
  }

  dimension: ad_spend_network {
    type: number
    sql: ${TABLE}.ad_spend_network ;;
  }

  dimension: adgroup {
    type: string
    sql: ${TABLE}.adgroup ;;
  }

  dimension: adgroup_id_network {
    type: string
    sql: ${TABLE}.adgroup_id_network ;;
  }

  dimension: adgroup_network {
    type: string
    sql: ${TABLE}.adgroup_network ;;
  }

  dimension: app {
    type: string
    sql: ${TABLE}.app ;;
  }

  dimension: app_currency_code {
    type: string
    sql: ${TABLE}.app_currency_code ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
  }

  dimension: campaign_id_network {
    type: string
    sql: ${TABLE}.campaign_id_network ;;
  }

  dimension: campaign_network {
    type: string
    sql: ${TABLE}.campaign_network ;;
  }

  dimension: click_conversion_rate {
    type: number
    sql: ${TABLE}.click_conversion_rate ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_click_conversion_rate {
    type: sum
    sql: ${click_conversion_rate} ;;  }
  measure: average_click_conversion_rate {
    type: average
    sql: ${click_conversion_rate} ;;  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: clicks_network {
    type: number
    sql: ${TABLE}.clicks_network ;;
  }

  dimension: clicks_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.clicks_paid ;;
  }

  dimension: country_code {
    type: string
    sql: UPPER(${TABLE}.country_code) ;;
  }

  dimension: country_tier {
    type: string
    sql: case when ${country_code} in ('AU','AT','BE','BN','CA','KY','DK','FI','FR','DE','GL','HK','IS','IE','IM','IL','LI','LU','NL','NZ','NO','QA','SG','SE','CH','AE','GB','US','ES','IT','JP','KR','SA', 'UK')
              then 'Tier 1'
              when ${country_code} in ('AD','AG','AR','AW','AZ','BS','BH','BB','BY','BA','BW','BR','IO','BG','BQ','CL','CN','CK','CR','HR','CU','CW','CY','CZ','DM','DO','EE','GF','PF','GA','GE','GR','GD','GP','GU','GG','GY','HU','IR','JE','KZ','KW','LV','LT','MO','MY','MV','MT','MQ','MU','YT','MX','ME','NR','NC','MK','OM','PA','PE','PL','PT','PR','RE','RO','RU','ST','RS','SC','SX','SK','SI','ZA','BL','KN','LC','PM','VC','TW','TH','TR','TM','VI','UY')
              then 'Tier 2'
              when ${country_code} in ('AF','AL','DZ','AO','AM','BD','BZ','BJ','BT','BO','BF','BI','KH','CM','CV','CF','TD','CO','CG','CD','CI','DJ','EC','EG','SV','SZ','ET','FJ','GM','GH','GT','GN','HT','HN','IN','ID','IQ','JM','JO','KE','XK','KG','LA','LB','LR','LY','MG','MW','ML','MR','MD','MN','MA','MZ','MM','NA','NP','NI','NG','PK','PS','PG','PY','PH','RW','SN','SL','SB','SO','SS','LK','SD','SR','SY','TJ','TZ','TL','TG','TT','TN','UG','UA','UZ','VU','VE','VN','EH','YE','ZM','ZW')
              then 'Tier 3'
              else 'Other' end;;
  }

  dimension: creative {
    type: string
    sql: ${TABLE}.creative ;;
  }

  dimension: ctr {
    type: number
    sql: ${TABLE}.ctr ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.date_time ;;
  }

  dimension: device_type {
    type: string
    sql: ${TABLE}.device_type ;;
  }

  dimension: ecpc {
    type: number
    sql: ${TABLE}.ecpc ;;
  }

  dimension: ecpc_network {
    type: number
    sql: ${TABLE}.ecpc_network ;;
  }

  dimension: ecpi_paid_installs {
    type: number
    sql: ${TABLE}.ecpi_paid_installs ;;
  }

  dimension: ecpm_attribution {
    type: number
    sql: ${TABLE}.ecpm_attribution ;;
  }

  dimension: ecpm_network {
    type: number
    sql: ${TABLE}.ecpm_network ;;
  }

  dimension: impression_conversion_rate {
    type: number
    sql: ${TABLE}.impression_conversion_rate ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }

  dimension: impressions_network {
    type: number
    sql: ${TABLE}.impressions_network ;;
  }

  dimension: impressions_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.impressions_paid ;;
  }

  dimension: installs {
    type: number
    sql: ${TABLE}.installs ;;
  }

  dimension: installs_network {
    type: number
    sql: ${TABLE}.installs_network ;;
  }

  dimension: installs_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.installs_paid ;;
  }

  dimension: network {
    type: string
    sql: ${TABLE}.network ;;
  }

  dimension: os_name {
    type: string
    sql: case when ${TABLE}.os_name = 'android' then 'Android' else ${TABLE}.os_name end ;;
  }

  dimension: partner {
    type: string
    sql: ${TABLE}.partner ;;
  }

  dimension: partner_id {
    type: string
    sql: ${TABLE}.partner_id ;;
  }

  dimension: source_id_network {
    type: string
    sql: ${TABLE}.source_id_network ;;
  }

  dimension: source_network {
    type: string
    sql: ${TABLE}.source_network ;;
  }

  dimension: pivot_campaign_list {
    type: string
    sql: {% if ${campaign_network}._is_filtered %} ${campaign_network} {% else %} '???' {% endif %};;
  }

  dimension: pivot_creative_list {
    type: string
    sql: {% if ${ad_network}._is_filtered %} ${ad_network} {% else %} '???' {% endif %};;
  }

  measure: count {
    type: count
    drill_fields: [os_name]
  }
}
