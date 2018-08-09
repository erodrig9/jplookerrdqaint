view: provider_optimization_audit {
  sql_table_name: dbo.ProviderOptimizationAudit ;;

  dimension: provider_optimization_audit_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ProviderOptimizationAuditID ;;
  }

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
    sql: ${TABLE}.CreateDate ;;
  }

  dimension: order_shipping_info_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderShippingInfoId ;;
  }

  dimension: provider_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProviderId ;;
  }

  dimension: reason {
    type: string
    sql: ${TABLE}.Reason ;;
  }

  dimension: was_selected {
    type: string
    sql: ${TABLE}.WasSelected ;;
  }

  measure: count {
    type: count
    drill_fields: [provider_optimization_audit_id, order_shipping_info.order_shipping_info_id, providers.provider_name, providers.backup_provider_id]
  }
}
