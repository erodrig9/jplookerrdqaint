view: blanket_order_payment {
  sql_table_name: dbo.BlanketOrderPayment ;;

  dimension: blanket_order_payment_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.BlanketOrderPaymentId ;;
  }

  dimension: bank_abanumber {
    type: string
    sql: ${TABLE}.BankABANumber ;;
  }

  dimension: bank_account_name {
    type: string
    sql: ${TABLE}.BankAccountName ;;
  }

  dimension: bank_account_number {
    type: string
    sql: ${TABLE}.BankAccountNumber ;;
  }

  dimension: bank_account_type {
    type: string
    sql: ${TABLE}.BankAccountType ;;
  }

  dimension: bank_name {
    type: string
    sql: ${TABLE}.BankName ;;
  }

  dimension: bank_routing_number {
    type: string
    sql: ${TABLE}.BankRoutingNumber ;;
  }

  dimension: blanket_order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.BlanketOrderHeaderId ;;
  }

  dimension: check_number {
    type: string
    sql: ${TABLE}.CheckNumber ;;
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

  dimension: credit_card_exp {
    type: string
    sql: ${TABLE}.CreditCardExp ;;
  }

  dimension: credit_card_number {
    type: string
    sql: ${TABLE}.CreditCardNumber ;;
  }

  dimension: credit_card_suffix {
    type: string
    sql: ${TABLE}.CreditCardSuffix ;;
  }

  dimension: credit_card_type {
    type: string
    sql: ${TABLE}.CreditCardType ;;
  }

  dimension: net_term {
    type: string
    sql: ${TABLE}.NetTerm ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.Notes ;;
  }

  dimension: payment_description {
    type: string
    sql: ${TABLE}.PaymentDescription ;;
  }

  dimension: payment_type {
    type: string
    sql: ${TABLE}.PaymentType ;;
  }

  dimension: purchase_order_date {
    type: string
    sql: ${TABLE}.PurchaseOrderDate ;;
  }

  dimension: purchase_order_exp {
    type: string
    sql: ${TABLE}.PurchaseOrderExp ;;
  }

  dimension: purchase_order_number {
    type: string
    sql: ${TABLE}.PurchaseOrderNumber ;;
  }

  measure: count {
    type: count
    drill_fields: [blanket_order_payment_id, bank_name, bank_account_name, blanket_order_header.blanket_order_header_id]
  }
}
