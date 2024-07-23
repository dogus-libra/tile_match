# Define the database connection to be used for this model.
connection: "libraredshiftprod"

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
  join: raw_pdt {
    type: left_outer
    sql_on: ${progression.advertising_id} = ${raw_pdt.idfa_or_gps_adid} ;;
    relationship: many_to_one
  }
  join: users {
    type: left_outer
    sql_on: ${progression.advertising_id} = ${users.advertising_id} ;;
    relationship: many_to_one
  }
}

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: session {}

explore: users {}

explore: tile_match_raw {}

explore: tile_match_cost {}

explore: session_pdt {}

explore: engagement_pdt {}

explore: raw_pdt {}

explore: stdev {}
