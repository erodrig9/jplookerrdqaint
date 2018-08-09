view: member_affiliates_xref {
  sql_table_name: dbo.Member_Affiliates_XRef ;;

  dimension: affiliate_id {
    type: number
    sql: ${TABLE}.AffiliateId ;;
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

  dimension: member_affiliate_id {
    type: number
    sql: ${TABLE}.MemberAffiliateId ;;
  }

  dimension: member_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MemberId ;;
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
    drill_fields: [members.member_id, members.username]
  }
}
