view: service_order_status {
  sql_table_name: dbo.ServiceOrderStatus ;;

  dimension: service_order_status_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ServiceOrderStatusId ;;
  }

  dimension_group: date_created {
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
    sql: ${TABLE}.DateCreated ;;
  }

  dimension: service_order_status_code {
    type: string
    sql: ${TABLE}.ServiceOrderStatusCode ;;
  }

  dimension: service_order_status_description {
    type: string
    sql: ${TABLE}.ServiceOrderStatusDescription ;;
  }

  dimension: service_order_status_name {
    type: string
    sql: ${TABLE}.ServiceOrderStatusName ;;
  }

  dimension: sort_order {
    type: string
    sql: ${TABLE}.SortOrder ;;
  }

  measure: count {
    type: count
    drill_fields: [service_order_status_id, service_order_status_name, service_order_header.count]
  }
}
