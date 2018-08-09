view: warranties {
  sql_table_name: dbo.Warranties ;;

  dimension: warranty_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.WarrantyId ;;
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

  dimension_group: last_updated {
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
    sql: ${TABLE}.LastUpdated ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  dimension: warranty_coverage_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.WarrantyCoverageId ;;
  }

  dimension: warranty_duration {
    type: number
    sql: ${TABLE}.WarrantyDuration ;;
  }

  dimension: warranty_duration_span_id {
    type: number
    sql: ${TABLE}.WarrantyDurationSpanId ;;
  }

  dimension: warranty_name {
    type: string
    sql: ${TABLE}.WarrantyName ;;
  }

  dimension: warranty_purchase {
    type: number
    sql: ${TABLE}.WarrantyPurchase ;;
  }

  dimension: warranty_purchase_span_id {
    type: number
    sql: ${TABLE}.WarrantyPurchaseSpanId ;;
  }

  dimension: warranty_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.WarrantyTypeId ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      warranty_id,
      warranty_name,
      warranty_types.warranty_type_id,
      warranty_types.warranty_type_name,
      warranty_coverages.warranty_coverage_id,
      warranty_coverages.warranty_coverage_name
    ]
  }
}
