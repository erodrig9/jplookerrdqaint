view: members_marketing_segment_xref {
  sql_table_name: dbo.Members_MarketingSegment_XRef ;;

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

  dimension: member_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MemberId ;;
  }

  dimension: segment_id {
    type: number
    sql: ${TABLE}.SegmentId ;;
  }

  measure: count {
    type: count
    drill_fields: [members.member_id, members.username]
  }
}
