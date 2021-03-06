view: autoship_order_header {
  sql_table_name: dbo.AutoshipOrderHeader ;;

  dimension: autoship_order_header_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.AutoshipOrderHeaderId ;;
  }

  dimension: auto_ship_cancellation_reason_id {
    type: number
    sql: ${TABLE}.AutoShipCancellationReasonId ;;
  }

  dimension: autoship_address_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.AutoshipAddressId ;;
  }

  dimension: autoship_payment_info_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.AutoshipPaymentInfoId ;;
  }

  dimension: autoship_status_id {
    type: number
    sql: ${TABLE}.AutoshipStatusId ;;
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

  dimension: cron_expression {
    type: string
    sql: ${TABLE}.CronExpression ;;
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

  dimension: first_frequency {
    type: number
    sql: ${TABLE}.FirstFrequency ;;
  }

  dimension: frequency {
    type: number
    sql: ${TABLE}.Frequency ;;
  }

  dimension: is_order_header_autoship {
    type: string
    sql: ${TABLE}.IsOrderHeaderAutoship ;;
  }

  dimension: locale_code {
    type: string
    sql: ${TABLE}.LocaleCode ;;
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

  dimension: order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderHeaderId ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  dimension: rule_promotion_id {
    type: number
    sql: ${TABLE}.rulePromotionID ;;
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

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      autoship_order_header_id,
      order_header.autoship_order_header_id,
      members.member_id,
      members.username,
      autoship_address.autoship_address_id,
      autoship_payment_info.autoship_payment_info_id,
      autoship_payment_info.credit_card_name,
      autoship_cancellation.count,
      autoship_delivery.count,
      autoship_exception.count,
      autoship_notes.count,
      autoship_order_header_history.count,
      autoship_order_line.count,
      autoship_order_line_history.count,
      vw_autoship_order_total.count
    ]
  }
}
