view: service_request_status {
  sql_table_name: dbo.ServiceRequestStatus ;;

  dimension: service_request_status_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ServiceRequestStatusId ;;
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

  dimension: service_request_status_code {
    type: string
    sql: ${TABLE}.ServiceRequestStatusCode ;;
  }

  dimension: service_request_status_description {
    type: string
    sql: ${TABLE}.ServiceRequestStatusDescription ;;
  }

  dimension: service_request_status_name {
    type: string
    sql: ${TABLE}.ServiceRequestStatusName ;;
  }

  dimension: sort_order {
    type: string
    sql: ${TABLE}.SortOrder ;;
  }

  measure: count {
    type: count
    drill_fields: [service_request_status_id, service_request_status_name, service_request.count]
  }
}
