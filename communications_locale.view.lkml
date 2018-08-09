view: communications_locale {
  sql_table_name: dbo.Communications_Locale ;;

  dimension: communications_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CommunicationsId ;;
  }

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.Message ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.Subject ;;
  }

  measure: count {
    type: count
    drill_fields: [communications.communications_id, communications.notify_name, communications.report_name]
  }
}
