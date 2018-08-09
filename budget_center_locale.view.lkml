view: budget_center_locale {
  sql_table_name: dbo.BudgetCenter_Locale ;;

  dimension: budget_center_amount {
    type: string
    sql: ${TABLE}.BudgetCenterAmount ;;
  }

  dimension: budget_center_description {
    type: string
    sql: ${TABLE}.BudgetCenterDescription ;;
  }

  dimension: budget_center_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.BudgetCenterId ;;
  }

  dimension: budget_center_name {
    type: string
    sql: ${TABLE}.BudgetCenterName ;;
  }

  dimension: budget_center_used {
    type: string
    sql: ${TABLE}.BudgetCenterUsed ;;
  }

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
  }

  measure: count {
    type: count
    drill_fields: [budget_center_name, budget_center.budget_center_id, budget_center.budget_center_name]
  }
}
