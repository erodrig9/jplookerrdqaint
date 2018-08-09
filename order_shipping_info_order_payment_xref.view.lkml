view: order_shipping_info_order_payment_xref {
  sql_table_name: dbo.OrderShippingInfo_OrderPayment_XRef ;;

  dimension: amount {
    type: string
    sql: ${TABLE}.Amount ;;
  }

  dimension_group: create {
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
    sql: ${TABLE}.CreateDate ;;
  }

  dimension: order_payment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderPaymentId ;;
  }

  dimension: order_shipping_info_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderShippingInfoId ;;
  }

  measure: count {
    type: count
    drill_fields: [order_shipping_info.order_shipping_info_id, order_payment.order_payment_id, order_payment.credit_card_name, order_payment.bank_name, order_payment.bank_account_name]
  }
}
