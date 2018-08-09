view: provider_closed_dates {
  sql_table_name: dbo.Provider_ClosedDates ;;

  dimension: provider_closed_dates_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ProviderClosedDatesID ;;
  }

  dimension: closed_date {
    type: string
    sql: ${TABLE}.ClosedDate ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: provider_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProviderId ;;
  }

  measure: count {
    type: count
    drill_fields: [provider_closed_dates_id, providers.provider_name, providers.backup_provider_id]
  }
}
