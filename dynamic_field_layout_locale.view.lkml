view: dynamic_field_layout_locale {
  sql_table_name: dbo.DynamicFieldLayout_Locale ;;

  dimension: dynamic_field_layout_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DynamicFieldLayoutId ;;
  }

  dimension: field_label {
    type: string
    sql: ${TABLE}.FieldLabel ;;
  }

  dimension: field_values {
    type: string
    sql: ${TABLE}.FieldValues ;;
  }

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
  }

  measure: count {
    type: count
    drill_fields: [dynamic_field_layout.dynamic_field_layout_id]
  }
}
