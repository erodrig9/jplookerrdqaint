view: vw_order_status {
  sql_table_name: dbo.VwOrderStatus ;;

  dimension: order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderHeaderId ;;
  }

  dimension: order_status_code {
    type: string
    sql: ${TABLE}.OrderStatusCode ;;
  }

  dimension: order_status_id {
    type: number
    sql: ${TABLE}.OrderStatusId ;;
  }

  dimension: order_status_name {
    type: string
    sql: ${TABLE}.OrderStatusName ;;
  }

  measure: count {
    type: count
    drill_fields: [order_status_name, order_header.autoship_order_header_id]
  }
}
