view: return_order_order_xref {
  sql_table_name: dbo.ReturnOrder_Order_XRef ;;

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

  dimension: order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderHeaderId ;;
  }

  dimension: return_order_header_id {
    type: number
    sql: ${TABLE}.ReturnOrderHeaderId ;;
  }

  dimension: return_order_xref_id {
    type: number
    sql: ${TABLE}.Return_Order_XRefId ;;
  }

  dimension: ultimate_order_header_id {
    type: number
    sql: ${TABLE}.UltimateOrderHeaderId ;;
  }

  measure: count {
    type: count
    drill_fields: [order_header.autoship_order_header_id]
  }
}
