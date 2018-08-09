view: gift_certificate_types {
  sql_table_name: dbo.GiftCertificateTypes ;;

  dimension: gift_certificate_type_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.GiftCertificateTypeId ;;
  }

  dimension: certificate_type_code {
    type: string
    sql: ${TABLE}.CertificateTypeCode ;;
  }

  dimension: certificate_type_name {
    type: string
    sql: ${TABLE}.CertificateTypeName ;;
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

  dimension: owner_type_id {
    type: number
    sql: ${TABLE}.OwnerTypeId ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  dimension: sort_order {
    type: string
    sql: ${TABLE}.SortOrder ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  dimension: use_type_id {
    type: number
    sql: ${TABLE}.UseTypeId ;;
  }

  measure: count {
    type: count
    drill_fields: [gift_certificate_type_id, certificate_type_name, gift_certificates.count]
  }
}
