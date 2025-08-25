view: cost_union_pdt {

    derived_table: {
      distribution: "date"
      sql:

      with
      ad_cost as
        (select

        "ad_network" as "ad",
        "ad_id_network" as "ad_id",
        "adgroup_network" as "adset",
        "adgroup_id_network" as "adset_id",
        "campaign_network" as "campaign",
        "campaign_id_network" as "campaign_id",
        "network" as "channel",
        date_trunc('day',"date_time") as "date",
        "country_code" as "geo",
        "partner" as "media_source",
        "os_name" as "os",
        "source_network" as "site",
        "source_id_network" as "site_id",
        'cost_etl_geo' as "t",
        "impressions_network" as "impressions",
        "clicks_network" as "clicks",
        "installs_network" as "installs",
        "ad_spend_network" as "cost",
        "ad_spend_network" as "original_cost",
        null as "re_attributions",
        null as "re_engagements",
        null as "video_25p_views" ,
        null as "video_50p_views",
        null as "video_75p_views",
        null as "video_completions",

        'ad_cost' as "cost_table"
          from adjust.tile_match_cost
        ),

      af_cost as
        (select
        "ad",
        "ad_id",
        "adset",
        "adset_id",
        "campaign",
        "campaign_id",
        "channel",
        date_trunc('day',"date") as "date",
        "geo",
        "media_source",
        "os",
        null as "site",
        "site_id",
        "t",
        "impressions",
        "clicks",
        "installs",
        "cost",
        "original_cost",
        "re_attributions",
        "re_engagements",
        "video_25p_views" ,
        "video_50p_views",
        "video_75p_views",
        "video_completions",

        'af_cost' as "cost_table"
          from apps_flyer.goodwill_tile_cost
        )

      select * from ad_cost
      union all
      select * from af_cost
      ;;

      publish_as_db_view: yes
      sql_trigger_value: SELECT TRUNC((DATE_PART('hour', SYSDATE))/4)  ;;
      sortkeys: ["date","geo","media_source"]
    }

    dimension: ad {
      type: string
      sql: ${TABLE}.ad ;;
    }

    dimension: ad_id {
      type: number
      sql: ${TABLE}.ad_id ;;
    }

    dimension: adset {
      type: string
      sql: ${TABLE}.adset ;;
    }

    dimension: adset_id {
      type: number
      sql: ${TABLE}.adset_id ;;
    }

    dimension: campaign {
      type: string
      sql: ${TABLE}.campaign ;;
    }

    dimension: campaign_id {
      type: number
      sql: ${TABLE}.campaign_id ;;
    }

    dimension: channel {
      type: string
      sql: ${TABLE}.channel ;;
    }

    dimension_group: date {
      type: time
      timeframes: [date, week, month, quarter, year]
      sql: ${TABLE}.date ;;
    }

    dimension: geo {
      type: string
      sql: UPPER(${TABLE}.geo) ;;
    }

    dimension: media_source {
      type: string
      sql: case when ${TABLE}.media_source='Facebook Ads' then 'facebook'
                when ${TABLE}.media_source='applovin_int' then 'applovin'
                when ${TABLE}.media_source='adjoe_int' then 'adjoe'
                else ${TABLE}.media_source
           end ;;
    }

    dimension: os {
      type: string
      sql: ${TABLE}.os ;;
    }

    dimension: site {
      type: string
      sql: ${TABLE}.site ;;
    }

    dimension: site_id {
      type: string
      sql: ${TABLE}.site_id ;;
    }

    dimension: t {
      type: string
      sql: ${TABLE}.t ;;
    }

    dimension: impressions {
      type: number
      sql: case when t='cost_etl_geo' and ${media_source}='facebook' and ${TABLE}.date<to_timestamp('20.01.2025 00:00:00', 'DD-MM-YYYY HH24:MI:SS') and ${cost_table}='ad_cost' then ${TABLE}.impressions
                when t='cost_etl_geo' and ${TABLE}.date>=to_timestamp('20.01.2025 00:00:00', 'DD-MM-YYYY HH24:MI:SS') and ${cost_table}='af_cost' then ${TABLE}.impressions
                else null
           end ;;
    }

    dimension: clicks {
      type: number
      sql: case when t='cost_etl_geo' and ${media_source}='facebook' and ${TABLE}.date<to_timestamp('20.01.2025 00:00:00', 'DD-MM-YYYY HH24:MI:SS') and ${cost_table}='ad_cost' then ${TABLE}.installs
                when t='cost_etl_geo' and ${TABLE}.date>=to_timestamp('20.01.2025 00:00:00', 'DD-MM-YYYY HH24:MI:SS') and ${cost_table}='af_cost' then ${TABLE}.clicks
                else null
           end  ;;
    }

    dimension: installs {
      type: number
      sql: case when t='cost_etl_geo' and ${media_source}='facebook' and ${TABLE}.date<to_timestamp('20.01.2025 00:00:00', 'DD-MM-YYYY HH24:MI:SS') and ${cost_table}='ad_cost' then ${TABLE}.installs
                when t='cost_etl_geo' and ${TABLE}.date>=to_timestamp('20.01.2025 00:00:00', 'DD-MM-YYYY HH24:MI:SS') and ${cost_table}='af_cost' then ${TABLE}.installs
                else null
           end  ;;
    }

    dimension: cost {
      type: number
      sql: case when t='cost_etl_geo' and ${media_source}='facebook' and ${TABLE}.date<to_timestamp('20.01.2025 00:00:00', 'DD-MM-YYYY HH24:MI:SS') and ${cost_table}='ad_cost' then ${TABLE}.cost
                when t='cost_etl_geo' and ${TABLE}.date>=to_timestamp('20.01.2025 00:00:00', 'DD-MM-YYYY HH24:MI:SS') and ${cost_table}='af_cost' then ${TABLE}.cost
                else null
           end ;;
    }

    dimension: original_cost {
      type: number
      sql: case when t='cost_etl_geo' and ${media_source}='facebook' and ${TABLE}.date<to_timestamp('20.01.2025 00:00:00', 'DD-MM-YYYY HH24:MI:SS') and ${cost_table}='ad_cost' then ${TABLE}.original_cost
                when t='cost_etl_geo' and ${TABLE}.date>=to_timestamp('20.01.2025 00:00:00', 'DD-MM-YYYY HH24:MI:SS') and ${cost_table}='af_cost' then ${TABLE}.original_cost
                else null
           end ;;
    }

    dimension: re_attributions {
      type: number
      sql: ${TABLE}.re_attributions ;;
    }

    dimension: re_engagements {
      type: number
      sql: ${TABLE}.re_engagements ;;
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

    dimension: cost_table {
      type: string
      sql: ${TABLE}.cost_table ;;
    }

  dimension: country_tier {
    type: string
    sql: case when ${geo} in ('AU','AT','BE','BN','CA','KY','DK','FI','FR','DE','GL','HK','IS','IE','IM','IL','LI','LU','NL','NZ','NO','QA','SG','SE','CH','AE','GB','US','ES','IT','JP','KR','SA', 'UK')
              then 'Tier 1'
              when ${geo} in ('AD','AG','AR','AW','AZ','BS','BH','BB','BY','BA','BW','BR','IO','BG','BQ','CL','CN','CK','CR','HR','CU','CW','CY','CZ','DM','DO','EE','GF','PF','GA','GE','GR','GD','GP','GU','GG','GY','HU','IR','JE','KZ','KW','LV','LT','MO','MY','MV','MT','MQ','MU','YT','MX','ME','NR','NC','MK','OM','PA','PE','PL','PT','PR','RE','RO','RU','ST','RS','SC','SX','SK','SI','ZA','BL','KN','LC','PM','VC','TW','TH','TR','TM','VI','UY')
              then 'Tier 2'
              when ${geo} in ('AF','AL','DZ','AO','AM','BD','BZ','BJ','BT','BO','BF','BI','KH','CM','CV','CF','TD','CO','CG','CD','CI','DJ','EC','EG','SV','SZ','ET','FJ','GM','GH','GT','GN','HT','HN','IN','ID','IQ','JM','JO','KE','XK','KG','LA','LB','LR','LY','MG','MW','ML','MR','MD','MN','MA','MZ','MM','NA','NP','NI','NG','PK','PS','PG','PY','PH','RW','SN','SL','SB','SO','SS','LK','SD','SR','SY','TJ','TZ','TL','TG','TT','TN','UG','UA','UZ','VU','VE','VN','EH','YE','ZM','ZW')
              then 'Tier 3'
              else ${geo} end;;
  }

    dimension: pivot_campaign_list {
      type: string
      sql: {% if ${campaign}._is_filtered %} ${campaign} {% else %} '???' {% endif %};;
    }

    dimension: pivot_creative_list {
      type: string
      sql: {% if ${ad}._is_filtered %} ${ad} {% else %} '???' {% endif %};;
    }

    measure: count {
      type: count
      drill_fields: [os]
    }
  }
