view: dynamic_field {
  sql_table_name: dbo.DynamicField ;;

  dimension: dynamic_field_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.DynamicFieldId ;;
  }

  dimension: dynamic_field_layout_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DynamicFieldLayoutId ;;
  }

  dimension: dynamic_field_value {
    type: string
    sql: ${TABLE}.DynamicFieldValue ;;
  }

  dimension: dynamic_record_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DynamicRecordId ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      dynamic_field_id,
      dynamic_record.dynamic_record_id,
      dynamic_field_layout.dynamic_field_layout_id,
      dynamic_field_locale.count,
      purchase_order_line.count,
      purchase_order_line_detail.count
    ]
  }
}
