view: style {
  sql_table_name: dbo.Style ;;

  dimension: style_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.StyleId ;;
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

  dimension: style_name {
    type: string
    sql: ${TABLE}.StyleName ;;
  }

  measure: count {
    type: count
    drill_fields: [style_id, style_name, inventory.count, service_request.count, style_locale.count]
  }
}
