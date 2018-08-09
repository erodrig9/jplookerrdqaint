view: vw_inventory_provider_atp {
  sql_table_name: dbo.VwInventoryProviderATP ;;

  dimension: atp {
    type: number
    sql: ${TABLE}.Atp ;;
  }

  dimension: atpcalculation_type_id {
    type: number
    sql: ${TABLE}.ATPCalculationTypeId ;;
  }

  dimension: hold_future_releases {
    type: string
    sql: ${TABLE}.HoldFutureReleases ;;
  }

  dimension: inventory_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.InventoryId ;;
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

  dimension: qty_safety_stock {
    type: number
    sql: ${TABLE}.QtySafetyStock ;;
  }

  dimension: updated {
    type: string
    sql: ${TABLE}.Updated ;;
  }

  measure: count {
    type: count
    drill_fields: [inventory.inventory_id, inventory.trademark_name, providers.provider_name, providers.backup_provider_id]
  }
}
