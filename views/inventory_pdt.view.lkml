include: "/models/tile_match.model.lkml"

view: inventory_pdt {
  derived_table: {
    distribution: "advertising_id"
    sql:
      SELECT

      "advertising_id",
      "install_dt",
      "country_code",
      "user_platform",
      "app_version",
      "user_os_version",
      DATE_TRUNC('day',"event_dt") as "event_date",
      DATE_TRUNC('day',"arrival_dt") as "arrival_date",

      AVG("inventory_coin") AS "coin_inventory",
      AVG("inventory_environment_token") AS "environment_token_inventory",
      AVG("inventory_extra_slot") AS "extra_slot_inventory",
      AVG("inventory_extra_time") AS "extra_time_inventory",
      AVG("inventory_glove") AS "glove_inventory",
      AVG("inventory_life") AS "life_inventory",
      AVG("inventory_magic_wand") AS "magic_wand_inventory",
      AVG("inventory_magnet") AS "magnet_inventory",
      AVG("inventory_shuffle") AS "shuffle_inventory",
      AVG("inventory_time_freezer") AS "time_freezer_inventory",
      AVG("inventory_toss") AS "toss_inventory",
      AVG("user_level_at")::BIGINT AS "avg_level",

      SUM(CASE WHEN "currency_change_magic_wand_change_amount">0 and "currency_change_magic_wand_change_amount"<50 and "currency_change_magic_wand_amount_type" = 'CountBased' THEN "currency_change_magic_wand_change_amount" END) AS "magic_wand_gain",
      SUM(CASE WHEN "currency_change_magic_wand_change_amount"<0 and "currency_change_magic_wand_amount_type" = 'CountBased' THEN "currency_change_magic_wand_change_amount" END) AS "magic_wand_spend",

      SUM(CASE WHEN "currency_change_life_change_amount">0 and "currency_change_life_change_amount"<50 and "currency_change_life_amount_type" = 'CountBased' THEN "currency_change_life_change_amount" END) AS "life_gain",
      SUM(CASE WHEN "currency_change_life_change_amount"<0 and "currency_change_life_amount_type" = 'CountBased' THEN "currency_change_life_change_amount" END) AS "life_spend",

      SUM(CASE WHEN "currency_change_glove_change_amount">0 and "currency_change_glove_change_amount"<50 and "currency_change_glove_amount_type" = 'CountBased' THEN "currency_change_glove_change_amount" END) AS "glove_gain",
      SUM(CASE WHEN "currency_change_glove_change_amount"<0 and "currency_change_glove_amount_type" = 'CountBased' THEN "currency_change_glove_change_amount" END) AS "glove_spend",

      SUM(CASE WHEN "currency_change_extra_time_change_amount">0 and "currency_change_extra_time_change_amount"<20 and "currency_change_extra_time_amount_type" = 'CountBased' THEN "currency_change_extra_time_change_amount" END) AS "extra_time_gain",
      SUM(CASE WHEN "currency_change_extra_time_change_amount"<0 and "currency_change_extra_time_amount_type" = 'CountBased' THEN "currency_change_extra_time_change_amount" END) AS "extra_time_spend",

      SUM(CASE WHEN "currency_change_extra_slot_change_amount">0 and "currency_change_extra_slot_change_amount"<50 and "currency_change_extra_slot_amount_type" = 'CountBased' THEN "currency_change_extra_slot_change_amount" END) AS "extra_slot_gain",
      SUM(CASE WHEN "currency_change_extra_slot_change_amount"<0 and "currency_change_extra_slot_amount_type" = 'CountBased' THEN "currency_change_extra_slot_change_amount" END) AS "extra_slot_spend",

      SUM(CASE WHEN "currency_change_environment_token_change_amount">0 and "currency_change_environment_token_change_amount"<50 and "currency_change_environment_token_amount_type" = 'CountBased' THEN "currency_change_environment_token_change_amount" END) AS "environment_token_gain",
      SUM(CASE WHEN "currency_change_environment_token_change_amount"<0 and "currency_change_environment_token_amount_type" = 'CountBased' THEN "currency_change_environment_token_change_amount" END) AS "environment_token_spend",

      SUM(CASE WHEN "currency_change_coin_change_amount">0 and "currency_change_coin_change_amount"<5000 and "currency_change_coin_amount_type" = 'CountBased' THEN "currency_change_coin_change_amount" END) AS "coin_gain",
      SUM(CASE WHEN "currency_change_coin_change_amount"<0 and "currency_change_coin_amount_type" = 'CountBased' THEN "currency_change_coin_change_amount" END) AS "coin_spend",

      SUM(CASE WHEN "currency_change_magnet_change_amount">0 and "currency_change_magnet_change_amount"<50 and "currency_change_magnet_amount_type" = 'CountBased' THEN "currency_change_magnet_change_amount" END) AS "magnet_gain",
      SUM(CASE WHEN "currency_change_magnet_change_amount"<0 and "currency_change_magnet_amount_type" = 'CountBased' THEN "currency_change_magnet_change_amount" END) AS "magnet_spend",

      SUM(CASE WHEN "currency_change_shuffle_change_amount">0 and "currency_change_shuffle_change_amount"<50 and "currency_change_shuffle_amount_type" = 'CountBased' THEN "currency_change_shuffle_change_amount" END) AS "shuffle_gain",
      SUM(CASE WHEN "currency_change_shuffle_change_amount"<0 and "currency_change_shuffle_amount_type" = 'CountBased' THEN "currency_change_shuffle_change_amount" END) AS "shuffle_spend",

      SUM(CASE WHEN "currency_change_time_freezer_change_amount">0 and "currency_change_time_freezer_change_amount"<50 and "currency_change_time_freezer_amount_type" = 'CountBased' THEN "currency_change_time_freezer_change_amount" END) AS "time_freezer_gain",
      SUM(CASE WHEN "currency_change_time_freezer_change_amount"<0 and "currency_change_time_freezer_amount_type" = 'CountBased' THEN "currency_change_time_freezer_change_amount" END) AS "time_freezer_spend",

      SUM(CASE WHEN "currency_change_toss_change_amount">0 and "currency_change_toss_change_amount"<50 and "currency_change_toss_amount_type" = 'CountBased' THEN "currency_change_toss_change_amount" END) AS "toss_gain",
      SUM(CASE WHEN "currency_change_toss_change_amount"<0 and "currency_change_toss_amount_type" = 'CountBased' THEN "currency_change_toss_change_amount" END) AS "toss_spend"
      FROM
      (SELECT
      "eventque_business"."arrival_ts" AS "arrival_dt",
      "eventque_business"."event_timestamp" AS "event_dt",
      "eventque_business"."user_country_code" AS "country_code",
      "eventque_business"."user_level_at" AS "user_level_at",
      "eventque_business"."app_version" AS "app_version",
      "eventque_business"."user_os_version" AS "user_os_version",
      case when "eventque_business"."user_platform" = 'Android' then 'android'
           when "eventque_business"."user_platform" = 'IPhonePlayer' then 'ios' end as "user_platform",
      "eventque_business"."advertising_id" AS "advertising_id",
      "eventque_business"."event_name" AS "event_name",
      "eventque_business"."source" AS "currency_change_source",
      "eventque_business"."installed_at" AS "install_dt",
      "eventque_business"."currency_change_coin_current_amount" AS "currency_change_coin_current_amount",
      "eventque_business"."currency_change_coin_change_amount" AS "currency_change_coin_change_amount",
      "eventque_business"."currency_change_coin_amount_type" AS "currency_change_coin_amount_type",
      "eventque_business"."currency_change_environment_token_current_amount" AS "currency_change_environment_token_current_amount",
      "eventque_business"."currency_change_environment_token_change_amount" AS "currency_change_environment_token_change_amount",
      "eventque_business"."currency_change_environment_token_amount_type" AS "currency_change_environment_token_amount_type",
      "eventque_business"."currency_change_extra_slot_current_amount" AS "currency_change_extra_slot_current_amount",
      "eventque_business"."currency_change_extra_slot_change_amount" AS "currency_change_extra_slot_change_amount",
      "eventque_business"."currency_change_extra_slot_amount_type" AS "currency_change_extra_slot_amount_type",
      "eventque_business"."currency_change_extra_time_current_amount" AS "currency_change_extra_time_current_amount",
      "eventque_business"."currency_change_extra_time_change_amount" AS "currency_change_extra_time_change_amount",
      "eventque_business"."currency_change_extra_time_amount_type" AS "currency_change_extra_time_amount_type",
      "eventque_business"."currency_change_glove_current_amount" AS "currency_change_glove_current_amount",
      "eventque_business"."currency_change_glove_change_amount" AS "currency_change_glove_change_amount",
      "eventque_business"."currency_change_glove_amount_type" AS "currency_change_glove_amount_type",
      "eventque_business"."currency_change_life_current_amount" AS "currency_change_life_current_amount",
      "eventque_business"."currency_change_life_change_amount" AS "currency_change_life_change_amount",
      "eventque_business"."currency_change_life_amount_type" AS "currency_change_life_amount_type",
      "eventque_business"."currency_change_magic_wand_current_amount" AS "currency_change_magic_wand_current_amount",
      "eventque_business"."currency_change_magic_wand_change_amount" AS "currency_change_magic_wand_change_amount",
      "eventque_business"."currency_change_magic_wand_amount_type" AS "currency_change_magic_wand_amount_type",
      "eventque_business"."currency_change_magnet_current_amount" AS "currency_change_magnet_current_amount",
      "eventque_business"."currency_change_magnet_change_amount" AS "currency_change_magnet_change_amount",
      "eventque_business"."currency_change_magnet_amount_type" AS "currency_change_magnet_amount_type",
      "eventque_business"."currency_change_shuffle_current_amount" AS "currency_change_shuffle_current_amount",
      "eventque_business"."currency_change_shuffle_change_amount" AS "currency_change_shuffle_change_amount",
      "eventque_business"."currency_change_shuffle_amount_type" AS "currency_change_shuffle_amount_type",
      "eventque_business"."currency_change_time_freezer_current_amount" AS "currency_change_time_freezer_current_amount",
      "eventque_business"."currency_change_time_freezer_change_amount" AS "currency_change_time_freezer_change_amount",
      "eventque_business"."currency_change_time_freezer_amount_type" AS "currency_change_time_freezer_amount_type",
      "eventque_business"."currency_change_toss_current_amount" AS "currency_change_toss_current_amount",
      "eventque_business"."currency_change_toss_change_amount" AS "currency_change_toss_change_amount",
      "eventque_business"."currency_change_toss_amount_type" AS "currency_change_toss_amount_type",
      "eventque_business"."inventory_coin" AS "inventory_coin",
      "eventque_business"."inventory_environment_token" AS "inventory_environment_token",
      "eventque_business"."inventory_extra_slot" AS "inventory_extra_slot",
      "eventque_business"."inventory_extra_time" AS "inventory_extra_time",
      "eventque_business"."inventory_glove" AS "inventory_glove",
      "eventque_business"."inventory_life" AS "inventory_life",
      "eventque_business"."inventory_magic_wand" AS "inventory_magic_wand",
      "eventque_business"."inventory_magnet" AS "inventory_magnet",
      "eventque_business"."inventory_shuffle" AS "inventory_shuffle",
      "eventque_business"."inventory_time_freezer" AS "inventory_time_freezer",
      "eventque_business"."inventory_toss" AS "inventory_toss"

      FROM "tile_match"."business" "eventque_business"

      WHERE "eventque_business"."user_country_code" in ('DE','GB','FR','US','IT','IE','AU','AT','NO','NL','NZ','BE','CA','DK','ES','SE','CH','JP','KR','FI','LU', 'UK')
      AND "eventque_business"."event_name" = 'CurrencyChange'
      AND "eventque_business"."source" not in ('InAppPurchase','RewardedAdComplete','CoinRush','LevelComplete','Debugger')
      ) "dsg"
      WHERE {% incrementcondition %} "arrival_date" {%  endincrementcondition %}
      GROUP BY "event_date", "advertising_id", "install_dt", "country_code", "user_platform", "app_version", "user_os_version","arrival_date"
      ;;


    publish_as_db_view: yes
    sql_trigger_value: SELECT DATE_TRUNC('day',DATEADD('minute', -480 , GETDATE() )  )  ;;
    sortkeys: ["advertising_id", "event_date", "install_dt", "country_code", "user_platform", "app_version","arrival_date"]
    increment_key: "arrival_date"
    increment_offset: 7
  }

  dimension: advertising_id {
    type: string
    sql: ${TABLE}.advertising_id ;;
  }
  dimension: app_version {
    type: string
    sql: ${TABLE}.app_version ;;
  }
  dimension_group: arrival_ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.arrival_ts ;;
  }

  dimension: country_code {
    description: ""
    type: string
  }

  dimension_group: event {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.event_date ;;
  }

  dimension_group: install_dt {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.install_dt ;;
  }

  dimension: level_no {
    type: number
    sql: ${TABLE}.avg_level ;;
  }

  dimension: user_os_version {
    type: string
    sql: ${TABLE}.user_os_version ;;
  }

  dimension: user_platform {
    type: string
    sql: ${TABLE}.user_platform ;;
  }

  dimension: coin_gain {
    description: ""
    type: number
    sql: ${TABLE}.coin_gain;;
  }

  dimension: coin_spend {
    description: ""
    type: number
    sql: abs(${TABLE}.coin_spend) ;;
  }

  dimension: coin_inventory {
    description: ""
    type: number
    sql: ${TABLE}.coin_inventory;;
  }

  dimension: magnet_gain {
    description: ""
    type: number
    sql: ${TABLE}.magnet_gain;;
  }

  dimension: magnet_spend {
    description: ""
    type: number
    sql: abs(${TABLE}.magnet_spend) ;;
  }

  dimension: magnet_inventory {
    description: ""
    type: number
    sql: ${TABLE}.magnet_inventory;;
  }

  dimension: environment_token_gain {
    description: ""
    type: number
    sql: ${TABLE}.environment_token_gain;;
  }

  dimension: environment_token_spend {
    description: ""
    type: number
    sql: abs(${TABLE}.environment_token_spend) ;;
  }

  dimension: environment_token_inventory {
    description: ""
    type: number
    sql: ${TABLE}.environment_token_inventory;;
  }

  dimension: extra_slot_gain {
    description: ""
    type: number
    sql: ${TABLE}.extra_slot_gain;;
  }

  dimension: extra_slot_spend {
    description: ""
    type: number
    sql: abs(${TABLE}.extra_slot_spend) ;;
  }

  dimension: extra_slot_inventory {
    description: ""
    type: number
    sql: ${TABLE}.extra_slot_inventory;;
  }

  dimension: extra_time_gain {
    description: ""
    type: number
    sql: ${TABLE}.extra_time_gain;;
  }

  dimension: extra_time_spend {
    description: ""
    type: number
    sql: abs(${TABLE}.extra_time_spend) ;;
  }

  dimension: extra_time_inventory {
    description: ""
    type: number
    sql: ${TABLE}.extra_time_inventory;;
  }

  dimension: glove_gain {
    description: ""
    type: number
    sql: ${TABLE}.glove_gain;;
  }

  dimension: glove_spend {
    description: ""
    type: number
    sql: abs(${TABLE}.glove_spend) ;;
  }

  dimension: glove_inventory {
    description: ""
    type: number
    sql: ${TABLE}.glove_inventory;;
  }

  dimension: life_gain {
    description: ""
    type: number
    sql: ${TABLE}.life_gain;;
  }

  dimension: life_spend {
    description: ""
    type: number
    sql: abs(${TABLE}.life_spend) ;;
  }

  dimension: life_inventory {
    description: ""
    type: number
    sql: ${TABLE}.life_inventory;;
  }

  dimension: magic_wand_gain {
    description: ""
    type: number
    sql: ${TABLE}.magic_wand_gain;;
  }

  dimension: magic_wand_spend {
    description: ""
    type: number
    sql: abs(${TABLE}.magic_wand_spend) ;;
  }

  dimension: magic_wand_inventory {
    description: ""
    type: number
    sql: ${TABLE}.magic_wand_inventory;;
  }

  dimension: shuffle_gain {
    description: ""
    type: number
    sql: ${TABLE}.shuffle_gain;;
  }

  dimension: shuffle_spend {
    description: ""
    type: number
    sql: abs(${TABLE}.shuffle_spend) ;;
  }

  dimension: shuffle_inventory {
    description: ""
    type: number
    sql: ${TABLE}.shuffle_inventory;;
  }

  dimension: time_freezer_gain {
    description: ""
    type: number
    sql: ${TABLE}.time_freezer_gain;;
  }

  dimension: time_freezer_spend {
    description: ""
    type: number
    sql: abs(${TABLE}.time_freezer_spend) ;;
  }

  dimension: time_freezer_inventory {
    description: ""
    type: number
    sql: ${TABLE}.time_freezer_inventory;;
  }

  dimension: toss_gain {
    description: ""
    type: number
    sql: ${TABLE}.toss_gain;;
  }

  dimension: toss_spend {
    description: ""
    type: number
    sql: abs(${TABLE}.toss_spend) ;;
  }

  dimension: toss_inventory {
    description: ""
    type: number
    sql: ${TABLE}.toss_inventory;;
  }

  measure: count {
    type: count
  }
  measure:coin_gain_avg  {
    type: average
    sql: ${coin_gain};;
    filters: [coin_gain: ">=1 AND <=50000"]
  }
  measure:coin_gain_per10  {
    type: percentile
    percentile: 10
    sql: ${coin_gain} ;;
  }
  measure:coin_gain_per25  {
    type: percentile
    percentile: 25
    sql: ${coin_gain} ;;
  }
  measure:coin_gain_per50  {
    type: percentile
    percentile: 50
    sql: ${coin_gain} ;;
  }
  measure:coin_gain_per75  {
    type: percentile
    percentile: 75
    sql: ${coin_gain} ;;
  }
  measure:coin_gain_per90  {
    type: percentile
    percentile: 90
    sql: ${coin_gain} ;;
  }
  measure:coin_spend_avg  {
    type: average
    sql: ${coin_spend} ;;
    filters: [coin_spend: ">=1 AND <=50000"]
  }
  measure:coin_spend_per10  {
    type: percentile
    percentile: 10
    sql: ${coin_spend} ;;
  }
  measure:coin_spend_per25  {
    type: percentile
    percentile: 25
    sql: ${coin_spend} ;;
  }
  measure:coin_spend_per50  {
    type: percentile
    percentile: 50
    sql: ${coin_spend} ;;
  }
  measure:coin_spend_per75  {
    type: percentile
    percentile: 75
    sql: ${coin_spend} ;;
  }
  measure:coin_spend_per90  {
    type: percentile
    percentile: 90
    sql: ${coin_spend} ;;
  }
  measure:coin_inventory_avg  {
    type: average
    sql: ${coin_inventory} ;;
  }
  measure:coin_inventory_per10  {
    type: percentile
    percentile: 10
    sql: ${coin_inventory} ;;
  }
  measure:coin_inventory_per25  {
    type: percentile
    percentile: 25
    sql: ${coin_inventory} ;;
  }
  measure:coin_inventory_per50  {
    type: percentile
    percentile: 50
    sql: ${coin_inventory} ;;
  }
  measure:coin_inventory_per75  {
    type: percentile
    percentile: 75
    sql: ${coin_inventory} ;;
  }
  measure:coin_inventory_per90  {
    type: percentile
    percentile: 90
    sql: ${coin_inventory} ;;
  }
  measure:environment_token_gain_avg  {
    type: average
    sql: ${environment_token_gain};;
  }
  measure:environment_token_gain_per10  {
    type: percentile
    percentile: 10
    sql: ${environment_token_gain} ;;
  }
  measure:environment_token_gain_per25  {
    type: percentile
    percentile: 25
    sql: ${environment_token_gain} ;;
  }
  measure:environment_token_gain_per50  {
    type: percentile
    percentile: 50
    sql: ${environment_token_gain} ;;
  }
  measure:environment_token_gain_per75  {
    type: percentile
    percentile: 75
    sql: ${environment_token_gain} ;;
  }
  measure:environment_token_gain_per90  {
    type: percentile
    percentile: 90
    sql: ${environment_token_gain} ;;
  }
  measure:environment_token_spend_avg  {
    type: average
    sql: ${environment_token_spend} ;;
  }
  measure:environment_token_spend_per10  {
    type: percentile
    percentile: 10
    sql: ${environment_token_spend} ;;
  }
  measure:environment_token_spend_per25  {
    type: percentile
    percentile: 25
    sql: ${environment_token_spend} ;;
  }
  measure:environment_token_spend_per50  {
    type: percentile
    percentile: 50
    sql: ${environment_token_spend} ;;
  }
  measure:environment_token_spend_per75  {
    type: percentile
    percentile: 75
    sql: ${environment_token_spend} ;;
  }
  measure:environment_token_spend_per90  {
    type: percentile
    percentile: 90
    sql: ${environment_token_spend} ;;
  }
  measure:environment_token_inventory_avg  {
    type: average
    sql: ${environment_token_inventory} ;;
  }
  measure:environment_token_inventory_per10  {
    type: percentile
    percentile: 10
    sql: ${environment_token_inventory} ;;
  }
  measure:environment_token_inventory_per25  {
    type: percentile
    percentile: 25
    sql: ${environment_token_inventory} ;;
  }
  measure:environment_token_inventory_per50  {
    type: percentile
    percentile: 50
    sql: ${environment_token_inventory} ;;
  }
  measure:environment_token_inventory_per75  {
    type: percentile
    percentile: 75
    sql: ${environment_token_inventory} ;;
  }
  measure:environment_token_inventory_per90  {
    type: percentile
    percentile: 90
    sql: ${environment_token_inventory} ;;
  }
  measure:extra_slot_gain_avg  {
    type: average
    sql: ${extra_slot_gain};;
  }
  measure:extra_slot_gain_per10  {
    type: percentile
    percentile: 10
    sql: ${extra_slot_gain} ;;
  }
  measure:extra_slot_gain_per25  {
    type: percentile
    percentile: 25
    sql: ${extra_slot_gain} ;;
  }
  measure:extra_slot_gain_per50  {
    type: percentile
    percentile: 50
    sql: ${extra_slot_gain} ;;
  }
  measure:extra_slot_gain_per75  {
    type: percentile
    percentile: 75
    sql: ${extra_slot_gain} ;;
  }
  measure:extra_slot_gain_per90  {
    type: percentile
    percentile: 90
    sql: ${extra_slot_gain} ;;
  }
  measure:extra_slot_spend_avg  {
    type: average
    sql: ${extra_slot_spend} ;;
  }
  measure:extra_slot_spend_per10  {
    type: percentile
    percentile: 10
    sql: ${extra_slot_spend} ;;
  }
  measure:extra_slot_spend_per25  {
    type: percentile
    percentile: 25
    sql: ${extra_slot_spend} ;;
  }
  measure:extra_slot_spend_per50  {
    type: percentile
    percentile: 50
    sql: ${extra_slot_spend} ;;
  }
  measure:extra_slot_spend_per75  {
    type: percentile
    percentile: 75
    sql: ${extra_slot_spend} ;;
  }
  measure:extra_slot_spend_per90  {
    type: percentile
    percentile: 90
    sql: ${extra_slot_spend} ;;
  }
  measure:extra_slot_inventory_avg  {
    type: average
    sql: ${extra_slot_inventory} ;;
  }
  measure:extra_slot_inventory_per10  {
    type: percentile
    percentile: 10
    sql: ${extra_slot_inventory} ;;
  }
  measure:extra_slot_inventory_per25  {
    type: percentile
    percentile: 25
    sql: ${extra_slot_inventory} ;;
  }
  measure:extra_slot_inventory_per50  {
    type: percentile
    percentile: 50
    sql: ${extra_slot_inventory} ;;
  }
  measure:extra_slot_inventory_per75  {
    type: percentile
    percentile: 75
    sql: ${extra_slot_inventory} ;;
  }
  measure:extra_slot_inventory_per90  {
    type: percentile
    percentile: 90
    sql: ${extra_slot_inventory} ;;
  }
  measure:extra_time_gain_avg  {
    type: average
    sql: ${extra_time_gain};;
  }
  measure:extra_time_gain_per10  {
    type: percentile
    percentile: 10
    sql: ${extra_time_gain} ;;
  }
  measure:extra_time_gain_per25  {
    type: percentile
    percentile: 25
    sql: ${extra_time_gain} ;;
  }
  measure:extra_time_gain_per50  {
    type: percentile
    percentile: 50
    sql: ${extra_time_gain} ;;
  }
  measure:extra_time_gain_per75  {
    type: percentile
    percentile: 75
    sql: ${extra_time_gain} ;;
  }
  measure:extra_time_gain_per90  {
    type: percentile
    percentile: 90
    sql: ${extra_time_gain} ;;
  }
  measure:extra_time_spend_avg  {
    type: average
    sql: ${extra_time_spend} ;;
  }
  measure:extra_time_spend_per10  {
    type: percentile
    percentile: 10
    sql: ${extra_time_spend} ;;
  }
  measure:extra_time_spend_per25  {
    type: percentile
    percentile: 25
    sql: ${extra_time_spend};;
    }
  measure:extra_time_spend_per50  {
    type: percentile
    percentile: 50
    sql: ${extra_time_spend} ;;
  }
  measure:extra_time_spend_per75  {
    type: percentile
    percentile: 75
    sql: ${extra_time_spend} ;;
  }
  measure:extra_time_spend_per90  {
    type: percentile
    percentile: 90
    sql: ${extra_time_spend} ;;
  }
  measure:extra_time_inventory_avg  {
    type: average
    sql: ${extra_time_inventory} ;;
  }
  measure:extra_time_inventory_per10  {
    type: percentile
    percentile: 10
    sql: ${extra_time_inventory} ;;
  }
  measure:extra_time_inventory_per25  {
    type: percentile
    percentile: 25
    sql: ${extra_time_inventory} ;;
  }
  measure:extra_time_inventory_per50  {
    type: percentile
    percentile: 50
    sql: ${extra_time_inventory} ;;
  }
  measure:extra_time_inventory_per75  {
    type: percentile
    percentile: 75
    sql: ${extra_time_inventory} ;;
  }
  measure:extra_time_inventory_per90  {
    type: percentile
    percentile: 90
    sql: ${extra_time_inventory} ;;
  }
  measure:glove_gain_avg  {
    type: average
    sql: ${glove_gain};;
  }
  measure:glove_gain_per10  {
    type: percentile
    percentile: 10
    sql: ${glove_gain} ;;
  }
  measure:glove_gain_per25  {
    type: percentile
    percentile: 25
    sql: ${glove_gain} ;;
  }
  measure:glove_gain_per50  {
    type: percentile
    percentile: 50
    sql: ${glove_gain} ;;
  }
  measure:glove_gain_per75  {
    type: percentile
    percentile: 75
    sql: ${glove_gain} ;;
  }
  measure:glove_gain_per90  {
    type: percentile
    percentile: 90
    sql: ${glove_gain} ;;
  }
  measure:glove_spend_avg  {
    type: average
    sql: ${glove_spend} ;;
  }
  measure:glove_spend_per10  {
    type: percentile
    percentile: 10
    sql: ${glove_spend} ;;
  }
  measure:glove_spend_per25  {
    type: percentile
    percentile: 25
    sql: ${glove_spend} ;;
  }
  measure:glove_spend_per50  {
    type: percentile
    percentile: 50
    sql: ${glove_spend} ;;
  }
  measure:glove_spend_per75  {
    type: percentile
    percentile: 75
    sql: ${glove_spend} ;;
  }
  measure:glove_spend_per90  {
    type: percentile
    percentile: 90
    sql: ${glove_spend} ;;
  }
  measure:glove_inventory_avg  {
    type: average
    sql: ${glove_inventory} ;;
  }
  measure:glove_inventory_per10  {
    type: percentile
    percentile: 10
    sql: ${glove_inventory} ;;
  }
  measure:glove_inventory_per25  {
    type: percentile
    percentile: 25
    sql: ${glove_inventory} ;;
  }
  measure:glove_inventory_per50  {
    type: percentile
    percentile: 50
    sql: ${glove_inventory} ;;
  }
  measure:glove_inventory_per75  {
    type: percentile
    percentile: 75
    sql: ${glove_inventory} ;;
  }
  measure:glove_inventory_per90  {
    type: percentile
    percentile: 90
    sql: ${glove_inventory} ;;
  }
  measure:life_gain_avg  {
    type: average
    sql: ${life_gain};;
  }
  measure:life_gain_per10  {
    type: percentile
    percentile: 10
    sql: ${life_gain} ;;
  }
  measure:life_gain_per25  {
    type: percentile
    percentile: 25
    sql: ${life_gain} ;;
  }
  measure:life_gain_per50  {
    type: percentile
    percentile: 50
    sql: ${life_gain} ;;
  }
  measure:life_gain_per75  {
    type: percentile
    percentile: 75
    sql: ${life_gain} ;;
  }
  measure:life_gain_per90  {
    type: percentile
    percentile: 90
    sql: ${life_gain} ;;
  }
  measure:life_spend_avg  {
    type: average
    sql: ${life_spend} ;;
  }
  measure:life_spend_per10  {
    type: percentile
    percentile: 10
    sql: ${life_spend} ;;
  }
  measure:life_spend_per25  {
    type: percentile
    percentile: 25
    sql: ${life_spend} ;;
  }
  measure:life_spend_per50  {
    type: percentile
    percentile: 50
    sql: ${life_spend} ;;
  }
  measure:life_spend_per75  {
    type: percentile
    percentile: 75
    sql: ${life_spend} ;;
  }
  measure:life_spend_per90  {
    type: percentile
    percentile: 90
    sql: ${life_spend} ;;
  }
  measure:life_inventory_avg  {
    type: average
    sql: ${life_inventory} ;;
  }
  measure:life_inventory_per10  {
    type: percentile
    percentile: 10
    sql: ${life_inventory} ;;
  }
  measure:life_inventory_per25  {
    type: percentile
    percentile: 25
    sql: ${life_inventory} ;;
  }
  measure:life_inventory_per50  {
    type: percentile
    percentile: 50
    sql: ${life_inventory} ;;
  }
  measure:life_inventory_per75  {
    type: percentile
    percentile: 75
    sql: ${life_inventory} ;;
  }
  measure:life_inventory_per90  {
    type: percentile
    percentile: 90
    sql: ${life_inventory} ;;
  }
  measure:magic_wand_gain_avg  {
    type: average
    sql: ${magic_wand_gain};;
  }
  measure:magic_wand_gain_per10  {
    type: percentile
    percentile: 10
    sql: ${magic_wand_gain} ;;
  }
  measure:magic_wand_gain_per25  {
    type: percentile
    percentile: 25
    sql: ${magic_wand_gain} ;;
  }
  measure:magic_wand_gain_per50  {
    type: percentile
    percentile: 50
    sql: ${magic_wand_gain} ;;
  }
  measure:magic_wand_gain_per75  {
    type: percentile
    percentile: 75
    sql: ${magic_wand_gain} ;;
  }
  measure:magic_wand_gain_per90  {
    type: percentile
    percentile: 90
    sql: ${magic_wand_gain} ;;
  }
  measure:magic_wand_spend_avg  {
    type: average
    sql: ${magic_wand_spend} ;;
  }
  measure:magic_wand_spend_per10  {
    type: percentile
    percentile: 10
    sql: ${magic_wand_spend} ;;
  }
  measure:magic_wand_spend_per25  {
    type: percentile
    percentile: 25
    sql: ${magic_wand_spend} ;;
  }
  measure:magic_wand_spend_per50  {
    type: percentile
    percentile: 50
    sql: ${magic_wand_spend} ;;
  }
  measure:magic_wand_spend_per75  {
    type: percentile
    percentile: 75
    sql: ${magic_wand_spend} ;;
  }
  measure:magic_wand_spend_per90  {
    type: percentile
    percentile: 90
    sql: ${magic_wand_spend} ;;
  }
  measure:magic_wand_inventory_avg  {
    type: average
    sql: ${magic_wand_inventory} ;;
  }
  measure:magic_wand_inventory_per10  {
    type: percentile
    percentile: 10
    sql: ${magic_wand_inventory} ;;
  }
  measure:magic_wand_inventory_per25  {
    type: percentile
    percentile: 25
    sql: ${magic_wand_inventory} ;;
  }
  measure:magic_wand_inventory_per50  {
    type: percentile
    percentile: 50
    sql: ${magic_wand_inventory} ;;
  }
  measure:magic_wand_inventory_per75  {
    type: percentile
    percentile: 75
    sql: ${magic_wand_inventory} ;;
  }
  measure:magic_wand_inventory_per90  {
    type: percentile
    percentile: 90
    sql: ${magic_wand_inventory} ;;
  }
  measure:magnet_gain_avg  {
    type: average
    sql: ${magnet_gain};;
  }
  measure:magnet_gain_per10  {
    type: percentile
    percentile: 10
    sql: ${magnet_gain} ;;
  }
  measure:magnet_gain_per25  {
    type: percentile
    percentile: 25
    sql: ${magnet_gain} ;;
  }
  measure:magnet_gain_per50  {
    type: percentile
    percentile: 50
    sql: ${magnet_gain} ;;
  }
  measure:magnet_gain_per75  {
    type: percentile
    percentile: 75
    sql: ${magnet_gain} ;;
  }
  measure:magnet_gain_per90  {
    type: percentile
    percentile: 90
    sql: ${magnet_gain} ;;
  }
  measure:magnet_spend_avg  {
    type: average
    sql: ${magnet_spend} ;;
  }
  measure:magnet_spend_per10  {
    type: percentile
    percentile: 10
    sql: ${magnet_spend} ;;
  }
  measure:magnet_spend_per25  {
    type: percentile
    percentile: 25
    sql: ${magnet_spend} ;;
  }
  measure:magnet_spend_per50  {
    type: percentile
    percentile: 50
    sql: ${magnet_spend} ;;
  }
  measure:magnet_spend_per75  {
    type: percentile
    percentile: 75
    sql: ${magnet_spend} ;;
  }
  measure:magnet_spend_per90  {
    type: percentile
    percentile: 90
    sql: ${magnet_spend} ;;
  }
  measure:magnet_inventory_avg  {
    type: average
    sql: ${magnet_inventory} ;;
  }
  measure:magnet_inventory_per10  {
    type: percentile
    percentile: 10
    sql: ${magnet_inventory} ;;
  }
  measure:magnet_inventory_per25  {
    type: percentile
    percentile: 25
    sql: ${magnet_inventory} ;;
  }
  measure:magnet_inventory_per50  {
    type: percentile
    percentile: 50
    sql: ${magnet_inventory} ;;
  }
  measure:magnet_inventory_per75  {
    type: percentile
    percentile: 75
    sql: ${magnet_inventory} ;;
  }
  measure:magnet_inventory_per90  {
    type: percentile
    percentile: 90
    sql: ${magnet_inventory} ;;
  }
  measure:shuffle_gain_avg  {
    type: average
    sql: ${shuffle_gain};;
  }
  measure:shuffle_gain_per10  {
    type: percentile
    percentile: 10
    sql: ${shuffle_gain} ;;
  }
  measure:shuffle_gain_per25  {
    type: percentile
    percentile: 25
    sql: ${shuffle_gain} ;;
  }
  measure:shuffle_gain_per50  {
    type: percentile
    percentile: 50
    sql: ${shuffle_gain} ;;
  }
  measure:shuffle_gain_per75  {
    type: percentile
    percentile: 75
    sql: ${shuffle_gain} ;;
  }
  measure:shuffle_gain_per90  {
    type: percentile
    percentile: 90
    sql: ${shuffle_gain} ;;
  }
  measure:shuffle_spend_avg  {
    type: average
    sql: ${shuffle_spend} ;;
  }
  measure:shuffle_spend_per10  {
    type: percentile
    percentile: 10
    sql: ${shuffle_spend} ;;
  }
  measure:shuffle_spend_per25  {
    type: percentile
    percentile: 25
    sql: ${shuffle_spend} ;;
  }
  measure:shuffle_spend_per50  {
    type: percentile
    percentile: 50
    sql: ${shuffle_spend} ;;
  }
  measure:shuffle_spend_per75  {
    type: percentile
    percentile: 75
    sql: ${shuffle_spend} ;;
  }
  measure:shuffle_spend_per90  {
    type: percentile
    percentile: 90
    sql: ${shuffle_spend} ;;
  }
  measure:shuffle_inventory_avg  {
    type: average
    sql: ${shuffle_inventory} ;;
  }
  measure:shuffle_inventory_per10  {
    type: percentile
    percentile: 10
    sql: ${shuffle_inventory} ;;
  }
  measure:shuffle_inventory_per25  {
    type: percentile
    percentile: 25
    sql: ${shuffle_inventory} ;;
  }
  measure:shuffle_inventory_per50  {
    type: percentile
    percentile: 50
    sql: ${shuffle_inventory} ;;
  }
  measure:shuffle_inventory_per75  {
    type: percentile
    percentile: 75
    sql: ${shuffle_inventory} ;;
  }
  measure:shuffle_inventory_per90  {
    type: percentile
    percentile: 90
    sql: ${shuffle_inventory} ;;
  }
  measure:time_freezer_gain_avg  {
    type: average
    sql: ${time_freezer_gain};;
  }
  measure:time_freezer_gain_per10  {
    type: percentile
    percentile: 10
    sql: ${time_freezer_gain} ;;
  }
  measure:time_freezer_gain_per25  {
    type: percentile
    percentile: 25
    sql: ${time_freezer_gain} ;;
  }
  measure:time_freezer_gain_per50  {
    type: percentile
    percentile: 50
    sql: ${time_freezer_gain} ;;
  }
  measure:time_freezer_gain_per75  {
    type: percentile
    percentile: 75
    sql: ${time_freezer_gain} ;;
  }
  measure:time_freezer_gain_per90  {
    type: percentile
    percentile: 90
    sql: ${time_freezer_gain} ;;
  }
  measure:time_freezer_spend_avg  {
    type: average
    sql: ${time_freezer_spend} ;;
  }
  measure:time_freezer_spend_per10  {
    type: percentile
    percentile: 10
    sql: ${time_freezer_spend} ;;
  }
  measure:time_freezer_spend_per25  {
    type: percentile
    percentile: 25
    sql: ${time_freezer_spend} ;;
  }
  measure:time_freezer_spend_per50  {
    type: percentile
    percentile: 50
    sql: ${time_freezer_spend} ;;
  }
  measure:time_freezer_spend_per75  {
    type: percentile
    percentile: 75
    sql: ${time_freezer_spend} ;;
  }
  measure:time_freezer_spend_per90  {
    type: percentile
    percentile: 90
    sql: ${time_freezer_spend} ;;
  }
  measure:time_freezer_inventory_avg  {
    type: average
    sql: ${time_freezer_inventory} ;;
  }
  measure:time_freezer_inventory_per10  {
    type: percentile
    percentile: 10
    sql: ${time_freezer_inventory} ;;
  }
  measure:time_freezer_inventory_per25  {
    type: percentile
    percentile: 25
    sql: ${time_freezer_inventory} ;;
  }
  measure:time_freezer_inventory_per50  {
    type: percentile
    percentile: 50
    sql: ${time_freezer_inventory} ;;
  }
  measure:time_freezer_inventory_per75  {
    type: percentile
    percentile: 75
    sql: ${time_freezer_inventory} ;;
  }
  measure:time_freezer_inventory_per90  {
    type: percentile
    percentile: 90
    sql: ${time_freezer_inventory} ;;
  }
  measure:toss_gain_avg  {
    type: average
    sql: ${toss_gain};;
  }
  measure:toss_gain_per10  {
    type: percentile
    percentile: 10
    sql: ${toss_gain} ;;
  }
  measure:tosstoss_gain_per25  {
    type: percentile
    percentile: 25
    sql: ${toss_gain} ;;
  }
  measure:toss_gain_per50  {
    type: percentile
    percentile: 50
    sql: ${toss_gain} ;;
  }
  measure:toss_gain_per75  {
    type: percentile
    percentile: 75
    sql: ${toss_gain} ;;
  }
  measure:toss_gain_per90  {
    type: percentile
    percentile: 90
    sql: ${toss_gain} ;;
  }
  measure:toss_spend_avg  {
    type: average
    sql: ${toss_spend} ;;
  }
  measure:toss_spend_per10  {
    type: percentile
    percentile: 10
    sql: ${toss_spend} ;;
  }
  measure:toss_spend_per25  {
    type: percentile
    percentile: 25
    sql: ${toss_spend} ;;
  }
  measure:toss_spend_per50  {
    type: percentile
    percentile: 50
    sql: ${toss_spend} ;;
  }
  measure:toss_spend_per75  {
    type: percentile
    percentile: 75
    sql: ${toss_spend} ;;
  }
  measure:toss_spend_per90  {
    type: percentile
    percentile: 90
    sql: ${toss_spend} ;;
  }
  measure:toss_inventory_avg  {
    type: average
    sql: ${toss_inventory} ;;
  }
  measure:toss_inventory_per10  {
    type: percentile
    percentile: 10
    sql: ${toss_inventory} ;;
  }
  measure:toss_inventory_per25  {
    type: percentile
    percentile: 25
    sql: ${toss_inventory} ;;
  }
  measure:toss_inventory_per50  {
    type: percentile
    percentile: 50
    sql: ${toss_inventory} ;;
  }
  measure:toss_inventory_per75  {
    type: percentile
    percentile: 75
    sql: ${toss_inventory} ;;
  }
  measure:toss_inventory_per90  {
    type: percentile
    percentile: 90
    sql: ${toss_inventory} ;;
  }
}
