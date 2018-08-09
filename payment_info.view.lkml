view: payment_info {
  sql_table_name: dbo.PaymentInfo ;;

  dimension: payment_info_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.PaymentInfoId ;;
  }

  dimension: abanumber {
    type: string
    sql: ${TABLE}.ABANumber ;;
  }

  dimension: bank_name {
    type: string
    sql: ${TABLE}.BankName ;;
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

  dimension_group: credit_card_exp {
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
    sql: ${TABLE}.CreditCardExp ;;
  }

  dimension: credit_card_name {
    type: string
    sql: ${TABLE}.CreditCardName ;;
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

  dimension: manifest_number {
    type: string
    sql: ${TABLE}.ManifestNumber ;;
  }

  dimension: member_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MemberId ;;
  }

  dimension: pref_payment_type {
    type: number
    sql: ${TABLE}.PrefPaymentType ;;
  }

  dimension: preferred {
    type: string
    sql: ${TABLE}.Preferred ;;
  }

  dimension: routing_number {
    type: string
    sql: ${TABLE}.RoutingNumber ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  measure: count {
    type: count
    drill_fields: [payment_info_id, credit_card_name, bank_name, members.member_id, members.username]
  }
}
