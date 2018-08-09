view: calendar_friends {
  sql_table_name: dbo.CalendarFriends ;;

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

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: friend_id {
    type: number
    sql: ${TABLE}.FriendId ;;
  }

  dimension: member_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MemberId ;;
  }

  dimension: name_first {
    type: string
    sql: ${TABLE}.NameFirst ;;
  }

  dimension: name_last {
    type: string
    sql: ${TABLE}.NameLast ;;
  }

  dimension: rsvp {
    type: number
    sql: ${TABLE}.RSVP ;;
  }

  dimension: salutation {
    type: string
    sql: ${TABLE}.Salutation ;;
  }

  measure: count {
    type: count
    drill_fields: [calendar.calendar_id, calendar.event_name, members.member_id, members.username]
  }
}
