view: member_notes {
  sql_table_name: dbo.MemberNotes ;;

  dimension: member_note_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.MemberNoteId ;;
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

  dimension: member_complaint_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MemberComplaintId ;;
  }

  dimension: member_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MemberId ;;
  }

  dimension: member_note {
    type: string
    sql: ${TABLE}.MemberNote ;;
  }

  dimension: order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderHeaderId ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.UserId ;;
  }

  measure: count {
    type: count
    drill_fields: [member_note_id, members.member_id, members.username, order_header.autoship_order_header_id, member_complaints.member_complaint_id]
  }
}
