view: order_payment_method {
  sql_table_name: dbo.OrderPaymentMethod ;;

  dimension: order_payment_method_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrderPaymentMethodId ;;
  }

  dimension: amount {
    type: string
    sql: ${TABLE}.Amount ;;
  }

  dimension: authorization_info_id {
    type: number
    sql: ${TABLE}.AuthorizationInfoId ;;
  }

  dimension: authorizer_id {
    type: number
    sql: ${TABLE}.AuthorizerId ;;
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

  dimension: currency_code {
    type: string
    sql: ${TABLE}.CurrencyCode ;;
  }

  dimension: order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderHeaderId ;;
  }

  dimension: payment_name {
    type: string
    sql: ${TABLE}.PaymentName ;;
  }

  dimension: payment_status_id {
    type: number
    sql: ${TABLE}.PaymentStatusId ;;
  }

  dimension: payment_type_id {
    type: number
    sql: ${TABLE}.PaymentTypeId ;;
  }

  measure: count {
    type: count
    drill_fields: [order_payment_method_id, payment_name, order_header.autoship_order_header_id, order_payment.count]
  }
}
