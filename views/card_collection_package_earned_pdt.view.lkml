view: card_collection_package_earned_pdt {
  derived_table: {
    distribution: "advertising_id"
    sql:
    WITH

      UserPackageCounts AS (

                 SELECT
                    live_ops_start_time,
                    event_stage_index,
                    event_package_type,
                    advertising_id,
                    installed_at,
                    max(user_platform) as user_platform,
                    COUNT(*) AS packages_earned_count
                 FROM
                  tile_match.live_ops
                 WHERE
                  event_name = 'CardCollectionPackageEarned'
                 GROUP BY 1, 2, 3, 4, 5
      )

      SELECT
          pkg.live_ops_start_time as live_ops_start_time,
          pkg.event_stage_index as event_stage_index,
          pkg.event_package_type as event_package_type,
          pkg.advertising_id as advertising_id,
          pkg.user_platform as user_platform,
          pkg.installed_at as installed_at,
          pkg.packages_earned_count as packages_earned_count
      FROM
          UserPackageCounts AS pkg
      ;;

    publish_as_db_view: yes
    sql_trigger_value: SELECT TRUNC((DATE_PART('hour', SYSDATE))/4)  ;;
    sortkeys: ["advertising_id","live_ops_start_time"]
  }

  dimension: advertising_id {
    type: string
    sql: ${TABLE}.advertising_id ;;
  }

  dimension: app_version {
    type: string
    sql: ${TABLE}.app_version ;;
  }

  dimension_group: live_ops_start_time {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.live_ops_start_time ;;
  }

  dimension_group: installed {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.installed_at ;;
  }

  dimension: event_package_type {
    type: string
    sql: case when ${TABLE}.event_package_type = 0 then 'Green'
              when ${TABLE}.event_package_type = 1 then 'Blue'
              when ${TABLE}.event_package_type = 2 then 'Purple'
              when ${TABLE}.event_package_type = 3 then 'Orange'
              when ${TABLE}.event_package_type = 4 then 'Rainbow'
              end ;;
  }

  dimension: event_stage_index {
    type: string
    sql: case when ${TABLE}.event_stage_index = 0 then 'Default'
              when ${TABLE}.event_stage_index = 1 then 'Deluxe'
               end;;
  }

  dimension: user_platform {
    type: string
    sql: case when ${TABLE}.user_platform = 'Android' then 'android'
              when ${TABLE}.user_platform = 'IPhonePlayer' then 'ios'
        end ;;
  }

  dimension: packages_earned_count {
    type: number
    sql: ${TABLE}.packages_earned_count ;;
  }

  measure: packages_earned_count_avg {
    type: number
    sql:  AVG(${TABLE}.packages_earned_count);;
    value_format: "0.0"
  }

  measure: packages_earned_count_per10  {
    type: percentile
    percentile: 10
    sql: ${TABLE}.packages_earned_count  ;;
    value_format: "0.0"
  }

  measure: packages_earned_count_per25  {
    type: percentile
    percentile: 25
    sql: ${TABLE}.packages_earned_count  ;;
    value_format: "0.0"
  }

  measure: packages_earned_count_per50  {
    type: percentile
    percentile: 50
    sql: ${TABLE}.packages_earned_count  ;;
    value_format: "0.0"
  }

  measure: packages_earned_count_per75  {
    type: percentile
    percentile: 75
    sql: ${TABLE}.packages_earned_count  ;;
    value_format: "0.0"
  }

  measure: packages_earned_count_per90  {
    type: percentile
    percentile: 90
    sql: ${TABLE}.packages_earned_count  ;;
    value_format: "0.0"
  }

  measure: packages_earned_count_per99  {
    type: percentile
    percentile: 99
    sql: ${TABLE}.packages_earned_count  ;;
    value_format: "0.0"
  }

  measure: count {
    type: count
  }

}
