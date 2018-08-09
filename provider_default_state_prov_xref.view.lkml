view: provider_default_state_prov_xref {
  sql_table_name: dbo.ProviderDefault_StateProv_XRef ;;

  dimension: is_rma {
    type: string
    sql: ${TABLE}.isRMA ;;
  }

  dimension: provider_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProviderId ;;
  }

  dimension: stpr_id {
    type: number
    sql: ${TABLE}.stprId ;;
  }

  measure: count {
    type: count
    drill_fields: [providers.provider_name, providers.backup_provider_id]
  }
}
