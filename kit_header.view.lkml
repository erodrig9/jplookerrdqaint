view: kit_header {
  sql_table_name: dbo.KitHeader ;;

  dimension: kit_header_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.KitHeaderId ;;
  }

  dimension: completed {
    type: string
    sql: ${TABLE}.Completed ;;
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

  dimension: inventory_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.InventoryId ;;
  }

  dimension: kit_description {
    type: string
    sql: ${TABLE}.KitDescription ;;
  }

  dimension: kit_name {
    type: string
    sql: ${TABLE}.KitName ;;
  }

  dimension: kit_notes {
    type: string
    sql: ${TABLE}.KitNotes ;;
  }

  dimension: kit_type_id {
    type: number
    sql: ${TABLE}.KitTypeId ;;
  }

  dimension: print_details {
    type: string
    sql: ${TABLE}.PrintDetails ;;
  }

  dimension: provider_notes {
    type: string
    sql: ${TABLE}.ProviderNotes ;;
  }

  dimension: revision_order {
    type: number
    sql: ${TABLE}.RevisionOrder ;;
  }

  dimension: ship_complete {
    type: string
    sql: ${TABLE}.ShipComplete ;;
  }

  dimension: ship_message {
    type: string
    sql: ${TABLE}.ShipMessage ;;
  }

  measure: count {
    type: count
    drill_fields: [kit_header_id, kit_name, inventory.inventory_id, inventory.trademark_name, kit_line.count]
  }
}
