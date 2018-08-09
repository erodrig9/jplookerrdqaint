view: provider_carrier_services {
  sql_table_name: dbo.Provider_CarrierServices ;;

  dimension: carrier_service_id {
    type: number
    sql: ${TABLE}.CarrierServiceId ;;
  }

  dimension: carrier_service_xref_id {
    type: number
    sql: ${TABLE}.CarrierServiceXRefId ;;
  }

  dimension: provider_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProviderId ;;
  }

  dimension: ship_code_override {
    type: string
    sql: ${TABLE}.ShipCodeOverride ;;
  }

  measure: count {
    type: count
    drill_fields: [providers.provider_name, providers.backup_provider_id]
  }
}
