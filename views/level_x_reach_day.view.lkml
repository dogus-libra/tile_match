view: level_x_reach_day {
  derived_table: {
    sql:
      WITH milestone_levels AS (
           SELECT 50 AS milestone_level UNION ALL
           SELECT 100 UNION ALL
           SELECT 150 UNION ALL
           SELECT 200 UNION ALL
           SELECT 250 UNION ALL
           SELECT 350 UNION ALL
           SELECT 500 UNION ALL
           SELECT 750 UNION ALL
           SELECT 1000),

          user_levels AS (
            SELECT
              p.advertising_id,
              p.user_level_at,
              DATE(p.event_timestamp) AS reached_date,
              DATE(p.installed_at) AS first_event_date
            FROM
              tile_match.progression p
            WHERE
              p.event_name = 'LevelCompleted'),

          user_milestones AS (
            SELECT
              ul.advertising_id,
              ml.milestone_level,
              MIN(ul.reached_date) AS milestone_reach_date,
              DATEDIFF(day, ul.first_event_date, MIN(ul.reached_date)) AS days_to_milestone
            FROM
              user_levels ul
            JOIN milestone_levels ml
                ON ul.user_level_at >= ml.milestone_level
            GROUP BY
              ul.advertising_id,
              ml.milestone_level,
              ul.first_event_date)

SELECT
  advertising_id,
  milestone_level,
  milestone_reach_date,
  days_to_milestone

FROM user_milestones
ORDER BY advertising_id, milestone_level ;;
  }

  dimension: advertising_id {
    type: string
    sql: ${TABLE}.advertising_id ;;
  }
  dimension: milestone_level {
    type: number
    sql: ${TABLE}.milestone_level ;;
  }
  dimension: milestone_reach_date {
    type: date
    sql: ${TABLE}.milestone_reach_date ;;
  }
  dimension: days_to_milestone {
    type: number
    sql: ${TABLE}.days_to_milestone ;;
  }

  measure: level50_reach_avg {
    type: average
    sql: case when ${milestone_level} = 50 then ${days_to_milestone} end ;;
    value_format: "##"
  }

  measure: level50_reach_per10 {
    type: percentile
    percentile: 10
    sql: case when ${milestone_level} = 50 then ${days_to_milestone} end ;;
    value_format: "##"
  }

  measure: level50_reach_per25 {
    type: percentile
    percentile: 25
    sql: case when ${milestone_level} = 50 then ${days_to_milestone} end  ;;
    value_format: "##"
  }

  measure: level50_reach_per50 {
    type: percentile
    percentile: 50
    sql: case when ${milestone_level} = 50 then ${days_to_milestone} end  ;;
    value_format: "##"
  }

  measure: level50_reach_per75 {
    type: percentile
    percentile: 75
    sql: case when ${milestone_level} = 50 then ${days_to_milestone} end  ;;
    value_format: "##"
  }

  measure: level50_reach_per90 {
    type: percentile
    percentile: 90
    sql: case when ${milestone_level} = 50 then ${days_to_milestone} end  ;;
    value_format: "##"
  }

  measure: level100_reach_avg {
    type: average
    sql: case when ${milestone_level} = 100 then ${days_to_milestone} end ;;
    value_format: "##"
  }

  measure: level100_reach_per10 {
    type: percentile
    percentile: 10
    sql: case when ${milestone_level} = 100 then ${days_to_milestone} end ;;
    value_format: "##"
  }

  measure: level100_reach_per25 {
    type: percentile
    percentile: 25
    sql: case when ${milestone_level} = 100 then ${days_to_milestone} end  ;;
    value_format: "##"
  }

  measure: level100_reach_per50 {
    type: percentile
    percentile: 50
    sql: case when ${milestone_level} = 100 then ${days_to_milestone} end  ;;
    value_format: "##"
  }

  measure: level100_reach_per75 {
    type: percentile
    percentile: 75
    sql: case when ${milestone_level} = 100 then ${days_to_milestone} end  ;;
    value_format: "##"
  }

  measure: level100_reach_per90 {
    type: percentile
    percentile: 90
    sql: case when ${milestone_level} = 100 then ${days_to_milestone} end  ;;
    value_format: "##"
  }

  measure: level150_reach_avg {
    type: average
    sql: case when ${milestone_level} = 150 then ${days_to_milestone} end ;;
    value_format: "##"
  }

  measure: level150_reach_per10 {
    type: percentile
    percentile: 10
    sql: case when ${milestone_level} = 150 then ${days_to_milestone} end ;;
    value_format: "##"
  }

  measure: level150_reach_per25 {
    type: percentile
    percentile: 25
    sql: case when ${milestone_level} = 150 then ${days_to_milestone} end  ;;
    value_format: "##"
  }

  measure: level150_reach_per50 {
    type: percentile
    percentile: 50
    sql: case when ${milestone_level} = 150 then ${days_to_milestone} end  ;;
    value_format: "##"
  }

  measure: level150_reach_per75 {
    type: percentile
    percentile: 75
    sql: case when ${milestone_level} = 150 then ${days_to_milestone} end  ;;
    value_format: "##"
  }

  measure: level150_reach_per90 {
    type: percentile
    percentile: 90
    sql: case when ${milestone_level} = 150 then ${days_to_milestone} end  ;;
    value_format: "##"
  }

  measure: level200_reach_avg {
    type: average
    sql: case when ${milestone_level} = 200 then ${days_to_milestone} end ;;
    value_format: "##"
  }

  measure: level200_reach_per10 {
    type: percentile
    percentile: 10
    sql: case when ${milestone_level} = 200 then ${days_to_milestone} end ;;
    value_format: "##"
  }

  measure: level200_reach_per25 {
    type: percentile
    percentile: 25
    sql: case when ${milestone_level} = 200 then ${days_to_milestone} end  ;;
    value_format: "##"
  }

  measure: level200_reach_per50 {
    type: percentile
    percentile: 50
    sql: case when ${milestone_level} = 200 then ${days_to_milestone} end  ;;
    value_format: "##"
  }

  measure: level200_reach_per75 {
    type: percentile
    percentile: 75
    sql: case when ${milestone_level} = 200 then ${days_to_milestone} end  ;;
    value_format: "##"
  }

  measure: level200_reach_per90 {
    type: percentile
    percentile: 90
    sql: case when ${milestone_level} = 200 then ${days_to_milestone} end  ;;
    value_format: "##"
  }

  measure: level250_reach_avg {
    type: average
    sql: case when ${milestone_level} = 250 then ${days_to_milestone} end ;;
    value_format: "##"
  }

  measure: level250_reach_per10 {
    type: percentile
    percentile: 10
    sql: case when ${milestone_level} = 250 then ${days_to_milestone} end ;;
    value_format: "##"
  }

  measure: level250_reach_per25 {
    type: percentile
    percentile: 25
    sql: case when ${milestone_level} = 250 then ${days_to_milestone} end  ;;
    value_format: "##"
  }

  measure: level250_reach_per50 {
    type: percentile
    percentile: 50
    sql: case when ${milestone_level} = 250 then ${days_to_milestone} end  ;;
    value_format: "##"
  }

  measure: level250_reach_per75 {
    type: percentile
    percentile: 75
    sql: case when ${milestone_level} = 250 then ${days_to_milestone} end  ;;
    value_format: "##"
  }

  measure: level250_reach_per90 {
    type: percentile
    percentile: 90
    sql: case when ${milestone_level} = 250 then ${days_to_milestone} end  ;;
    value_format: "##"
  }

  measure: level350_reach_avg {
    type: average
    sql: case when ${milestone_level} = 350 then ${days_to_milestone} end ;;
    value_format: "##"
  }

  measure: level350_reach_per10 {
    type: percentile
    percentile: 10
    sql: case when ${milestone_level} = 350 then ${days_to_milestone} end ;;
    value_format: "##"
  }

  measure: level350_reach_per25 {
    type: percentile
    percentile: 25
    sql: case when ${milestone_level} = 350 then ${days_to_milestone} end  ;;
    value_format: "##"
  }

  measure: level350_reach_per50 {
    type: percentile
    percentile: 50
    sql: case when ${milestone_level} = 350 then ${days_to_milestone} end  ;;
    value_format: "##"
  }

  measure: level350_reach_per75 {
    type: percentile
    percentile: 75
    sql: case when ${milestone_level} = 350 then ${days_to_milestone} end  ;;
    value_format: "##"
  }

  measure: level350_reach_per90 {
    type: percentile
    percentile: 90
    sql: case when ${milestone_level} = 350 then ${days_to_milestone} end  ;;
    value_format: "##"
  }

  measure: level500_reach_avg {
    type: average
    sql: case when ${milestone_level} = 500 then ${days_to_milestone} end ;;
    value_format: "##"
  }

  measure: level500_reach_per10 {
    type: percentile
    percentile: 10
    sql: case when ${milestone_level} = 500 then ${days_to_milestone} end ;;
    value_format: "##"
  }

  measure: level500_reach_per25 {
    type: percentile
    percentile: 25
    sql: case when ${milestone_level} = 500 then ${days_to_milestone} end  ;;
    value_format: "##"
  }

  measure: level500_reach_per50 {
    type: percentile
    percentile: 50
    sql: case when ${milestone_level} = 500 then ${days_to_milestone} end  ;;
    value_format: "##"
  }

  measure: level500_reach_per75 {
    type: percentile
    percentile: 75
    sql: case when ${milestone_level} = 500 then ${days_to_milestone} end  ;;
    value_format: "##"
  }

  measure: level500_reach_per90 {
    type: percentile
    percentile: 90
    sql: case when ${milestone_level} = 500 then ${days_to_milestone} end  ;;
    value_format: "##"
  }

  measure: level750_reach_avg {
    type: average
    sql: case when ${milestone_level} = 750 then ${days_to_milestone} end ;;
    value_format: "##"
  }

  measure: level750_reach_per10 {
    type: percentile
    percentile: 10
    sql: case when ${milestone_level} = 750 then ${days_to_milestone} end ;;
    value_format: "##"
  }

  measure: level750_reach_per25 {
    type: percentile
    percentile: 25
    sql: case when ${milestone_level} = 750 then ${days_to_milestone} end  ;;
    value_format: "##"
  }

  measure: level750_reach_per50 {
    type: percentile
    percentile: 50
    sql: case when ${milestone_level} = 750 then ${days_to_milestone} end  ;;
    value_format: "##"
  }

  measure: level750_reach_per75 {
    type: percentile
    percentile: 75
    sql: case when ${milestone_level} = 750 then ${days_to_milestone} end  ;;
    value_format: "##"
  }

  measure: level750_reach_per90 {
    type: percentile
    percentile: 90
    sql: case when ${milestone_level} = 750 then ${days_to_milestone} end  ;;
    value_format: "##"
  }

  measure: level1000_reach_avg {
    type: average
    sql: case when ${milestone_level} = 1000 then ${days_to_milestone} end ;;
    value_format: "##"
  }

  measure: level1000_reach_per10 {
    type: percentile
    percentile: 10
    sql: case when ${milestone_level} = 1000 then ${days_to_milestone} end ;;
    value_format: "##"
  }

  measure: level1000_reach_per25 {
    type: percentile
    percentile: 25
    sql: case when ${milestone_level} = 1000 then ${days_to_milestone} end  ;;
    value_format: "##"
  }

  measure: level1000_reach_per50 {
    type: percentile
    percentile: 50
    sql: case when ${milestone_level} = 1000 then ${days_to_milestone} end  ;;
    value_format: "##"
  }

  measure: level1000_reach_per75 {
    type: percentile
    percentile: 75
    sql: case when ${milestone_level} = 1000 then ${days_to_milestone} end  ;;
    value_format: "##"
  }

  measure: level1000_reach_per90 {
    type: percentile
    percentile: 90
    sql: case when ${milestone_level} = 1000 then ${days_to_milestone} end  ;;
    value_format: "##"
  }
}
