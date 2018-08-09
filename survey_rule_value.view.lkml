view: survey_rule_value {
  sql_table_name: dbo.Survey_Rule_Value ;;

  dimension: survey_rule_value_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Survey_Rule_ValueId ;;
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

  dimension: rule_value {
    type: number
    sql: ${TABLE}.RuleValue ;;
  }

  dimension: survey_rule_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Survey_RuleId ;;
  }

  measure: count {
    type: count
    drill_fields: [survey_rule_value_id, survey_rule.survey_rule_id, survey_rule.survey_rule_name, survey_rule.table_name, survey_rule.column_name]
  }
}
