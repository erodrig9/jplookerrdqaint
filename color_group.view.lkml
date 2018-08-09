view: color_group {
  sql_table_name: dbo.ColorGroup ;;

  dimension: color_group_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ColorGroupId ;;
  }

  dimension: color_group_code {
    type: string
    sql: ${TABLE}.ColorGroupCode ;;
  }

  dimension: color_group_file_id {
    type: number
    sql: ${TABLE}.ColorGroupFileId ;;
  }

  dimension: color_group_hex_code {
    type: string
    sql: ${TABLE}.ColorGroupHexCode ;;
  }

  dimension: color_group_name {
    type: string
    sql: ${TABLE}.ColorGroupName ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  measure: count {
    type: count
    drill_fields: [color_group_id, color_group_name, color.count, color_group_locale.count]
  }
}
