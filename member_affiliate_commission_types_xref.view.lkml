view: member_affiliate_commission_types_xref {
  sql_table_name: dbo.Member_AffiliateCommissionTypes_XRef ;;

  dimension: affiliate_commission_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.AffiliateCommissionTypeId ;;
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

  dimension: member_affiliate_commission_type_id {
    type: number
    sql: ${TABLE}.MemberAffiliateCommissionTypeId ;;
  }

  dimension: member_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MemberId ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  measure: count {
    type: count
    drill_fields: [members.member_id, members.username, affiliate_commission_types.affiliate_commission_type_id, affiliate_commission_types.affiliate_commission_type_name]
  }
}
