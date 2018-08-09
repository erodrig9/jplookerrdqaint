view: files_file_group_xref {
  sql_table_name: dbo.Files_FileGroup_XRef ;;

  dimension: file_group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.FileGroupId ;;
  }

  dimension: file_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.FileId ;;
  }

  measure: count {
    type: count
    drill_fields: [files.file_id, files.filename, files.original_file_name, file_group.file_group_id, file_group.file_group_name]
  }
}
