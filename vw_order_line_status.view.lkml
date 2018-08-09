view: vw_order_line_status {
  sql_table_name: dbo.VwOrderLineStatus ;;

  dimension: order_line_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.orderLineId ;;
  }

  dimension: order_status_code {
    type: string
    sql: ${TABLE}.orderStatusCode ;;
  }

  dimension: order_status_id {
    type: number
    sql: ${TABLE}.orderStatusId ;;
  }

  dimension: order_status_name {
    type: string
    sql: ${TABLE}.orderStatusName ;;
  }

  measure: count {
    type: count
    drill_fields: [order_status_name, order_line.catalog_name, order_line.item_type_name, order_line.sku_type_name, order_line.original_order_line_id]
  }
}
