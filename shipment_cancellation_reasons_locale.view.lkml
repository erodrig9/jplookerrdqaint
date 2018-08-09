view: shipment_cancellation_reasons_locale {
  sql_table_name: dbo.ShipmentCancellationReasons_Locale ;;

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
  }

  dimension: shipment_cancellation_reasons_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ShipmentCancellationReasonsId ;;
  }

  dimension: shipment_cancellation_reasons_name {
    type: string
    sql: ${TABLE}.ShipmentCancellationReasonsName ;;
  }

  measure: count {
    type: count
    drill_fields: [shipment_cancellation_reasons_name, shipment_cancellation_reasons.shipment_cancellation_reasons_id, shipment_cancellation_reasons.shipment_cancellation_reasons_name]
  }
}
