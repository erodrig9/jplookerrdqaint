view: service_order_service_parts_xref {
  sql_table_name: dbo.ServiceOrder_ServiceParts_XREF ;;

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

  dimension: order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderHeaderId ;;
  }

  dimension: service_part_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ServicePartId ;;
  }

  measure: count {
    type: count
    drill_fields: [order_header.autoship_order_header_id, service_parts.service_part_id, service_parts.service_part_name]
  }
}
