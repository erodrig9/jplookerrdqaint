view: billing_codes {
  sql_table_name: dbo.BillingCodes ;;

  dimension: billing_code_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.BillingCodeId ;;
  }

  dimension: auto_cancel_rma {
    type: string
    sql: ${TABLE}.AutoCancelRMA ;;
  }

  dimension: billing_code_name {
    type: string
    sql: ${TABLE}.BillingCodeName ;;
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

  dimension: reduce_shipments_enable {
    type: string
    sql: ${TABLE}.ReduceShipmentsEnable ;;
  }

  dimension: sort_order {
    type: string
    sql: ${TABLE}.SortOrder ;;
  }

  dimension: split_shipment_enable {
    type: string
    sql: ${TABLE}.SplitShipmentEnable ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  measure: count {
    type: count
    drill_fields: [billing_code_id, billing_code_name, blanket_order_header.count, order_header.count]
  }
}
