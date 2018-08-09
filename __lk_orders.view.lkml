view: __lk_orders {
  sql_table_name: dbo.__lk_Orders ;;

  dimension: dynamic_record_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DynamicRecordId ;;
  }

  dimension: order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderHeaderId ;;
  }

  dimension: rundate {
    type: string
    sql: ${TABLE}.rundate ;;
  }

  measure: count {
    type: count
    drill_fields: [order_header.autoship_order_header_id, dynamic_record.dynamic_record_id]
  }
}
