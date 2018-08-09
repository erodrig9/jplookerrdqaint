view: blanket_order_line {
  sql_table_name: dbo.BlanketOrderLine ;;

  dimension: blanket_order_line_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.BlanketOrderLineId ;;
  }

  dimension: blanket_order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.BlanketOrderHeaderId ;;
  }

  dimension: catalog_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CatalogId ;;
  }

  dimension_group: create_stamp {
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
    sql: ${TABLE}.CreateStamp ;;
  }

  dimension: dynamic_record_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DynamicRecordId ;;
  }

  dimension: initial_price {
    type: string
    sql: ${TABLE}.InitialPrice ;;
  }

  dimension: inventory_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.InventoryId ;;
  }

  dimension: order_status_id {
    type: number
    sql: ${TABLE}.OrderStatusId ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
  }

  dimension: released_quantity {
    type: number
    sql: ${TABLE}.ReleasedQuantity ;;
  }

  dimension: unit_cost {
    type: string
    sql: ${TABLE}.UnitCost ;;
  }

  dimension: unit_price {
    type: string
    sql: ${TABLE}.UnitPrice ;;
  }

  dimension: unit_weight {
    type: number
    sql: ${TABLE}.UnitWeight ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      blanket_order_line_id,
      blanket_order_header.blanket_order_header_id,
      inventory.inventory_id,
      inventory.trademark_name,
      catalog.catalog_id,
      catalog.catalog_name,
      dynamic_record.dynamic_record_id
    ]
  }
}
