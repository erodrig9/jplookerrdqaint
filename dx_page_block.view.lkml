view: dx_page_block {
  sql_table_name: dbo.DxPageBlock ;;

  dimension: block_order_id {
    type: number
    sql: ${TABLE}.BlockOrderId ;;
  }

  dimension: page_block_id {
    type: number
    sql: ${TABLE}.PageBlockId ;;
  }

  dimension: page_id {
    type: number
    sql: ${TABLE}.PageId ;;
  }

  dimension: template_id {
    type: number
    sql: ${TABLE}.TemplateId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
