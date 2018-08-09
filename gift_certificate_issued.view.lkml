view: gift_certificate_issued {
  sql_table_name: dbo.GiftCertificateIssued ;;

  dimension: gift_certificate_issued_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.GiftCertificateIssuedId ;;
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

  dimension: current_value {
    type: string
    sql: ${TABLE}.CurrentValue ;;
  }

  dimension: gift_certificate_message {
    type: string
    sql: ${TABLE}.GiftCertificateMessage ;;
  }

  dimension: giftcertificate_id {
    type: number
    sql: ${TABLE}.GiftcertificateId ;;
  }

  dimension: order_line_detail_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderLineDetailId ;;
  }

  dimension: orderheader_id {
    type: number
    sql: ${TABLE}.OrderheaderId ;;
  }

  dimension: purchased_value {
    type: string
    sql: ${TABLE}.PurchasedValue ;;
  }

  dimension: purchasedby_member_id {
    type: number
    sql: ${TABLE}.PurchasedbyMemberId ;;
  }

  dimension: redemption_code {
    type: string
    sql: ${TABLE}.RedemptionCode ;;
  }

  dimension: redemption_email {
    type: string
    sql: ${TABLE}.RedemptionEmail ;;
  }

  dimension: redemption_member_id {
    type: number
    sql: ${TABLE}.RedemptionMemberId ;;
  }

  measure: count {
    type: count
    drill_fields: [gift_certificate_issued_id, order_line_detail.order_line_detail_id, gift_certificate_adjustments.count]
  }
}
