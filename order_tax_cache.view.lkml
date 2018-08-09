view: order_tax_cache {
  sql_table_name: dbo.OrderTaxCache ;;

  dimension: order_tax_cache_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrderTaxCacheId ;;
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

  dimension: order_hash_code {
    type: number
    sql: ${TABLE}.OrderHashCode ;;
  }

  dimension: order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderHeaderId ;;
  }

  dimension: order_tax_result {
    type: string
    sql: ${TABLE}.OrderTaxResult ;;
  }

  measure: count {
    type: count
    drill_fields: [order_tax_cache_id, order_header.autoship_order_header_id]
  }
}
