view: calendar {
  sql_table_name: dbo.Calendar ;;

  dimension: calendar_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.CalendarId ;;
  }

  dimension: admin_user_id {
    type: number
    sql: ${TABLE}.AdminUserId ;;
  }

  dimension: allow_invite_friend {
    type: string
    sql: ${TABLE}.AllowInviteFriend ;;
  }

  dimension: calendar_day {
    type: number
    sql: ${TABLE}.CalendarDay ;;
  }

  dimension: calendar_month {
    type: number
    sql: ${TABLE}.CalendarMonth ;;
  }

  dimension: calendar_year {
    type: number
    sql: ${TABLE}.CalendarYear ;;
  }

  dimension: content {
    type: string
    sql: ${TABLE}.Content ;;
  }

  dimension: end_calendar_day {
    type: number
    sql: ${TABLE}.EndCalendarDay ;;
  }

  dimension: end_calendar_month {
    type: number
    sql: ${TABLE}.EndCalendarMonth ;;
  }

  dimension: end_calendar_year {
    type: number
    sql: ${TABLE}.EndCalendarYear ;;
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

  dimension: event_code {
    type: string
    sql: ${TABLE}.EventCode ;;
  }

  dimension: event_name {
    type: string
    sql: ${TABLE}.EventName ;;
  }

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
  }

  dimension: projectid {
    type: number
    value_format_name: id
    sql: ${TABLE}.Projectid ;;
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

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      calendar_id,
      event_name,
      calendar_members_xref.count,
      calendar_friends.count,
      files_calendar_xref.count,
      files_xref.count
    ]
  }
}
