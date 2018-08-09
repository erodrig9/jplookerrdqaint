view: autoship_cancellation {
  sql_table_name: dbo.AutoshipCancellation ;;

  dimension: autoship_cancellation_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.AutoshipCancellationId ;;
  }

  dimension: autoship_order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.AutoshipOrderHeaderId ;;
  }

  dimension: autoship_status_id {
    type: number
    sql: ${TABLE}.AutoshipStatusId ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
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

  measure: count {
    type: count
    drill_fields: [autoship_cancellation_id, autoship_order_header.autoship_order_header_id]
  }
}
