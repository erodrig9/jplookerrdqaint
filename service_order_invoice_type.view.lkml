view: service_order_invoice_type {
  sql_table_name: dbo.ServiceOrderInvoiceType ;;

  dimension: service_order_invoice_type_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ServiceOrderInvoiceTypeId ;;
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

  dimension: service_order_invoice_type_code {
    type: string
    sql: ${TABLE}.ServiceOrderInvoiceTypeCode ;;
  }

  dimension: service_order_invoice_type_description {
    type: string
    sql: ${TABLE}.ServiceOrderInvoiceTypeDescription ;;
  }

  dimension: service_order_invoice_type_name {
    type: string
    sql: ${TABLE}.ServiceOrderInvoiceTypeName ;;
  }

  dimension: sort_order {
    type: string
    sql: ${TABLE}.SortOrder ;;
  }

  measure: count {
    type: count
    drill_fields: [service_order_invoice_type_id, service_order_invoice_type_name, service_order_header.count]
  }
}
