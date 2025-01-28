view: cost_temp_union_pdt {

    derived_table: {
      distribution: "date"
      sql:

      with
      ad_cost as
        (select "ad_network" as "ad", "ad_id_network" as "ad_id", "adgroup_network" as "adset", "adgroup_id_network" as "adset_id", "campaign_network" as "campaign", "campaign_id_network" as "campaign_id",
          "network" as "channel", date_trunc('day',"date_time") as "date", "country_code" as "geo", "partner" as "media_source", "os_name" as "os", "source_network" as "site", "source_id_network" as "site_id",
          'cost_etl_geo' as "t", "impressions_network" as "impressions", "clicks_network" as "clicks", "installs_network" as "installs", "installs" as "organic_installs",  "ad_spend_network" as "cost",
          "ad_spend_network" as "original_cost", null as "re_attributions", null as "re_engagements", null as "video_25p_views" , null as "video_50p_views", null as "video_75p_views", null as "video_completions",
          'ad_cost' as "cost_table"
          from adjust.tile_match_cost
        ),

      af_cost as
        (select "ad", "ad_id", "adset", "adset_id", "campaign", "campaign_id", "channel", date_trunc('day',"date") as "date", "geo", "media_source", "os", null as "site", "site_id", "t", "impressions", "clicks",
          "installs", null as "organic_installs", "cost", "original_cost", "re_attributions", "re_engagements", "video_25p_views" , "video_50p_views", "video_75p_views", "video_completions", 'af_cost' as "cost_table"
          from apps_flyer.goodwill_tile_cost
        )

      select * from ad_cost
      union all
      select * from af_cost

      ;;

      publish_as_db_view: yes
      sql_trigger_value: select DATE_TRUNC('hour',getdate())  ;;
      sortkeys: ["date","country","media_source"]
    }

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
      sql: case when ${country_code} in ('DE','GB','IE','AU','NZ','US','CA','FR','IT','ES','AT','BE','NL','LU','FI','SE','CH','NO','DK','JP','KR')
        then 'Tier 1' else ${country_code} end;;
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
