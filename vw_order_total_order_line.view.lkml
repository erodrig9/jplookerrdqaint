view: vw_order_total_order_line {
  sql_table_name: dbo.VwOrderTotal_OrderLine ;;

  dimension: cnt {
    type: number
    sql: ${TABLE}.cnt ;;
  }

  dimension: discount_total {
    type: number
    sql: ${TABLE}.discountTotal ;;
  }

  dimension: initial_item_total {
    type: number
    sql: ${TABLE}.initialItemTotal ;;
  }

  dimension: item_total {
    type: number
    sql: ${TABLE}.itemTotal ;;
  }

  dimension: order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.orderHeaderID ;;
  }

  dimension: order_line_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.orderLineID ;;
  }

  dimension: service_charge_total {
    type: number
    sql: ${TABLE}.serviceChargeTotal ;;
  }

  measure: count {
    type: count
    drill_fields: [order_header.autoship_order_header_id, order_line.catalog_name, order_line.item_type_name, order_line.sku_type_name, order_line.original_order_line_id]
  }
}
