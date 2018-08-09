view: gift_certificates_locale {
  sql_table_name: dbo.GiftCertificates_Locale ;;

  dimension: certificate_value {
    type: string
    sql: ${TABLE}.CertificateValue ;;
  }

  dimension: default_message {
    type: string
    sql: ${TABLE}.DefaultMessage ;;
  }

  dimension: gift_certificate_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.GiftCertificateId ;;
  }

  dimension: gift_certificate_name {
    type: string
    sql: ${TABLE}.GiftCertificateName ;;
  }

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
  }

  dimension: max_value {
    type: string
    sql: ${TABLE}.MaxValue ;;
  }

  measure: count {
    type: count
    drill_fields: [gift_certificate_name, gift_certificates.gift_certificate_id, gift_certificates.gift_certificate_name]
  }
}
