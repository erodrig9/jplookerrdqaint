view: files_xref {
  sql_table_name: dbo.Files_XRef ;;

  dimension: files_xref_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Files_XRefId ;;
  }

  dimension: calendar_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CalendarId ;;
  }

  dimension: catalog_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CatalogId ;;
  }

  dimension: category_id {
    type: number
    sql: ${TABLE}.CategoryId ;;
  }

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

  dimension: page_block_id {
    type: number
    sql: ${TABLE}.PageBlockId ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.SortOrder ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      files_xref_id,
      files.file_id,
      files.filename,
      files.original_file_name,
      inventory.inventory_id,
      inventory.trademark_name,
      catalog.catalog_id,
      catalog.catalog_name,
      calendar.calendar_id,
      calendar.event_name
    ]
  }
}
