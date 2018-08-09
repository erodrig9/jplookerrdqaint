view: payment_exceptions_locale {
  sql_table_name: dbo.PaymentExceptions_Locale ;;

  dimension: display_message {
    type: string
    sql: ${TABLE}.DisplayMessage ;;
  }

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
  }

  dimension: payment_exception_description {
    type: string
    sql: ${TABLE}.PaymentExceptionDescription ;;
  }

  dimension: payment_exception_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.PaymentExceptionId ;;
  }

  dimension: payment_exception_name {
    type: string
    sql: ${TABLE}.PaymentExceptionName ;;
  }

  measure: count {
    type: count
    drill_fields: [payment_exception_name, payment_exceptions.payment_exception_id, payment_exceptions.payment_exception_name]
  }
}
