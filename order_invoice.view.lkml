view: order_invoice {
  sql_table_name: dbo.OrderInvoice ;;

  dimension: order_invoice_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrderInvoiceId ;;
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

  dimension: invoice_number {
    type: string
    sql: ${TABLE}.InvoiceNumber ;;
  }

  dimension: order_address_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderAddressId ;;
  }

  dimension: shipment_group_id {
    type: string
    sql: ${TABLE}.ShipmentGroupId ;;
  }

  dimension: xmlinvoice {
    type: string
    sql: ${TABLE}.XMLInvoice ;;
  }

  measure: count {
    type: count
    drill_fields: [order_invoice_id, order_address.order_address_id]
  }
}
