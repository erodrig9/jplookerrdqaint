view: email_broadcast_success_log {
  sql_table_name: dbo.EmailBroadcastSuccessLog ;;

  dimension: broadcast_id {
    type: number
    sql: ${TABLE}.BroadcastId ;;
  }

  dimension: bslid {
    type: number
    value_format_name: id
    sql: ${TABLE}.BSLId ;;
  }

  dimension: member_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MemberId ;;
  }

  dimension: message_id {
    type: number
    sql: ${TABLE}.MessageId ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  dimension: recipient_email {
    type: string
    sql: ${TABLE}.RecipientEmail ;;
  }

  dimension: recipient_name_first {
    type: string
    sql: ${TABLE}.RecipientNameFirst ;;
  }

  dimension: recipient_name_last {
    type: string
    sql: ${TABLE}.RecipientNameLast ;;
  }

  dimension_group: sent {
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
    sql: ${TABLE}.SentDate ;;
  }

  dimension: subscriber_id {
    type: number
    sql: ${TABLE}.SubscriberId ;;
  }

  measure: count {
    type: count
    drill_fields: [members.member_id, members.username]
  }
}
