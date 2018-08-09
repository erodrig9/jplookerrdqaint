view: vw_order_total_converted {
  sql_table_name: dbo.VwOrderTotalConverted ;;

  dimension: currency_from {
    type: string
    sql: ${TABLE}.currencyFrom ;;
  }

  dimension: currency_to {
    type: string
    sql: ${TABLE}.currencyTo ;;
  }

  dimension: discount_total {
    type: number
    sql: ${TABLE}.discountTotal ;;
  }

  dimension: discount_total_converted {
    type: number
    sql: ${TABLE}.discountTotalConverted ;;
  }

  dimension: duty_tax_total {
    type: number
    sql: ${TABLE}.dutyTaxTotal ;;
  }

  dimension: duty_tax_total_converted {
    type: number
    sql: ${TABLE}.dutyTaxTotalConverted ;;
  }

  dimension: gift_charge_total {
    type: number
    sql: ${TABLE}.giftChargeTotal ;;
  }

  dimension: gift_charge_total_converted {
    type: number
    sql: ${TABLE}.giftChargeTotalConverted ;;
  }

  dimension: initial_item_total {
    type: number
    sql: ${TABLE}.initialItemTotal ;;
  }

  dimension: initial_item_total_converted {
    type: number
    sql: ${TABLE}.initialItemTotalConverted ;;
  }

  dimension: initial_shipping_handling_total {
    type: number
    sql: ${TABLE}.initialShippingHandlingTotal ;;
  }

  dimension: initial_shipping_handling_total_converted {
    type: number
    sql: ${TABLE}.initialShippingHandlingTotalConverted ;;
  }

  dimension: insurance_charge_total {
    type: number
    sql: ${TABLE}.insuranceChargeTotal ;;
  }

  dimension: insurance_charge_total_converted {
    type: number
    sql: ${TABLE}.insuranceChargeTotalConverted ;;
  }

  dimension: item_discount_total {
    type: number
    sql: ${TABLE}.itemDiscountTotal ;;
  }

  dimension: item_discount_total_converted {
    type: number
    sql: ${TABLE}.itemDiscountTotalConverted ;;
  }

  dimension: item_total {
    type: number
    sql: ${TABLE}.itemTotal ;;
  }

  dimension: item_total_converted {
    type: number
    sql: ${TABLE}.itemTotalConverted ;;
  }

  dimension: order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.orderHeaderID ;;
  }

  dimension: order_total {
    type: number
    sql: ${TABLE}.orderTotal ;;
  }

  dimension: order_total_converted {
    type: number
    sql: ${TABLE}.orderTotalConverted ;;
  }

  dimension: rate {
    type: number
    sql: ${TABLE}.rate ;;
  }

  dimension: scale {
    type: number
    sql: ${TABLE}.scale ;;
  }

  dimension: service_charge_total {
    type: number
    sql: ${TABLE}.serviceChargeTotal ;;
  }

  dimension: service_charge_total_converted {
    type: number
    sql: ${TABLE}.serviceChargeTotalConverted ;;
  }

  dimension: shipping_discount_total {
    type: number
    sql: ${TABLE}.shippingDiscountTotal ;;
  }

  dimension: shipping_discount_total_converted {
    type: number
    sql: ${TABLE}.shippingDiscountTotalConverted ;;
  }

  dimension: shipping_handling_tax_total {
    type: number
    sql: ${TABLE}.shippingHandlingTaxTotal ;;
  }

  dimension: shipping_handling_tax_total_converted {
    type: number
    sql: ${TABLE}.shippingHandlingTaxTotalConverted ;;
  }

  dimension: shipping_handling_total {
    type: number
    sql: ${TABLE}.shippingHandlingTotal ;;
  }

  dimension: shipping_handling_total_converted {
    type: number
    sql: ${TABLE}.shippingHandlingTotalConverted ;;
  }

  dimension: tax_total {
    type: number
    sql: ${TABLE}.taxTotal ;;
  }

  dimension: tax_total_converted {
    type: number
    sql: ${TABLE}.taxTotalConverted ;;
  }

  measure: count {
    type: count
    drill_fields: [order_header.autoship_order_header_id]
  }
}
