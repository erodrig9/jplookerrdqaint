view: shipment_rejection_history {
  sql_table_name: dbo.ShipmentRejectionHistory ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: actual_qty {
    type: number
    sql: ${TABLE}.ActualQty ;;
  }

  dimension: atp_qty {
    type: number
    sql: ${TABLE}.AtpQty ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.Date ;;
  }

  dimension: expected_qty {
    type: number
    sql: ${TABLE}.ExpectedQty ;;
  }

  dimension: order_shipment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderShipmentId ;;
  }

  dimension: provider_inventory_id {
    type: number
    sql: ${TABLE}.ProviderInventoryId ;;
  }

  dimension: shipment_group_id {
    type: string
    sql: ${TABLE}.ShipmentGroupId ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.UserId ;;
  }

  measure: count {
    type: count
    drill_fields: [id, order_shipments.order_shipment_id]
  }
}
