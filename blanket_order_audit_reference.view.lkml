view: blanket_order_audit_reference {
  sql_table_name: dbo.BlanketOrderAuditReference ;;

  dimension: blanket_order_audit_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.BlanketOrderAuditId ;;
  }

  dimension: column_name {
    type: string
    sql: ${TABLE}.ColumnName ;;
  }

  dimension: column_value {
    type: string
    sql: ${TABLE}.ColumnValue ;;
  }

  measure: count {
    type: count
    drill_fields: [column_name, blanket_order_audit.blanket_order_audit_id]
  }
}
