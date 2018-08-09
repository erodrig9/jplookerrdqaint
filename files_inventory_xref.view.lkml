view: files_inventory_xref {
  sql_table_name: dbo.Files_Inventory_XRef ;;

  dimension: default_file {
    type: string
    sql: ${TABLE}.DefaultFile ;;
  }

  dimension: file_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.FileId ;;
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
    drill_fields: [inventory.inventory_id, inventory.trademark_name, files.file_id, files.filename, files.original_file_name]
  }
}
