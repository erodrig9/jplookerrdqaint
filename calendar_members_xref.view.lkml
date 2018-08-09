view: calendar_members_xref {
  sql_table_name: dbo.Calendar_Members_XRef ;;

  dimension: attend_event {
    type: string
    sql: ${TABLE}.AttendEvent ;;
  }

  dimension: calendar_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CalendarId ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.Comments ;;
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

  dimension: dynamic_record_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DynamicRecordId ;;
  }

  dimension: member_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MemberId ;;
  }

  dimension: qty_attending {
    type: number
    sql: ${TABLE}.QtyAttending ;;
  }

  dimension: rsvp {
    type: number
    sql: ${TABLE}.RSVP ;;
  }

  measure: count {
    type: count
    drill_fields: [calendar.calendar_id, calendar.event_name, members.member_id, members.username, dynamic_record.dynamic_record_id]
  }
}
