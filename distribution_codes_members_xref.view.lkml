view: distribution_codes_members_xref {
  sql_table_name: dbo.DistributionCodes_Members_XRef ;;

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

  dimension: distribution_code_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DistributionCodeId ;;
  }

  dimension: member_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MemberId ;;
  }

  measure: count {
    type: count
    drill_fields: [members.member_id, members.username, distribution_codes.distribution_code_id, distribution_codes.distribution_name]
  }
}
