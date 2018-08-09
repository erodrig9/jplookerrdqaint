view: disassemble_xref {
  sql_table_name: dbo.Disassemble_XRef ;;

  dimension: disassemble_xref_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Disassemble_XRefId ;;
  }

  dimension: disassemble_action_id {
    type: number
    sql: ${TABLE}.DisassembleActionId ;;
  }

  dimension: inventory_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.InventoryId ;;
  }

  dimension: order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderHeaderId ;;
  }

  dimension: order_line_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderLineId ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      disassemble_xref_id,
      order_header.autoship_order_header_id,
      order_line.catalog_name,
      order_line.item_type_name,
      order_line.sku_type_name,
      order_line.original_order_line_id,
      inventory.inventory_id,
      inventory.trademark_name
    ]
  }
}
