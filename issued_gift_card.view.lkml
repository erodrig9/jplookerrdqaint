view: issued_gift_card {
  sql_table_name: dbo.IssuedGiftCard ;;

  dimension: issued_gift_card_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.IssuedGiftCardId ;;
  }

  dimension: card_number {
    type: string
    sql: ${TABLE}.CardNumber ;;
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

  dimension: order_line_detail_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderLineDetailId ;;
  }

  measure: count {
    type: count
    drill_fields: [issued_gift_card_id, order_line_detail.order_line_detail_id]
  }
}
