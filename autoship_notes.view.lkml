view: autoship_notes {
  sql_table_name: dbo.AutoshipNotes ;;

  dimension: autoship_notes_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.autoshipNotesId ;;
  }

  dimension: autoship_note {
    type: string
    sql: ${TABLE}.autoshipNote ;;
  }

  dimension: autoship_order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.autoshipOrderHeaderID ;;
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
    sql: ${TABLE}.createDate ;;
  }

  dimension: system_entity_id {
    type: number
    sql: ${TABLE}.systemEntityID ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.userID ;;
  }

  measure: count {
    type: count
    drill_fields: [autoship_notes_id, autoship_order_header.autoship_order_header_id]
  }
}
