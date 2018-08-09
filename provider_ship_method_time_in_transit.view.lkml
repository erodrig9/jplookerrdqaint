view: provider_ship_method_time_in_transit {
  sql_table_name: dbo.Provider_ShipMethod_TimeInTransit ;;

  dimension: postal_code {
    type: string
    sql: ${TABLE}.PostalCode ;;
  }

  dimension: provider_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProviderId ;;
  }

  dimension: ship_method_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ShipMethodId ;;
  }

  dimension: time_in_transit_days {
    type: number
    sql: ${TABLE}.TimeInTransitDays ;;
  }

  dimension: time_in_transit_id {
    type: number
    sql: ${TABLE}.TimeInTransitId ;;
  }

  measure: count {
    type: count
    drill_fields: [providers.provider_name, providers.backup_provider_id, ship_methods.ship_method_id, ship_methods.ship_method_name, ship_methods.display_name]
  }
}
