view: autoship_cancellation_reasons {
  sql_table_name: dbo.AutoshipCancellationReasons ;;

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

  dimension_group: last_updated {
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
    sql: ${TABLE}.LastUpdated ;;
  }

  dimension: reason_code {
    type: string
    sql: ${TABLE}.ReasonCode ;;
  }

  dimension: reason_id {
    type: number
    sql: ${TABLE}.ReasonId ;;
  }

  dimension: reason_name {
    type: string
    sql: ${TABLE}.ReasonName ;;
  }

  dimension: sort_order {
    type: string
    sql: ${TABLE}.SortOrder ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  measure: count {
    type: count
    drill_fields: [reason_name]
  }
}
