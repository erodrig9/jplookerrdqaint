view: autoship_exception {
  sql_table_name: dbo.AutoshipException ;;

  dimension: autoship_exception_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.AutoshipExceptionId ;;
  }

  dimension: autoship_exception_type_id {
    type: number
    sql: ${TABLE}.AutoshipExceptionTypeId ;;
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

  dimension: exception_description {
    type: string
    sql: ${TABLE}.ExceptionDescription ;;
  }

  dimension: exception_stack {
    type: string
    sql: ${TABLE}.ExceptionStack ;;
  }

  dimension_group: resolve {
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
    sql: ${TABLE}.ResolveDate ;;
  }

  dimension: resolve_reason {
    type: string
    sql: ${TABLE}.ResolveReason ;;
  }

  measure: count {
    type: count
    drill_fields: [autoship_exception_id, autoship_order_header.autoship_order_header_id]
  }
}
