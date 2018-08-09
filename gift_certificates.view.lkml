view: gift_certificates {
  sql_table_name: dbo.GiftCertificates ;;

  dimension: gift_certificate_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.GiftCertificateId ;;
  }

  dimension: affected_by_promo_code {
    type: string
    sql: ${TABLE}.AffectedByPromoCode ;;
  }

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.CampaignId ;;
  }

  dimension: certificate_value {
    type: string
    sql: ${TABLE}.CertificateValue ;;
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

  dimension: default_message {
    type: string
    sql: ${TABLE}.DefaultMessage ;;
  }

  dimension: editable_value {
    type: string
    sql: ${TABLE}.EditableValue ;;
  }

  dimension: gift_certificate_code {
    type: string
    sql: ${TABLE}.GiftCertificateCode ;;
  }

  dimension: gift_certificate_name {
    type: string
    sql: ${TABLE}.GiftCertificateName ;;
  }

  dimension: gift_certificate_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.GiftCertificateTypeId ;;
  }

  dimension: max_value {
    type: string
    sql: ${TABLE}.MaxValue ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      gift_certificate_id,
      gift_certificate_name,
      gift_certificate_types.gift_certificate_type_id,
      gift_certificate_types.certificate_type_name,
      catalog.count,
      gift_certificates_locale.count,
      order_line_detail_gift_certificate_xref.count,
      order_payment.count
    ]
  }
}
