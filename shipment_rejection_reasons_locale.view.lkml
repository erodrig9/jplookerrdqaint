view: shipment_rejection_reasons_locale {
  sql_table_name: dbo.ShipmentRejectionReasons_Locale ;;

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
  }

  dimension: shipment_rejection_reasons_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ShipmentRejectionReasonsId ;;
  }

  dimension: shipment_rejection_reasons_name {
    type: string
    sql: ${TABLE}.ShipmentRejectionReasonsName ;;
  }

  measure: count {
    type: count
    drill_fields: [shipment_rejection_reasons_name, shipment_rejection_reasons.shipment_rejection_reasons_id, shipment_rejection_reasons.shipment_rejection_reasons_name]
  }
}
