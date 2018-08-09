view: order_sources {
  sql_table_name: dbo.OrderSources ;;

  dimension: order_source_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrderSourceId ;;
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

  dimension: optimization_enabled {
    type: string
    sql: ${TABLE}.OptimizationEnabled ;;
  }

  dimension: order_source_name {
    type: string
    sql: ${TABLE}.OrderSourceName ;;
  }

  dimension: sort_order {
    type: string
    sql: ${TABLE}.SortOrder ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      order_source_id,
      order_source_name,
      blanket_order_header.count,
      communications.count,
      marketing_offer.count,
      order_header.count
    ]
  }
}
