view: files_members_xref {
  sql_table_name: dbo.Files_Members_XRef ;;

  dimension: default_file {
    type: string
    sql: ${TABLE}.DefaultFile ;;
  }

  dimension: file_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.FileId ;;
  }

  dimension: member_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MemberId ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.SortOrder ;;
  }

  measure: count {
    type: count
    drill_fields: [members.member_id, members.username, files.file_id, files.filename, files.original_file_name]
  }
}
