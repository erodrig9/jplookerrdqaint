view: files_locale {
  sql_table_name: dbo.Files_Locale ;;

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: file_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.FileId ;;
  }

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.Title ;;
  }

  measure: count {
    type: count
    drill_fields: [files.file_id, files.filename, files.original_file_name]
  }
}
