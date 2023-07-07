view: cdm_pricing {
  label: "Pricing Optimization"
  sql_table_name: [Pricing_CDM.CDM_Pricing] ;;

  dimension: cash_discounts_and_other_sales_deductions {
    type: number
    sql: ${TABLE}.Cash_Discounts_and_other_Sales_Deductions ;;
  }
  dimension: channel {
    type: string
    sql: ${TABLE}.Channel ;;
  }
  dimension: client_id {
    type: number
    sql: ${TABLE}.Client_ID ;;
  }
  dimension: customer_code {
    type: number
    sql: ${TABLE}.Customer_code ;;
  }
  dimension: customer_hierarchy {
    type: string
    sql: ${TABLE}.Customer_Hierarchy ;;
  }
  dimension: customer_long_description {
    type: string
    sql: ${TABLE}.Customer_Long_Description ;;
  }
  dimension: division {
    type: string
    sql: ${TABLE}.Division ;;
  }
  dimension_group: fiscal {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Fiscal_Date ;;
  }
  dimension: fixed_production_costs_std {
    type: number
    sql: ${TABLE}.Fixed_Production_Costs_STD ;;
  }
  dimension: gross_margin_after_logistics {
    type: number
    sql: ${TABLE}.Gross_Margin_After_Logistics ;;
  }
  dimension: gross_sales {
    type: number
    sql: ${TABLE}.Gross_Sales ;;
  }
  dimension: invoiced_quantity_in_pieces {
    type: number
    sql: ${TABLE}.Invoiced_quantity_in_Pieces ;;
  }
  dimension: key_account_manager {
    type: number
    sql: ${TABLE}.Key_Account_Manager ;;
  }
  dimension: key_account_manager_description {
    type: string
    sql: ${TABLE}.Key_Account_Manager_Description ;;
  }
  dimension: list_price_converged {
    type: number
    sql: ${TABLE}.List_Price_Converged ;;
  }
  dimension: market {
    type: string
    sql: ${TABLE}.Market ;;
  }
  dimension: net_sales {
    type: number
    sql: ${TABLE}.Net_Sales ;;
  }
  dimension: other_cost_of_sales {
    type: number
    sql: ${TABLE}.Other_Cost_of_Sales ;;
  }
  dimension: product_id {
    type: string
    sql: ${TABLE}.Product_ID ;;
  }
  dimension: standard_gross_margin {
    type: number
    sql: ${TABLE}.Standard_Gross_Margin ;;
  }
  dimension: struct {
    type: string
    sql: ${TABLE}.Struct ;;
  }
  dimension: trade_budget_costs {
    type: string
    sql: ${TABLE}.Trade_Budget_Costs ;;
  }
  dimension: transportation_std {
    type: number
    sql: ${TABLE}.Transportation_STD ;;
  }
  dimension: variable_production_costs_std {
    type: number
    sql: ${TABLE}.Variable_Production_Costs_STD ;;
  }
  dimension: warehouse_std {
    type: number
    sql: ${TABLE}.Warehouse_STD ;;
  }
  measure: count {
    type: count
    approximate_threshold: 100000
  }
}
