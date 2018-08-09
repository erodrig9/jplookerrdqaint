view: provider_parameter {
  sql_table_name: dbo.ProviderParameter ;;

  dimension: provider_parameter_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ProviderParameterId ;;
  }

  dimension: parameter {
    type: string
    sql: ${TABLE}.Parameter ;;
  }

  dimension: provider_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProviderId ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.Value ;;
  }

  measure: count {
    type: count
    drill_fields: [provider_parameter_id, providers.provider_name, providers.backup_provider_id]
  }
}
