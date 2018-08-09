view: autoship_payment_info {
  sql_table_name: dbo.AutoshipPaymentInfo ;;

  dimension: autoship_payment_info_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.AutoshipPaymentInfoId ;;
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

  dimension: member_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MemberId ;;
  }

  dimension: modified_by_member_id {
    type: number
    sql: ${TABLE}.ModifiedByMemberId ;;
  }

  dimension: modified_by_user_id {
    type: number
    sql: ${TABLE}.ModifiedByUserId ;;
  }

  dimension_group: modify {
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
    sql: ${TABLE}.ModifyDate ;;
  }

  dimension: payment_token {
    type: string
    sql: ${TABLE}.PaymentToken ;;
  }

  dimension: profile_token {
    type: string
    sql: ${TABLE}.ProfileToken ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      autoship_payment_info_id,
      credit_card_name,
      members.member_id,
      members.username,
      autoship_order_header.count,
      autoship_order_header_history.count,
      autoship_payment_info_history.count
    ]
  }
}
