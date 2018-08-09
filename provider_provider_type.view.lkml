view: provider_provider_type {
  sql_table_name: dbo.Provider_ProviderType ;;

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
    sql: ${TABLE}.createDate ;;
  }

  dimension: provider_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.providerID ;;
  }

  dimension: provider_type_code {
    type: string
    sql: ${TABLE}.providerTypeCode ;;
  }

  measure: count {
    type: count
    drill_fields: [providers.provider_name, providers.backup_provider_id]
  }
}
