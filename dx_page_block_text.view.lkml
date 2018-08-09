view: dx_page_block_text {
  sql_table_name: dbo.DxPageBlockText ;;

  dimension: page_block_id {
    type: number
    sql: ${TABLE}.PageBlockId ;;
  }

  dimension: page_block_text_id {
    type: number
    sql: ${TABLE}.PageBlockTextId ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.Text ;;
  }

  dimension: text_order_id {
    type: number
    sql: ${TABLE}.TextOrderId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
