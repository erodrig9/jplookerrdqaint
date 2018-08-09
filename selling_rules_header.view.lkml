view: selling_rules_header {
  sql_table_name: dbo.SellingRulesHeader ;;

  dimension: column_name {
    type: string
    sql: ${TABLE}.ColumnName ;;
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

  dimension: dynamic_field_layout_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DynamicFieldLayoutId ;;
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

  dimension: long_description {
    type: string
    sql: ${TABLE}.LongDescription ;;
  }

  dimension: mark_down {
    type: string
    sql: ${TABLE}.MarkDown ;;
  }

  dimension: mark_up {
    type: string
    sql: ${TABLE}.MarkUp ;;
  }

  dimension: max_range {
    type: number
    sql: ${TABLE}.MaxRange ;;
  }

  dimension: min_range {
    type: number
    sql: ${TABLE}.MinRange ;;
  }

  dimension: order_limit {
    type: number
    sql: ${TABLE}.OrderLimit ;;
  }

  dimension: percentage {
    type: string
    sql: ${TABLE}.Percentage ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  dimension: replacement_price {
    type: string
    sql: ${TABLE}.ReplacementPrice ;;
  }

  dimension: rule_exception {
    type: string
    sql: ${TABLE}.RuleException ;;
  }

  dimension: selling_rule_execution_group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SellingRuleExecutionGroupId ;;
  }

  dimension: selling_rule_header_id {
    type: number
    sql: ${TABLE}.SellingRuleHeaderId ;;
  }

  dimension: selling_rule_name {
    type: string
    sql: ${TABLE}.SellingRuleName ;;
  }

  dimension: selling_rule_set_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SellingRuleSetId ;;
  }

  dimension: selling_rule_type_id {
    type: number
    sql: ${TABLE}.SellingRuleTypeId ;;
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

  dimension: table_name {
    type: string
    sql: ${TABLE}.TableName ;;
  }

  dimension: time_range {
    type: number
    sql: ${TABLE}.TimeRange ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      selling_rule_name,
      table_name,
      column_name,
      selling_rule_set.selling_rule_set_id,
      selling_rule_set.selling_rule_set_name,
      dynamic_field_layout.dynamic_field_layout_id,
      selling_rule_execution_group.selling_rule_execution_group_id,
      selling_rule_execution_group.selling_rule_execution_group_name
    ]
  }
}
