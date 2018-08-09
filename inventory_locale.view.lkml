view: inventory_locale {
  sql_table_name: dbo.Inventory_Locale ;;

  dimension: cost {
    type: string
    sql: ${TABLE}.Cost ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: inventory_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.InventoryId ;;
  }

  dimension: inventory_notes {
    type: string
    sql: ${TABLE}.InventoryNotes ;;
  }

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
  }

  dimension: retail_price {
    type: string
    sql: ${TABLE}.RetailPrice ;;
  }

  dimension: sale_price {
    type: string
    sql: ${TABLE}.SalePrice ;;
  }

  measure: count {
    type: count
    drill_fields: [inventory.inventory_id, inventory.trademark_name]
  }
}
