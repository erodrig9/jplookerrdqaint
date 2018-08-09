view: outgoing_message_control {
  sql_table_name: dbo.OutgoingMessageControl ;;

  dimension: outgoing_message_control_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.OutgoingMessageControlId ;;
  }

  dimension: action {
    type: string
    sql: ${TABLE}.Action ;;
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

  dimension: message_destination_id {
    type: number
    sql: ${TABLE}.MessageDestinationId ;;
  }

  dimension: message_type_id {
    type: number
    sql: ${TABLE}.MessageTypeId ;;
  }

  dimension: sent_to_open_tools {
    type: string
    sql: ${TABLE}.SentToOpenTools ;;
  }

  dimension: xmldata {
    type: string
    sql: ${TABLE}.XMLData ;;
  }

  measure: count {
    type: count
    drill_fields: [outgoing_message_control_id]
  }
}
