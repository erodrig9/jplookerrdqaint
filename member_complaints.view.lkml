view: member_complaints {
  sql_table_name: dbo.MemberComplaints ;;

  dimension: member_complaint_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.MemberComplaintId ;;
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

  dimension: member_complaint_category_id {
    type: number
    sql: ${TABLE}.MemberComplaintCategoryId ;;
  }

  dimension: member_complaint_code {
    type: string
    sql: ${TABLE}.MemberComplaintCode ;;
  }

  dimension: member_complaint_description {
    type: string
    sql: ${TABLE}.MemberComplaintDescription ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  measure: count {
    type: count
    drill_fields: [member_complaint_id, member_notes.count]
  }
}
