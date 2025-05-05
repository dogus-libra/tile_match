view: firebase_test {
  derived_table: {
    distribution: "advertising_id"
    sql:  select advertising_id,
          max((case when test_routing_value::smallint>=0 and test_routing_value::smallint<=50 then '0'
                    when test_routing_value::smallint>50 and test_routing_value::smallint<=100 then '1'
               end)) as routing_group,
          max(firebase_exp_77) as exp_77,
          max(firebase_exp_78) as exp_78,
          max(firebase_exp_79) as exp_79
          from "tile_match"."firebase_daily_user" "fb"
          group by advertising_id
    ;;
    publish_as_db_view: yes
    sql_trigger_value: select DATE_TRUNC('day',DATEADD('minute', -540 , getdate() )  )  ;;
    sortkeys: ["advertising_id"]
  }

  dimension: advertising_id {
    type: string
    sql: ${TABLE}.advertising_id ;;
  }

  dimension: routing_group {
    type: string
    sql: ${TABLE}.routing_group ;;
  }
  dimension: exp_77 {
    type: string
    sql: ${TABLE}.exp_77 ;;
  }

  dimension: exp_78 {
    type: string
    sql: ${TABLE}.exp_78 ;;
  }

  dimension: exp_79 {
    type: string
    sql: ${TABLE}.exp_79 ;;
  }

  dimension: EasyMode_And_Difficulty_iOS_testgroup {
    type:string
    sql: case when ${exp_77}='0' then 'Dynamic Off Blended Default'
              when ${exp_77}='1' then 'Dynamic Off Blended Easy'
              when ${exp_77}='2' then 'Dynamic On Blended Easy'
              when ${exp_77}='3' then 'Dynamic On Blended Default' end ;;
  }

  dimension: Difficulty_iOS_testgroup {
    type:string
    sql: case when ${exp_78}='0' then 'Dynamic Off'
              when ${exp_78}='1' then 'Dynamic On' end ;;
  }

  dimension: Difficulty_Android_testgroup {
    type:string
    sql: case when ${exp_79}='0' then 'Dynamic Off'
              when ${exp_79}='1' then 'Dynamic On' end ;;
  }

}
