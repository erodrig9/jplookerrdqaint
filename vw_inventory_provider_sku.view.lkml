view: vw_inventory_provider_sku {
  sql_table_name: dbo.VwInventoryProviderSKU ;;

  dimension: atp {
    type: number
    sql: ${TABLE}.Atp ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: hold_future_releases {
    type: string
    sql: ${TABLE}.HoldFutureReleases ;;
  }

  dimension: inventoryid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.inventoryid ;;
  }

  dimension: legacy_number {
    type: string
    sql: ${TABLE}.LegacyNumber ;;
  }

  dimension: manufacturer_part_no {
    type: string
    sql: ${TABLE}.ManufacturerPartNo ;;
  }

  dimension: provider_code {
    type: string
    sql: ${TABLE}.providerCode ;;
  }

  dimension: provider_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.providerID ;;
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

  dimension: qty_safety_stock {
    type: number
    sql: ${TABLE}.QtySafetyStock ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.statusID ;;
  }

  dimension: status_name {
    type: string
    sql: ${TABLE}.statusName ;;
  }

  dimension: uom {
    type: string
    sql: ${TABLE}.uom ;;
  }

  dimension: upcnumber {
    type: string
    sql: ${TABLE}.UPCNumber ;;
  }

  dimension: updated {
    type: string
    sql: ${TABLE}.Updated ;;
  }

  measure: count {
    type: count
    drill_fields: [status_name, inventory.inventory_id, inventory.trademark_name, providers.provider_name, providers.backup_provider_id]
  }
}
