view: ship_station_receiving {
  sql_table_name: dbo.ShipStation_Receiving ;;

  dimension: asnreceipt_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ASNReceiptId ;;
  }

  dimension: batch_number {
    type: string
    sql: ${TABLE}.BatchNumber ;;
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

  dimension: notes {
    type: string
    sql: ${TABLE}.Notes ;;
  }

  dimension: purchase_order {
    type: string
    sql: ${TABLE}.PurchaseOrder ;;
  }

  dimension: receiving_id {
    type: number
    sql: ${TABLE}.ReceivingId ;;
  }

  measure: count {
    type: count
    drill_fields: [asnreceipt.asnreceipt_id]
  }
}
