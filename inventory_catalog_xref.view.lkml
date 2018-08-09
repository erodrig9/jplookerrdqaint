view: inventory_catalog_xref {
  sql_table_name: dbo.Inventory_Catalog_XRef ;;

  dimension: inventory_catalog_xref_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Inventory_catalog_XRefId ;;
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

  dimension_group: end {
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
    sql: ${TABLE}.EndDate ;;
  }

  dimension: inventory_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.InventoryId ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.StartDate ;;
  }

  measure: count {
    type: count
    drill_fields: [inventory_catalog_xref_id, catalog.catalog_id, catalog.catalog_name, inventory.inventory_id, inventory.trademark_name]
  }
}
