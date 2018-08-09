view: kit_line {
  sql_table_name: dbo.KitLine ;;

  dimension: kit_line_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.KitLineId ;;
  }

  dimension: inventory_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.InventoryId ;;
  }

  dimension: kit_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.KitHeaderId ;;
  }

  dimension: kit_line_notes {
    type: string
    sql: ${TABLE}.KitLineNotes ;;
  }

  dimension: kit_placement_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.KitPlacementId ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
  }

  dimension: required {
    type: string
    sql: ${TABLE}.Required ;;
  }

  dimension: sequence {
    type: number
    sql: ${TABLE}.Sequence ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      kit_line_id,
      inventory.inventory_id,
      inventory.trademark_name,
      kit_header.kit_header_id,
      kit_header.kit_name,
      kit_placement.kit_placement_id,
      kit_placement.kit_placement_name,
      order_line_detail.count,
      order_line_detail_history.count
    ]
  }
}
