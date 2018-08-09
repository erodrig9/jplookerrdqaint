view: order_line_detail_history {
  sql_table_name: dbo.OrderLineDetailHistory ;;

  dimension: order_line_detail_history_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrderLineDetailHistoryId ;;
  }

  dimension: btoinventory_id {
    type: number
    sql: ${TABLE}.BTOInventoryId ;;
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

  dimension: duty_tax {
    type: string
    sql: ${TABLE}.DutyTax ;;
  }

  dimension: dynamic_record_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DynamicRecordId ;;
  }

  dimension: gift {
    type: string
    sql: ${TABLE}.Gift ;;
  }

  dimension: gift_charge {
    type: string
    sql: ${TABLE}.GiftCharge ;;
  }

  dimension: inventory_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.InventoryId ;;
  }

  dimension: kit_line_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.KitLineId ;;
  }

  dimension_group: modification {
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
    sql: ${TABLE}.ModificationDate ;;
  }

  dimension: order_line_detail_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderLineDetailId ;;
  }

  dimension: order_line_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderLineId ;;
  }

  dimension: order_shipping_info_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderShippingInfoId ;;
  }

  dimension: order_status_id {
    type: number
    sql: ${TABLE}.OrderStatusId ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
  }

  dimension_group: release {
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
    sql: ${TABLE}.ReleaseDate ;;
  }

  dimension: ship_order_address_id {
    type: number
    sql: ${TABLE}.Ship_OrderAddressId ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.Source ;;
  }

  dimension: tax {
    type: string
    sql: ${TABLE}.Tax ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      order_line_detail_history_id,
      order_line_detail.order_line_detail_id,
      order_line.catalog_name,
      order_line.item_type_name,
      order_line.sku_type_name,
      order_line.original_order_line_id,
      inventory.inventory_id,
      inventory.trademark_name,
      order_shipping_info.order_shipping_info_id,
      kit_line.kit_line_id,
      dynamic_record.dynamic_record_id
    ]
  }
}
