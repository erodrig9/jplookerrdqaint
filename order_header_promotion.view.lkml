view: order_header_promotion {
  sql_table_name: dbo.OrderHeader_Promotion ;;

  dimension: order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.orderHeaderID ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: rule_promotion_id {
    type: number
    sql: ${TABLE}.rulePromotionID ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [order_header.autoship_order_header_id]
  }
}
