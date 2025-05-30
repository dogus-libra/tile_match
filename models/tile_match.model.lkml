# Define the database connection to be used for this model.
connection: "proudestprod"

# include all the views
include: "/views/**/*.view.lkml"
include: "/**/*.dashboard.lookml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: tile_match_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: tile_match_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Fruits"

explore: progression {
  join: session {
    type: left_outer
    sql_on: ${progression.session_id} = ${session.session_id} ;;
    relationship: many_to_one
  }
  join: users_pdt {
    type: left_outer
    sql_on: ${progression.advertising_id} = ${users_pdt.advertising_id} ;;
    relationship: many_to_one
  }
  join: firebase_test {
    type: left_outer
    relationship: many_to_one
    sql_on: ${progression.user_id}=${firebase_test.advertising_id}  ;;
  }
}

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: session {
  join: users_pdt {
    type: left_outer
    sql_on: ${session.advertising_id} = ${users_pdt.advertising_id} ;;
    relationship: many_to_one
  }
  join: firebase_test {
    type: left_outer
    relationship: many_to_one
    sql_on: ${session.user_id}=${firebase_test.advertising_id}  ;;
  }
}

explore: business {
  join: users_pdt {
    type: left_outer
    sql_on: ${business.advertising_id} = ${users_pdt.advertising_id} ;;
    relationship: many_to_one
  }
  join: firebase_test {
    type: left_outer
    relationship: many_to_one
    sql_on: ${business.user_id}=${firebase_test.advertising_id}  ;;
  }
}

explore: live_ops {
  join: users_pdt {
    type: left_outer
    sql_on: ${live_ops.advertising_id} = ${users_pdt.advertising_id} ;;
    relationship: many_to_one
  }
}

explore: users_pdt {
  join: progression {
    relationship: one_to_many
    sql_on: ${users_pdt.advertising_id}=${progression.advertising_id}  ;;
  }
  join: session {
    relationship: one_to_many
    sql_on: ${users_pdt.advertising_id}=${session.advertising_id}  ;;
  }
  join: live_ops {
    relationship: one_to_many
    sql_on: ${users_pdt.advertising_id}=${live_ops.advertising_id}  ;;
  }
  join: monitoring {
    relationship: one_to_many
    sql_on: ${users_pdt.advertising_id}=${monitoring.advertising_id}  ;;
  }
  join: business {
    relationship: one_to_many
    sql_on: ${users_pdt.advertising_id}=${business.advertising_id}  ;;
  }
  join: firebase_test {
    relationship: one_to_one
    sql_on: ${users_pdt.advertising_id}=${firebase_test.advertising_id}  ;;
  }
}

explore: tile_match_raw {}

explore: tile_match_cost {}

explore: session_pdt {
  join: firebase_test {
    type: left_outer
    relationship: many_to_one
    sql_on: ${session_pdt.user_id}=${firebase_test.advertising_id}  ;;
  }
}

explore: engagement_pdt {
  join: users_pdt {
    type: left_outer
    sql_on: ${engagement_pdt.advertising_id} = ${users_pdt.advertising_id} ;;
    relationship: many_to_one
  }
  join: firebase_test {
    type: left_outer
    relationship: many_to_one
    sql_on: ${engagement_pdt.user_id}=${firebase_test.advertising_id}  ;;
  }
}

explore: progression_pdt {
  join: users_pdt {
    type: left_outer
    sql_on: ${progression_pdt.advertising_id} = ${users_pdt.advertising_id} ;;
    relationship: many_to_one
  }
}


explore: stdev {
  join: users_pdt {
    type: left_outer
    sql_on: ${stdev.advertising_id} = ${users_pdt.advertising_id} ;;
    relationship: many_to_one
  }
}

explore: monitoring {
  join: users_pdt {
    type: left_outer
    sql_on: ${monitoring.advertising_id} = ${users_pdt.advertising_id} ;;
    relationship: many_to_one
  }
  join: firebase_test {
    relationship: many_to_one
    sql_on: ${monitoring.user_id}=${firebase_test.advertising_id}  ;;
  }
}

explore: max_attempt_ndt {
  join: users_pdt {
    type: left_outer
    sql_on: ${max_attempt_ndt.advertising_id} = ${users_pdt.advertising_id} ;;
    relationship: many_to_one
  }
}

explore: progression2_pdt {
  join: users_pdt {
    type: left_outer
    sql_on: ${progression2_pdt.advertising_id} = ${users_pdt.advertising_id} ;;
    relationship: many_to_one
  }
}

explore: session2_pdt {
  join: users_pdt {
    type: left_outer
    sql_on: ${session2_pdt.advertising_id} = ${users_pdt.advertising_id} ;;
    relationship: many_to_one
  }
}

explore: active_users {}

explore: tile_pass_ndt {
  join: users_pdt {
    type: left_outer
    sql_on: ${tile_pass_ndt.advertising_id} = ${users_pdt.advertising_id} ;;
    relationship: many_to_one
  }
}

explore: goodwill_tile_cost {}

explore: goodwill_tile_raw {
  join: users_pdt {
    type: left_outer
    sql_on: ${goodwill_tile_raw.appsflyer_id} = ${users_pdt.user_apps_flyer_id} OR ${goodwill_tile_raw.customer_user_id} = ${users_pdt.user_id} ;;
    relationship: many_to_one
  }
}

explore: cost_union_pdt {}

explore: ad_revenue {
  join: users_pdt {
    type: left_outer
    sql_on: ${ad_revenue.appsflyer_id} = ${users_pdt.user_apps_flyer_id} OR ${ad_revenue.customer_user_id} = ${users_pdt.user_id} ;;
    relationship: many_to_one
  }
}

explore: first_time_payer {}

explore: inventory_pdt {
  join: users_pdt {
    type: left_outer
    sql_on: ${inventory_pdt.advertising_id} = ${users_pdt.advertising_id} ;;
    relationship: many_to_one
  }
}

explore: inventory2_pdt {
  join: users_pdt {
    type: left_outer
    sql_on: ${inventory2_pdt.advertising_id} = ${users_pdt.advertising_id} ;;
    relationship: many_to_one
  }
}

explore: firebase_test {}

explore: eventque_union {}

explore: progression3_pdt {
  join: users_pdt {
    type: left_outer
    sql_on: ${progression3_pdt.advertising_id} = ${users_pdt.advertising_id} ;;
    relationship: many_to_one
  }
}

explore: streak_inventory_pdt {
  join: users_pdt {
    type: left_outer
    sql_on: ${streak_inventory_pdt.advertising_id} = ${users_pdt.advertising_id} ;;
    relationship: many_to_one
  }
}
