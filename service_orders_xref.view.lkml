view: service_orders_xref {
  sql_table_name: dbo.ServiceOrders_XREF ;;

  dimension_group: date_created {
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
    sql: ${TABLE}.DateCreated ;;
  }

  dimension: related_order_header_id {
    type: number
    sql: ${TABLE}.RelatedOrderHeaderId ;;
  }

  dimension: service_order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ServiceOrderHeaderId ;;
  }

  dimension: service_order_xref_type_id {
    type: number
    sql: ${TABLE}.ServiceOrderXrefTypeId ;;
  }

  measure: count {
    type: count
    drill_fields: [service_order_header.service_order_header_id]
  }
}
