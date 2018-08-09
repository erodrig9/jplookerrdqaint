view: files_catalog_xref {
  sql_table_name: dbo.Files_Catalog_XRef ;;

  dimension: catalog_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CatalogId ;;
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

  dimension: sort_order {
    type: number
    sql: ${TABLE}.SortOrder ;;
  }

  measure: count {
    type: count
    drill_fields: [catalog.catalog_id, catalog.catalog_name, files.file_id, files.filename, files.original_file_name]
  }
}
