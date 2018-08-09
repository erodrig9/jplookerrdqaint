view: order_shipments_status_history {
  sql_table_name: dbo.OrderShipmentsStatusHistory ;;

  dimension: order_shipments_status_history_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrderShipmentsStatusHistoryID ;;
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

  dimension: new_status_id {
    type: number
    sql: ${TABLE}.NewStatusID ;;
  }

  dimension: previous_status_id {
    type: number
    sql: ${TABLE}.PreviousStatusID ;;
  }

  dimension: shipment_group_id {
    type: string
    sql: ${TABLE}.ShipmentGroupId ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.UserID ;;
  }

  measure: count {
    type: count
    drill_fields: [order_shipments_status_history_id]
  }
}
