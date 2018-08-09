view: order_audit_reference {
  sql_table_name: dbo.OrderAuditReference ;;

  dimension: column_name {
    type: string
    sql: ${TABLE}.ColumnName ;;
  }

  dimension: column_value {
    type: string
    sql: ${TABLE}.ColumnValue ;;
  }

  dimension: order_audit_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderAuditId ;;
  }

  measure: count {
    type: count
    drill_fields: [column_name, order_audit.order_audit_id]
  }
}
