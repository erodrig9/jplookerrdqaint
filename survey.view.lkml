view: survey {
  sql_table_name: dbo.Survey ;;

  dimension: survey_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.SurveyId ;;
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

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
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

  dimension: survey_code {
    type: string
    sql: ${TABLE}.SurveyCode ;;
  }

  dimension: survey_description {
    type: string
    sql: ${TABLE}.SurveyDescription ;;
  }

  dimension: survey_name {
    type: string
    sql: ${TABLE}.SurveyName ;;
  }

  measure: count {
    type: count
    drill_fields: [survey_id, survey_name, survey_answers.count, survey_questions.count, survey_rule.count]
  }
}
