view: groups_marketing_segment_xref {
  sql_table_name: dbo.Groups_MarketingSegment_XRef ;;

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

  dimension: group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.GroupId ;;
  }

  dimension: segment_id {
    type: number
    sql: ${TABLE}.SegmentId ;;
  }

  measure: count {
    type: count
    drill_fields: [groups.group_id, groups.group_name]
  }
}
