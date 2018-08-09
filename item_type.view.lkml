view: item_type {
  sql_table_name: dbo.ItemType ;;

  dimension: item_type_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ItemTypeId ;;
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

  dimension: item_type_code {
    type: string
    sql: ${TABLE}.itemTypeCode ;;
  }

  dimension: item_type_name {
    type: string
    sql: ${TABLE}.ItemTypeName ;;
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
    drill_fields: [item_type_id, item_type_name, catalog.count, item_type_locale.count]
  }
}
