view: order_types {
  sql_table_name: dbo.OrderTypes ;;

  dimension: order_type_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrderTypeId ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: order_type_name {
    type: string
    sql: ${TABLE}.OrderTypeName ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  measure: count {
    type: count
    drill_fields: [order_type_id, order_type_name, order_header.count]
  }
}
