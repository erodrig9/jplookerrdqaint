view: provider_default_countries_xref {
  sql_table_name: dbo.ProviderDefault_Countries_XRef ;;

  dimension: country_id {
    type: number
    sql: ${TABLE}.CountryId ;;
  }

  dimension: is_rma {
    type: string
    sql: ${TABLE}.isRMA ;;
  }

  dimension: provider_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProviderId ;;
  }

  measure: count {
    type: count
    drill_fields: [providers.provider_name, providers.backup_provider_id]
  }
}
