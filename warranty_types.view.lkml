view: warranty_types {
  sql_table_name: dbo.WarrantyTypes ;;

  dimension: warranty_type_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.WarrantyTypeId ;;
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

  dimension: sort_order {
    type: string
    sql: ${TABLE}.SortOrder ;;
  }

  dimension: warranty_type_code {
    type: string
    sql: ${TABLE}.WarrantyTypeCode ;;
  }

  dimension: warranty_type_description {
    type: string
    sql: ${TABLE}.WarrantyTypeDescription ;;
  }

  dimension: warranty_type_name {
    type: string
    sql: ${TABLE}.WarrantyTypeName ;;
  }

  measure: count {
    type: count
    drill_fields: [warranty_type_id, warranty_type_name, service_order_header.count, warranties.count]
  }
}
