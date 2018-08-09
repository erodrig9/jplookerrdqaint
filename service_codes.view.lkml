view: service_codes {
  sql_table_name: dbo.ServiceCodes ;;

  dimension: service_code_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ServiceCodeId ;;
  }

  dimension: cost_per_minute {
    type: string
    sql: ${TABLE}.CostPerMinute ;;
  }

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

  dimension: service_code {
    type: string
    sql: ${TABLE}.ServiceCode ;;
  }

  dimension: service_code_description {
    type: string
    sql: ${TABLE}.ServiceCodeDescription ;;
  }

  dimension: service_code_name {
    type: string
    sql: ${TABLE}.ServiceCodeName ;;
  }

  dimension: sort_order {
    type: string
    sql: ${TABLE}.SortOrder ;;
  }

  measure: count {
    type: count
    drill_fields: [service_code_id, service_code_name, service_order_service_codes_xref.count]
  }
}
