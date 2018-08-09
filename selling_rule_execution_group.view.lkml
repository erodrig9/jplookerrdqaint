view: selling_rule_execution_group {
  sql_table_name: dbo.SellingRuleExecutionGroup ;;

  dimension: selling_rule_execution_group_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.SellingRuleExecutionGroupId ;;
  }

  dimension_group: create {
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
    sql: ${TABLE}.CreateDate ;;
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

  dimension: selling_rule_execution_group_name {
    type: string
    sql: ${TABLE}.SellingRuleExecutionGroupName ;;
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
    drill_fields: [selling_rule_execution_group_id, selling_rule_execution_group_name, adt_selling_rules_header.count, selling_rules_header.count]
  }
}
