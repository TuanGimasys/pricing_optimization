connection: "pricing_cdm_standard"

# include all the dashboards
include: "/dashboards/*.dashboard.lookml"
# include all the views
include: "/views/**/*.view.lkml"

datagroup: pricing_optimization_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: pricing_optimization_default_datagroup

# NOTE: please see https://cloud.google.com/looker/docs/r/sql/bigquery?version=23.10
# NOTE: for BigQuery specific considerations

explore: cdm_pricing {
  label: "Pricing Optimization"
}

explore: price_changes {
  label: "Price Changes"
}

explore: forecasting {
  join: pricing {
    relationship: many_to_one
    sql_on: ${forecasting.product_id} = ${pricing.product_id} ;;
  }
}
