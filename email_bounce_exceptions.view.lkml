view: email_bounce_exceptions {
  sql_table_name: dbo.EmailBounceExceptions ;;

  dimension: bounce_exc_action_id {
    type: number
    sql: ${TABLE}.BounceExcActionId ;;
  }

  dimension: bounce_exc_code {
    type: string
    sql: ${TABLE}.BounceExcCode ;;
  }

  dimension: bounce_exc_id {
    type: number
    sql: ${TABLE}.BounceExcId ;;
  }

  dimension: bounce_exc_name {
    type: string
    sql: ${TABLE}.BounceExcName ;;
  }

  dimension: bounce_exc_text {
    type: string
    sql: ${TABLE}.BounceExcText ;;
  }

  dimension: bounce_list_id {
    type: number
    sql: ${TABLE}.BounceListId ;;
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
    drill_fields: [bounce_exc_name]
  }
}
