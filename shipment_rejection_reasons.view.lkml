view: shipment_rejection_reasons {
  sql_table_name: dbo.ShipmentRejectionReasons ;;

  dimension: shipment_rejection_reasons_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ShipmentRejectionReasonsId ;;
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

  dimension: shipment_rejection_reasons_code {
    type: string
    sql: ${TABLE}.ShipmentRejectionReasonsCode ;;
  }

  dimension: shipment_rejection_reasons_name {
    type: string
    sql: ${TABLE}.ShipmentRejectionReasonsName ;;
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
    drill_fields: [shipment_rejection_reasons_id, shipment_rejection_reasons_name, order_shipments.count, shipment_rejection_reasons_locale.count]
  }
}
