view: order_line_detail_gift_certificate_xref {
  sql_table_name: dbo.OrderLineDetail_GiftCertificate_XRef ;;

  dimension: certificate_value {
    type: string
    sql: ${TABLE}.CertificateValue ;;
  }

  dimension: gift_certificate_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.GiftCertificateId ;;
  }

  dimension: gift_certificate_message {
    type: string
    sql: ${TABLE}.GiftCertificateMessage ;;
  }

  dimension: order_line_detail_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderLineDetailId ;;
  }

  dimension: redemption_email {
    type: string
    sql: ${TABLE}.redemptionEmail ;;
  }

  dimension: redemption_member_id {
    type: number
    sql: ${TABLE}.RedemptionMemberId ;;
  }

  measure: count {
    type: count
    drill_fields: [order_line_detail.order_line_detail_id, gift_certificates.gift_certificate_id, gift_certificates.gift_certificate_name]
  }
}
