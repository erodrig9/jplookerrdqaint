view: package {
  sql_table_name: dbo.Package ;;

  dimension: order_line_detail_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderLineDetailId ;;
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

  dimension: sku {
    type: string
    sql: ${TABLE}.Sku ;;
  }

  dimension: tracking_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.TrackingId ;;
  }

  measure: count {
    type: count
    drill_fields: [tracking.tracking_id, order_shipments.order_shipment_id, order_line_detail.order_line_detail_id]
  }
}
