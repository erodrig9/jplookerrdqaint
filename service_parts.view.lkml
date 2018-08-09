view: service_parts {
  sql_table_name: dbo.ServiceParts ;;

  dimension: service_part_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ServicePartId ;;
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

  dimension: service_part_code {
    type: string
    sql: ${TABLE}.ServicePartCode ;;
  }

  dimension: service_part_description {
    type: string
    sql: ${TABLE}.ServicePartDescription ;;
  }

  dimension: service_part_name {
    type: string
    sql: ${TABLE}.ServicePartName ;;
  }

  dimension: sort_order {
    type: string
    sql: ${TABLE}.SortOrder ;;
  }

  measure: count {
    type: count
    drill_fields: [service_part_id, service_part_name, service_order_service_parts_xref.count]
  }
}
