view: gift_card_stack {
  sql_table_name: dbo.GiftCardStack ;;

  dimension: gift_card_stack_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.GiftCardStackId ;;
  }

  dimension: authorizer_id {
    type: number
    sql: ${TABLE}.AuthorizerId ;;
  }

  dimension: card_number {
    type: string
    sql: ${TABLE}.CardNumber ;;
  }

  dimension: card_pin {
    type: string
    sql: ${TABLE}.CardPIN ;;
  }

  dimension: card_suffix {
    type: string
    sql: ${TABLE}.CardSuffix ;;
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

  dimension: processed {
    type: string
    sql: ${TABLE}.Processed ;;
  }

  measure: count {
    type: count
    drill_fields: [gift_card_stack_id, order_payment.order_payment_id, order_payment.credit_card_name, order_payment.bank_name, order_payment.bank_account_name]
  }
}
