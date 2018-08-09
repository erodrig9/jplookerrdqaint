view: asnreceipt {
  sql_table_name: dbo.ASNReceipt ;;

  dimension: asnreceipt_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ASNReceiptId ;;
  }

  dimension_group: arrival {
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
    sql: ${TABLE}.ArrivalDate ;;
  }

  dimension: asnheader_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ASNHeaderId ;;
  }

  dimension: asnline_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ASNLineId ;;
  }

  dimension: asnreceipt_type_id {
    type: number
    sql: ${TABLE}.ASNReceiptTypeId ;;
  }

  dimension: asnstatus_id {
    type: number
    sql: ${TABLE}.ASNStatusId ;;
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

  dimension: hold_flag {
    type: string
    sql: ${TABLE}.HoldFlag ;;
  }

  dimension: qty_received {
    type: number
    sql: ${TABLE}.QtyReceived ;;
  }

  measure: count {
    type: count
    drill_fields: [asnreceipt_id, asnheader.asnheader_id, asnline.asnline_id, asnreceipt_lot_serial_xref.count, ship_station_receiving.count]
  }
}
