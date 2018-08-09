view: registered_product_sources {
  sql_table_name: dbo.RegisteredProductSources ;;

  dimension: registered_product_source_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.RegisteredProductSourceId ;;
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

  dimension: registered_product_source_code {
    type: string
    sql: ${TABLE}.RegisteredProductSourceCode ;;
  }

  dimension: registered_product_source_name {
    type: string
    sql: ${TABLE}.RegisteredProductSourceName ;;
  }

  dimension: sort_order {
    type: string
    sql: ${TABLE}.sortOrder ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  measure: count {
    type: count
    drill_fields: [registered_product_source_id, registered_product_source_name, members_registered_product_xref.count]
  }
}
