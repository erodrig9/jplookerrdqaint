view: dynamic_field_locale {
  sql_table_name: dbo.DynamicField_Locale ;;

  dimension: dynamic_field_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DynamicFieldId ;;
  }

  dimension: dynamic_field_value {
    type: string
    sql: ${TABLE}.DynamicFieldValue ;;
  }

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
  }

  measure: count {
    type: count
    drill_fields: [dynamic_field.dynamic_field_id]
  }
}
