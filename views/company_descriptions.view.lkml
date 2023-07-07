view: company_descriptions {
  sql_table_name: [Pricing_CDM.Company_Descriptions] ;;

  dimension: customer_id {
    type: number
    sql: ${TABLE}.Customer_ID ;;
  }
  dimension: customer_long_description {
    type: string
    sql: ${TABLE}.Customer_Long_Description ;;
  }
  measure: count {
    type: count
    approximate_threshold: 100000
  }
}
