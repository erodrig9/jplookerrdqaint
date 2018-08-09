view: files {
  sql_table_name: dbo.Files ;;

  dimension: file_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.FileId ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: file_class_id {
    type: number
    sql: ${TABLE}.FileClassId ;;
  }

  dimension: file_size {
    type: number
    sql: ${TABLE}.FileSize ;;
  }

  dimension: file_type_id {
    type: number
    sql: ${TABLE}.FileTypeId ;;
  }

  dimension: filename {
    type: string
    sql: ${TABLE}.Filename ;;
  }

  dimension: height {
    type: number
    sql: ${TABLE}.Height ;;
  }

  dimension: original_file_name {
    type: string
    sql: ${TABLE}.OriginalFileName ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.Title ;;
  }

  dimension: width {
    type: number
    sql: ${TABLE}.Width ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      file_id,
      filename,
      original_file_name,
      alternate_deliveries.count,
      banners.count,
      color.count,
      communications.count,
      files_calendar_xref.count,
      files_catalog_xref.count,
      files_category_xref.count,
      files_dx_page_block_xref.count,
      files_file_group_xref.count,
      files_inventory_xref.count,
      files_locale.count,
      files_members_xref.count,
      files_xref.count
    ]
  }
}
