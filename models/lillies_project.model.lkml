connection: "thelook"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: lillies_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: lillies_project_default_datagroup

explore: flights{}
