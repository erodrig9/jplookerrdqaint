view: files_calendar_xref {
  sql_table_name: dbo.Files_Calendar_XRef ;;

  dimension: calendar_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CalendarId ;;
  }

  dimension: default_file {
    type: string
    sql: ${TABLE}.DefaultFile ;;
  }

  dimension: file_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.FileId ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.SortOrder ;;
  }

  measure: count {
    type: count
    drill_fields: [calendar.calendar_id, calendar.event_name, files.file_id, files.filename, files.original_file_name]
  }
}
