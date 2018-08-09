view: inventory_sync_history {
  sql_table_name: dbo.Inventory_Sync_History ;;

  dimension: inventory_sync_history_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Inventory_Sync_HistoryId ;;
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

  dimension: in_sync {
    type: string
    sql: ${TABLE}.InSync ;;
  }

  dimension: inventory_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.InventoryId ;;
  }

  dimension: inventory_provider_xref_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Inventory_Provider_XRefId ;;
  }

  dimension: notification_email_sent {
    type: string
    sql: ${TABLE}.NotificationEmailSent ;;
  }

  dimension: provider_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProviderId ;;
  }

  dimension: qty_on_hand {
    type: number
    sql: ${TABLE}.QtyOnHand ;;
  }

  dimension: qty_on_hold {
    type: number
    sql: ${TABLE}.QtyOnHold ;;
  }

  dimension: qty_reserved {
    type: number
    sql: ${TABLE}.QtyReserved ;;
  }

  dimension: qty_reserved_to_warehouse {
    type: number
    sql: ${TABLE}.QtyReservedToWarehouse ;;
  }

  dimension: warehouse_qty_on_hand {
    type: number
    sql: ${TABLE}.WarehouseQtyOnHand ;;
  }

  dimension: warehouse_qty_on_hold {
    type: number
    sql: ${TABLE}.WarehouseQtyOnHold ;;
  }

  dimension: warehouse_qty_reserved {
    type: number
    sql: ${TABLE}.WarehouseQtyReserved ;;
  }

  dimension: xref_merchant_id {
    type: string
    sql: ${TABLE}.XRefMerchantId ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      inventory_sync_history_id,
      inventory_provider_xref.inventory_provider_xref_id,
      inventory.inventory_id,
      inventory.trademark_name,
      providers.provider_name,
      providers.backup_provider_id
    ]
  }
}
