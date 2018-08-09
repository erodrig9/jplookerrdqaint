view: service_request_types {
  sql_table_name: dbo.ServiceRequestTypes ;;

  dimension: service_request_type_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ServiceRequestTypeId ;;
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

  dimension: service_request_type_code {
    type: string
    sql: ${TABLE}.ServiceRequestTypeCode ;;
  }

  dimension: service_request_type_description {
    type: string
    sql: ${TABLE}.ServiceRequestTypeDescription ;;
  }

  dimension: service_request_type_name {
    type: string
    sql: ${TABLE}.ServiceRequestTypeName ;;
  }

  dimension: sort_order {
    type: string
    sql: ${TABLE}.SortOrder ;;
  }

  measure: count {
    type: count
    drill_fields: [service_request_type_id, service_request_type_name, service_request.count]
  }
}
