view: service_orders_xreftype {
  sql_table_name: dbo.ServiceOrders_XREFType ;;

  dimension: service_order_xref_type_id {
    type: number
    sql: ${TABLE}.ServiceOrderXrefTypeId ;;
  }

  dimension: service_order_xref_type_name {
    type: string
    sql: ${TABLE}.ServiceOrderXrefTypeName ;;
  }

  measure: count {
    type: count
    drill_fields: [service_order_xref_type_name]
  }
}
