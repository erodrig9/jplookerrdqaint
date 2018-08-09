view: order_shipments_history {
  sql_table_name: dbo.OrderShipmentsHistory ;;

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

  dimension_group: modification {
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
    sql: ${TABLE}.ModificationDate ;;
  }

  dimension: order_line_detail_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderLineDetailId ;;
  }

  dimension: order_shipment_history_id {
    type: number
    sql: ${TABLE}.OrderShipmentHistoryId ;;
  }

  dimension: order_shipment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderShipmentId ;;
  }

  dimension: order_status_id {
    type: number
    sql: ${TABLE}.OrderStatusId ;;
  }

  dimension: provider_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProviderId ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
  }

  dimension: released_from_backorder {
    type: string
    sql: ${TABLE}.ReleasedFromBackorder ;;
  }

  dimension: shipment_group_id {
    type: string
    sql: ${TABLE}.ShipmentGroupId ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.Source ;;
  }

  measure: count {
    type: count
    drill_fields: [order_shipments.order_shipment_id, order_line_detail.order_line_detail_id, providers.provider_name, providers.backup_provider_id]
  }
}
