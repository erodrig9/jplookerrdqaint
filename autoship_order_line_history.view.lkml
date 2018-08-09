view: autoship_order_line_history {
  sql_table_name: dbo.AutoshipOrderLineHistory ;;

  dimension: autoship_order_line_history_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.AutoshipOrderLineHistoryId ;;
  }

  dimension: autoship_order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.AutoshipOrderHeaderId ;;
  }

  dimension: autoship_order_line_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.AutoshipOrderLineId ;;
  }

  dimension: autoship_shipping_info_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.AutoshipShippingInfoId ;;
  }

  dimension: catalog_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CatalogId ;;
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

  dimension: modified_by_member_id {
    type: number
    sql: ${TABLE}.ModifiedByMemberId ;;
  }

  dimension: modified_by_user_id {
    type: number
    sql: ${TABLE}.ModifiedByUserId ;;
  }

  dimension_group: modify {
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
    sql: ${TABLE}.ModifyDate ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
  }

  dimension: unit_price {
    type: string
    sql: ${TABLE}.UnitPrice ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      autoship_order_line_history_id,
      autoship_order_line.autoship_order_line_id,
      autoship_order_header.autoship_order_header_id,
      autoship_shipping_info.autoship_shipping_info_id,
      inventory.inventory_id,
      inventory.trademark_name,
      catalog.catalog_id,
      catalog.catalog_name
    ]
  }
}
