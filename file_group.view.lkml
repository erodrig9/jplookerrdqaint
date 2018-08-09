view: file_group {
  sql_table_name: dbo.FileGroup ;;

  dimension: file_group_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.FileGroupId ;;
  }

  dimension: file_group_code {
    type: string
    sql: ${TABLE}.FileGroupCode ;;
  }

  dimension: file_group_name {
    type: string
    sql: ${TABLE}.FileGroupName ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  measure: count {
    type: count
    drill_fields: [file_group_id, file_group_name, files_file_group_xref.count]
  }
}
