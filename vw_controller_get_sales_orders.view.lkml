view: vw_controller_get_sales_orders {
  sql_table_name: dbo.VwController_GetSalesOrders ;;

  dimension: bill_to_address_full_name {
    type: string
    sql: ${TABLE}.BillToAddressFullName ;;
  }

  dimension: order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.orderHeaderId ;;
  }

  dimension: original_order_header_id {
    type: number
    sql: ${TABLE}.originalOrderHeaderId ;;
  }

  measure: count {
    type: count
    drill_fields: [bill_to_address_full_name, order_header.autoship_order_header_id]
  }
}
