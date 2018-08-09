view: gift_certificate_adjustments {
  sql_table_name: dbo.GiftCertificateAdjustments ;;

  dimension: adjustment_amount {
    type: string
    sql: ${TABLE}.AdjustmentAmount ;;
  }

  dimension: adjustment_notes {
    type: string
    sql: ${TABLE}.AdjustmentNotes ;;
  }

  dimension: adjustment_type_id {
    type: number
    sql: ${TABLE}.AdjustmentTypeId ;;
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

  dimension: gift_certificate_issued_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.GiftCertificateIssuedId ;;
  }

  dimension: member_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MemberId ;;
  }

  dimension: orderheader_id {
    type: number
    sql: ${TABLE}.OrderheaderId ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.UserId ;;
  }

  measure: count {
    type: count
    drill_fields: [gift_certificate_issued.gift_certificate_issued_id, members.member_id, members.username]
  }
}
