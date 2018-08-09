view: email_opened_stats {
  sql_table_name: dbo.EmailOpenedStats ;;

  dimension_group: added {
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
    sql: ${TABLE}.AddedDate ;;
  }

  dimension: broadcast_id {
    type: number
    sql: ${TABLE}.BroadcastId ;;
  }

  dimension: message_id {
    type: number
    sql: ${TABLE}.MessageId ;;
  }

  dimension: message_list_id {
    type: number
    sql: ${TABLE}.MessageListId ;;
  }

  dimension: opened_count {
    type: number
    sql: ${TABLE}.OpenedCount ;;
  }

  dimension: opened_id {
    type: number
    sql: ${TABLE}.OpenedId ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
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
