view: kit_placement {
  sql_table_name: dbo.KitPlacement ;;

  dimension: kit_placement_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.KitPlacementId ;;
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

  dimension: kit_placement_name {
    type: string
    sql: ${TABLE}.KitPlacementName ;;
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
    drill_fields: [kit_placement_id, kit_placement_name, kit_line.count]
  }
}
