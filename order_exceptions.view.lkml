view: order_exceptions {
  sql_table_name: dbo.OrderExceptions ;;

  dimension: order_exception_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrderExceptionId ;;
  }

  dimension: approved {
    type: string
    sql: ${TABLE}.Approved ;;
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

  dimension_group: decision {
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
    sql: ${TABLE}.DecisionDate ;;
  }

  dimension: exception_message {
    type: string
    sql: ${TABLE}.ExceptionMessage ;;
  }

  dimension: exception_source_id {
    type: number
    sql: ${TABLE}.ExceptionSourceId ;;
  }

  dimension: exception_type_id {
    type: number
    sql: ${TABLE}.ExceptionTypeId ;;
  }

  dimension: order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderHeaderId ;;
  }

  dimension: order_payment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderPaymentId ;;
  }

  dimension: payment_amount {
    type: string
    sql: ${TABLE}.PaymentAmount ;;
  }

  dimension: payment_captured {
    type: string
    sql: ${TABLE}.PaymentCaptured ;;
  }

  dimension: payment_exception_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.PaymentExceptionId ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.UserId ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      order_exception_id,
      order_header.autoship_order_header_id,
      payment_exceptions.payment_exception_id,
      payment_exceptions.payment_exception_name,
      order_payment.order_payment_id,
      order_payment.credit_card_name,
      order_payment.bank_name,
      order_payment.bank_account_name
    ]
  }
}
