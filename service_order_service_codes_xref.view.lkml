view: service_order_service_codes_xref {
  sql_table_name: dbo.ServiceOrder_ServiceCodes_XREF ;;

  dimension_group: date_created {
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
    sql: ${TABLE}.DateCreated ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.Notes ;;
  }

  dimension: order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderHeaderId ;;
  }

  dimension: service_code_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ServiceCodeId ;;
  }

  dimension_group: service_end_date {
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
    sql: ${TABLE}.ServiceEndDateTime ;;
  }

  dimension_group: service_start_date {
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
    sql: ${TABLE}.ServiceStartDateTime ;;
  }

  dimension: service_time_in_minutes {
    type: number
    sql: ${TABLE}.ServiceTimeInMinutes ;;
  }

  measure: count {
    type: count
    drill_fields: [order_header.autoship_order_header_id, service_codes.service_code_id, service_codes.service_code_name]
  }
}
