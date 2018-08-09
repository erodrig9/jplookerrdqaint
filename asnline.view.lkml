view: asnline {
  sql_table_name: dbo.ASNLine ;;

  dimension: asnline_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ASNLineId ;;
  }

  dimension: asnheader_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ASNHeaderId ;;
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

  dimension_group: expected_arrival {
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
    sql: ${TABLE}.ExpectedArrivalDate ;;
  }

  dimension: inventory_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.InventoryId ;;
  }

  dimension_group: last_modified {
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
    sql: ${TABLE}.LastModifiedDate ;;
  }

  dimension: last_modified_user_id {
    type: number
    sql: ${TABLE}.LastModifiedUserId ;;
  }

  dimension: qty_expected {
    type: number
    sql: ${TABLE}.QtyExpected ;;
  }

  dimension: supplier_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SupplierId ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      asnline_id,
      asnheader.asnheader_id,
      inventory.inventory_id,
      inventory.trademark_name,
      suppliers.supplier_id,
      suppliers.supplier_name,
      asnreceipt.count,
      order_notes.count
    ]
  }
}
