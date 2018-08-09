view: dpodkit_line {
  sql_table_name: dbo.DPODKitLine ;;

  dimension: dpodkit_line_inventory_id {
    type: number
    sql: ${TABLE}.DPODKitLineInventoryId ;;
  }

  dimension: inventory_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.InventoryId ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.SortOrder ;;
  }

  measure: count {
    type: count
    drill_fields: [inventory.inventory_id, inventory.trademark_name]
  }
}
