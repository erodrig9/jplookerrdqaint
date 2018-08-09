view: order_shipments {
  sql_table_name: dbo.OrderShipments ;;

  dimension: order_shipment_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrderShipmentId ;;
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

  dimension: order_line_detail_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderLineDetailId ;;
  }

  dimension: order_payment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderPaymentId ;;
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

  dimension: shipment_cancellation_reasons_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ShipmentCancellationReasonsId ;;
  }

  dimension: shipment_group_id {
    type: string
    sql: ${TABLE}.ShipmentGroupId ;;
  }

  dimension: shipment_rejection_reasons_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ShipmentRejectionReasonsId ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      order_shipment_id,
      order_line_detail.order_line_detail_id,
      providers.provider_name,
      providers.backup_provider_id,
      order_payment.order_payment_id,
      order_payment.credit_card_name,
      order_payment.bank_name,
      order_payment.bank_account_name,
      shipment_cancellation_reasons.shipment_cancellation_reasons_id,
      shipment_cancellation_reasons.shipment_cancellation_reasons_name,
      shipment_rejection_reasons.shipment_rejection_reasons_id,
      shipment_rejection_reasons.shipment_rejection_reasons_name,
      affiliate_commission.count,
      order_shipments_lot_serial_xref.count,
      order_shipments_order_payment_xref.count,
      order_shipments_history.count,
      package.count,
      quantity_reservation_history.count,
      shipment_rejection_history.count
    ]
  }
}
