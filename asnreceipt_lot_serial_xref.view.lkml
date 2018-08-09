view: asnreceipt_lot_serial_xref {
  sql_table_name: dbo.ASNReceipt_LotSerial_XRef ;;

  dimension: asnreceipt_lot_serial_xref_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ASNReceipt_LotSerial_XRefID ;;
  }

  dimension: asnreceipt_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ASNReceiptId ;;
  }

  dimension: lot {
    type: string
    sql: ${TABLE}.Lot ;;
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
    drill_fields: [asnreceipt_lot_serial_xref_id, asnreceipt.asnreceipt_id]
  }
}
