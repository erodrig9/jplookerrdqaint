view: diagnostic_codes {
  sql_table_name: dbo.DiagnosticCodes ;;

  dimension: diagnostic_code_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.DiagnosticCodeId ;;
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

  dimension: diagnostic_code {
    type: string
    sql: ${TABLE}.DiagnosticCode ;;
  }

  dimension: diagnostic_code_description {
    type: string
    sql: ${TABLE}.DiagnosticCodeDescription ;;
  }

  dimension: diagnostic_code_name {
    type: string
    sql: ${TABLE}.DiagnosticCodeName ;;
  }

  dimension: sort_order {
    type: string
    sql: ${TABLE}.SortOrder ;;
  }

  measure: count {
    type: count
    drill_fields: [diagnostic_code_id, diagnostic_code_name, service_order_diagnostic_code_xref.count]
  }
}
