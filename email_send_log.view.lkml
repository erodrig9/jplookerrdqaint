view: email_send_log {
  sql_table_name: dbo.EmailSendLog ;;

  dimension: list_id {
    type: number
    sql: ${TABLE}.ListId ;;
  }

  dimension: message_broadcast_id {
    type: number
    sql: ${TABLE}.MessageBroadcastId ;;
  }

  dimension: message_id {
    type: number
    sql: ${TABLE}.MessageId ;;
  }

  dimension_group: message_pre_sent {
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
    sql: ${TABLE}.MessagePreSentDate ;;
  }

  dimension_group: message_sent {
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
    sql: ${TABLE}.MessageSentDate ;;
  }

  dimension: rec_id {
    type: number
    sql: ${TABLE}.RecId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
