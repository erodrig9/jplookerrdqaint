view: authorizer_order_history {
  sql_table_name: dbo.AuthorizerOrderHistory ;;

  dimension: authorizer_order_history_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.AuthorizerOrderHistoryId ;;
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

  dimension: error_description {
    type: string
    sql: ${TABLE}.ErrorDescription ;;
  }

  dimension: event_id {
    type: string
    sql: ${TABLE}.EventId ;;
  }

  dimension: event_name {
    type: string
    sql: ${TABLE}.EventName ;;
  }

  dimension: order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderHeaderId ;;
  }

  dimension: status_code {
    type: string
    sql: ${TABLE}.StatusCode ;;
  }

  measure: count {
    type: count
    drill_fields: [authorizer_order_history_id, event_name, order_header.autoship_order_header_id]
  }
}
