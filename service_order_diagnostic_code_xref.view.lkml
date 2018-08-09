view: service_order_diagnostic_code_xref {
  sql_table_name: dbo.ServiceOrder_DiagnosticCode_XREF ;;

  dimension: diagnostic_code_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DiagnosticCodeId ;;
  }

  dimension: order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderHeaderId ;;
  }

  measure: count {
    type: count
    drill_fields: [order_header.autoship_order_header_id, diagnostic_codes.diagnostic_code_id, diagnostic_codes.diagnostic_code_name]
  }
}
