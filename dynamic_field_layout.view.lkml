view: dynamic_field_layout {
  sql_table_name: dbo.DynamicFieldLayout ;;

  dimension: dynamic_field_layout_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.DynamicFieldLayoutId ;;
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

  dimension: dynamic_field_input_type_id {
    type: number
    sql: ${TABLE}.DynamicFieldInputTypeId ;;
  }

  dimension: dynamic_field_table_id {
    type: number
    sql: ${TABLE}.DynamicFieldTableId ;;
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

  dimension: field_code {
    type: string
    sql: ${TABLE}.FieldCode ;;
  }

  dimension: field_label {
    type: string
    sql: ${TABLE}.FieldLabel ;;
  }

  dimension: field_values {
    type: string
    sql: ${TABLE}.FieldValues ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.SortOrder ;;
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
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      dynamic_field_layout_id,
      adt_selling_rules_header.count,
      auto_include_line.count,
      dynamic_field.count,
      dynamic_field_layout_locale.count,
      selling_rules_header.count,
      survey_answers.count,
      survey_questions.count
    ]
  }
}
