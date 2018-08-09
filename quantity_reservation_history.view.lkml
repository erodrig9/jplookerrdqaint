view: quantity_reservation_history {
  sql_table_name: dbo.QuantityReservationHistory ;;

  dimension: quantity_reservation_history_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.QuantityReservationHistoryId ;;
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

  dimension: inventory_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.InventoryId ;;
  }

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

  dimension: order_shipping_info_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderShippingInfoId ;;
  }

  dimension: provider_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProviderId ;;
  }

  dimension: qty_reserved_after {
    type: number
    sql: ${TABLE}.QtyReservedAfter ;;
  }

  dimension: qty_reserved_before {
    type: number
    sql: ${TABLE}.QtyReservedBefore ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.Source ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      quantity_reservation_history_id,
      inventory.inventory_id,
      inventory.trademark_name,
      providers.provider_name,
      providers.backup_provider_id,
      order_line_detail.order_line_detail_id,
      order_shipments.order_shipment_id,
      order_shipping_info.order_shipping_info_id
    ]
  }
}
