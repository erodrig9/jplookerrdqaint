view: order_shipments_lot_serial_xref {
  sql_table_name: dbo.OrderShipments_LotSerial_XRef ;;

  dimension: order_shipments_lot_serial_xref_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrderShipments_LotSerialXRefID ;;
  }

  dimension: lot {
    type: string
    sql: ${TABLE}.Lot ;;
  }

  dimension: order_shipment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderShipmentId ;;
  }

  dimension: package_content_id {
    type: number
    sql: ${TABLE}.PackageContentId ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
  }

  dimension: serial {
    type: string
    sql: ${TABLE}.Serial ;;
  }

  measure: count {
    type: count
    drill_fields: [order_shipments_lot_serial_xref_id, order_shipments.order_shipment_id]
  }
}
