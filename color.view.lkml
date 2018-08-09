view: color {
  sql_table_name: dbo.Color ;;

  dimension: color_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ColorId ;;
  }

  dimension: color_code {
    type: string
    sql: ${TABLE}.ColorCode ;;
  }

  dimension: color_group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ColorGroupId ;;
  }

  dimension: color_name {
    type: string
    sql: ${TABLE}.ColorName ;;
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

  dimension: file_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.FileId ;;
  }

  dimension: hex_code {
    type: string
    sql: ${TABLE}.HexCode ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  dimension: sort_order {
    type: string
    sql: ${TABLE}.SortOrder ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      color_id,
      color_name,
      files.file_id,
      files.filename,
      files.original_file_name,
      color_group.color_group_id,
      color_group.color_group_name,
      color_locale.count,
      inventory.count
    ]
  }
}
