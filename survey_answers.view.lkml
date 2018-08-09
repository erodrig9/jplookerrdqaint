view: survey_answers {
  sql_table_name: dbo.Survey_Answers ;;

  dimension: survey_answer_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Survey_AnswerId ;;
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

  dimension: dynamic_field_answer {
    type: string
    sql: ${TABLE}.DynamicField_Answer ;;
  }

  dimension: dynamic_field_layout_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DynamicFieldLayoutId ;;
  }

  dimension: member_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MemberId ;;
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
      survey_answer_id,
      dynamic_field_layout.dynamic_field_layout_id,
      survey_rule.survey_rule_id,
      survey_rule.survey_rule_name,
      survey_rule.table_name,
      survey_rule.column_name,
      members.member_id,
      members.username,
      survey.survey_id,
      survey.survey_name
    ]
  }
}
