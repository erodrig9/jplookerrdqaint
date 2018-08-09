view: vw_order_total_order_line_detail {
  sql_table_name: dbo.VwOrderTotal_OrderLineDetail ;;

  dimension: cnt {
    type: number
    sql: ${TABLE}.cnt ;;
  }

  dimension: duty_tax_total {
    type: number
    sql: ${TABLE}.dutyTaxTotal ;;
  }

  dimension: gift_charge_total {
    type: number
    sql: ${TABLE}.giftChargeTotal ;;
  }

  dimension: order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.orderHeaderID ;;
  }

  dimension: order_line_detail_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.orderLineDetailID ;;
  }

  dimension: order_line_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.orderLineID ;;
  }

  dimension: tax_total {
    type: number
    sql: ${TABLE}.taxTotal ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      order_header.autoship_order_header_id,
      order_line.catalog_name,
      order_line.item_type_name,
      order_line.sku_type_name,
      order_line.original_order_line_id,
      order_line_detail.order_line_detail_id
    ]
  }
}
