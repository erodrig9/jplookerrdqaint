view: survey_questions {
  sql_table_name: dbo.Survey_Questions ;;

  dimension: survey_questions_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Survey_QuestionsId ;;
  }

  dimension: dynamic_field_layout_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DynamicFieldLayoutId ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.SortOrder ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  dimension: survey_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SurveyId ;;
  }

  dimension: survey_rule_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Survey_RuleId ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      survey_questions_id,
      survey.survey_id,
      survey.survey_name,
      survey_rule.survey_rule_id,
      survey_rule.survey_rule_name,
      survey_rule.table_name,
      survey_rule.column_name,
      dynamic_field_layout.dynamic_field_layout_id
    ]
  }
}
