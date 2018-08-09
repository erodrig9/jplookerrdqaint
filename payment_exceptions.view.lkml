view: payment_exceptions {
  sql_table_name: dbo.PaymentExceptions ;;

  dimension: payment_exception_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.PaymentExceptionId ;;
  }

  dimension: allow_exception {
    type: string
    sql: ${TABLE}.AllowException ;;
  }

  dimension: authorizer_error_message_id {
    type: number
    sql: ${TABLE}.AuthorizerErrorMessageId ;;
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

  dimension: display_message {
    type: string
    sql: ${TABLE}.DisplayMessage ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.EndDate ;;
  }

  dimension: exception_on_order_total {
    type: string
    sql: ${TABLE}.ExceptionOnOrderTotal ;;
  }

  dimension: order_total_exception_amount {
    type: string
    sql: ${TABLE}.OrderTotalExceptionAmount ;;
  }

  dimension: payment_exception_code {
    type: string
    sql: ${TABLE}.PaymentExceptionCode ;;
  }

  dimension: payment_exception_description {
    type: string
    sql: ${TABLE}.PaymentExceptionDescription ;;
  }

  dimension: payment_exception_name {
    type: string
    sql: ${TABLE}.PaymentExceptionName ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.StartDate ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  measure: count {
    type: count
    drill_fields: [payment_exception_id, payment_exception_name, order_exceptions.count, payment_exceptions_locale.count]
  }
}
