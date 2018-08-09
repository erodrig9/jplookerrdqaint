view: vw_autoship_order_total {
  sql_table_name: dbo.VwAutoshipOrderTotal ;;

  dimension: autoship_order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.AutoshipOrderHeaderId ;;
  }

  dimension: currency_code {
    type: string
    sql: ${TABLE}.CurrencyCode ;;
  }

  dimension: locale_code {
    type: string
    sql: ${TABLE}.LocaleCode ;;
  }

  dimension: order_amount {
    type: string
    sql: ${TABLE}.OrderAmount ;;
  }

  dimension: order_amount_converted {
    type: number
    sql: ${TABLE}.OrderAmountConverted ;;
  }

  dimension: rate {
    type: number
    sql: ${TABLE}.Rate ;;
  }

  dimension: scale {
    type: number
    sql: ${TABLE}.Scale ;;
  }

  measure: count {
    type: count
    drill_fields: [autoship_order_header.autoship_order_header_id]
  }
}
