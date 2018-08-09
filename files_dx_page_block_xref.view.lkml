view: files_dx_page_block_xref {
  sql_table_name: dbo.Files_DxPageBlock_XRef ;;

  dimension: default_file {
    type: string
    sql: ${TABLE}.DefaultFile ;;
  }

  dimension: file_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.FileId ;;
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
    drill_fields: [files.file_id, files.filename, files.original_file_name]
  }
}
