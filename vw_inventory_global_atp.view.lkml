view: vw_inventory_global_atp {
  sql_table_name: dbo.VwInventoryGlobalATP ;;

  dimension: global_atp {
    type: number
    sql: ${TABLE}.globalATP ;;
  }

  dimension: global_qty_on_hand {
    type: number
    sql: ${TABLE}.globalQtyOnHand ;;
  }

  dimension: global_qty_on_hold {
    type: number
    sql: ${TABLE}.globalQtyOnHold ;;
  }

  dimension: global_qty_reserved {
    type: number
    sql: ${TABLE}.globalQtyReserved ;;
  }

  dimension: inventory_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.inventoryID ;;
  }

  measure: count {
    type: count
    drill_fields: [inventory.inventory_id, inventory.trademark_name]
  }
}
