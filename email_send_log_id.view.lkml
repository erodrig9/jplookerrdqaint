view: email_send_log_id {
  sql_table_name: dbo.EmailSendLogId ;;

  dimension: rec_id {
    type: number
    sql: ${TABLE}.RecId ;;
  }

  dimension: send_log_id {
    type: number
    sql: ${TABLE}.SendLogId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
