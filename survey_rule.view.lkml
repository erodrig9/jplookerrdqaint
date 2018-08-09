view: survey_rule {
  sql_table_name: dbo.Survey_Rule ;;

  dimension: survey_rule_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Survey_RuleId ;;
  }

  dimension: column_name {
    type: string
    sql: ${TABLE}.ColumnName ;;
  }

  dimension: column_name_id {
    type: string
    sql: ${TABLE}.ColumnNameId ;;
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

  dimension: survey_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SurveyId ;;
  }

  dimension: survey_rule_name {
    type: string
    sql: ${TABLE}.SurveyRuleName ;;
  }

  dimension: table_main {
    type: string
    sql: ${TABLE}.TableMain ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.TableName ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      survey_rule_id,
      survey_rule_name,
      table_name,
      column_name,
      survey.survey_id,
      survey.survey_name,
      survey_answers.count,
      survey_questions.count,
      survey_rule_value.count
    ]
  }
}
