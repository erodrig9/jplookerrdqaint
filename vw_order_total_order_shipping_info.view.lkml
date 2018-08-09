view: vw_order_total_order_shipping_info {
  sql_table_name: dbo.VwOrderTotal_OrderShippingInfo ;;

  dimension: cnt {
    type: number
    sql: ${TABLE}.cnt ;;
  }

  dimension: discount_total {
    type: number
    sql: ${TABLE}.discountTotal ;;
  }

  dimension: initial_shipping_handling_total {
    type: number
    sql: ${TABLE}.initialShippingHandlingTotal ;;
  }

  dimension: insurance_charge_total {
    type: number
    sql: ${TABLE}.insuranceChargeTotal ;;
  }

  dimension: order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.orderHeaderID ;;
  }

  dimension: shipping_handling_tax_total {
    type: number
    sql: ${TABLE}.shippingHandlingTaxTotal ;;
  }

  dimension: shipping_handling_total {
    type: number
    sql: ${TABLE}.shippingHandlingTotal ;;
  }

  measure: count {
    type: count
    drill_fields: [order_header.autoship_order_header_id]
  }
}
