# The name of this view in Looker is "Fruit Merge Cost"
view: fruit_merge_cost {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: adjust.fruit_merge_cost ;;

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
    sql: ${TABLE}.os_name ;;
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
    sql: {% if ${campaign}._is_filtered %} ${campaign} {% else %} 'USD' {% endif %};;
  }

  measure: count {
    type: count
    drill_fields: [os_name]
  }
}
