view: budget_center {
  sql_table_name: dbo.BudgetCenter ;;

  dimension: budget_center_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.BudgetCenterId ;;
  }

  dimension: bcexception_type_id {
    type: number
    sql: ${TABLE}.BCExceptionTypeId ;;
  }

  dimension: budget_center_amount {
    type: string
    sql: ${TABLE}.BudgetCenterAmount ;;
  }

  dimension: budget_center_code {
    type: string
    sql: ${TABLE}.BudgetCenterCode ;;
  }

  dimension: budget_center_description {
    type: string
    sql: ${TABLE}.BudgetCenterDescription ;;
  }

  dimension: budget_center_name {
    type: string
    sql: ${TABLE}.BudgetCenterName ;;
  }

  dimension: budget_center_used {
    type: string
    sql: ${TABLE}.BudgetCenterUsed ;;
  }

  dimension_group: date_created {
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
    sql: ${TABLE}.DateCreated ;;
  }

  dimension: dynamic_record_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DynamicRecordId ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.EndDate ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.StartDate ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  measure: count {
    type: count
    drill_fields: [budget_center_id, budget_center_name, dynamic_record.dynamic_record_id, budget_center_locale.count, order_header.count]
  }
}
