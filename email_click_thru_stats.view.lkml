view: email_click_thru_stats {
  sql_table_name: dbo.EmailClickThruStats ;;

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

  dimension: broadcast_session {
    type: number
    sql: ${TABLE}.BroadcastSession ;;
  }

  dimension: click_thru_count {
    type: number
    sql: ${TABLE}.ClickThruCount ;;
  }

  dimension: click_thru_id {
    type: number
    sql: ${TABLE}.ClickThruId ;;
  }

  dimension: click_tru_original_url {
    type: string
    sql: ${TABLE}.ClickTruOriginalURL ;;
  }

  dimension: message_id {
    type: number
    sql: ${TABLE}.MessageId ;;
  }

  dimension: message_list_id {
    type: number
    sql: ${TABLE}.MessageListId ;;
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
