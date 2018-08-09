view: order_notes {
  sql_table_name: dbo.OrderNotes ;;

  dimension: order_notes_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrderNotesId ;;
  }

  dimension: asnheader_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ASNHeaderId ;;
  }

  dimension: asnline_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ASNLineId ;;
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

  dimension: order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderHeaderId ;;
  }

  dimension: order_note {
    type: string
    sql: ${TABLE}.OrderNote ;;
  }

  dimension: system_entity_id {
    type: number
    sql: ${TABLE}.SystemEntityId ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.UserId ;;
  }

  measure: count {
    type: count
    drill_fields: [order_notes_id, order_header.autoship_order_header_id, asnheader.asnheader_id, asnline.asnline_id]
  }
}
