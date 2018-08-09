view: shipment_cancellation_reasons {
  sql_table_name: dbo.ShipmentCancellationReasons ;;

  dimension: shipment_cancellation_reasons_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ShipmentCancellationReasonsId ;;
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

  dimension: is_default {
    type: string
    sql: ${TABLE}.IsDefault ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  dimension: shipment_cancellation_reasons_code {
    type: string
    sql: ${TABLE}.ShipmentCancellationReasonsCode ;;
  }

  dimension: shipment_cancellation_reasons_name {
    type: string
    sql: ${TABLE}.ShipmentCancellationReasonsName ;;
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
    drill_fields: [shipment_cancellation_reasons_id, shipment_cancellation_reasons_name, order_shipments.count, shipment_cancellation_reasons_locale.count]
  }
}
