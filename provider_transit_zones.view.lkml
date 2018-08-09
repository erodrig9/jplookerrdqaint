view: provider_transit_zones {
  sql_table_name: dbo.ProviderTransitZones ;;

  dimension: days_in_transit {
    type: number
    sql: ${TABLE}.DaysInTransit ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.PostalCode ;;
  }

  dimension: provider_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProviderId ;;
  }

  dimension: zone {
    type: number
    sql: ${TABLE}.Zone ;;
  }

  measure: count {
    type: count
    drill_fields: [providers.provider_name, providers.backup_provider_id]
  }
}
