view: providers {
  sql_table_name: dbo.Providers ;;

  dimension: backup_provider_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.BackupProviderId ;;
  }

  dimension: address1 {
    type: string
    sql: ${TABLE}.Address1 ;;
  }

  dimension: address2 {
    type: string
    sql: ${TABLE}.Address2 ;;
  }

  dimension: address3 {
    type: string
    sql: ${TABLE}.Address3 ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: contact {
    type: string
    sql: ${TABLE}.Contact ;;
  }

  dimension: country_id {
    type: number
    sql: ${TABLE}.CountryId ;;
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

  dimension: daily_cut_off {
    type: string
    sql: ${TABLE}.DailyCutOff ;;
  }

  dimension: default_inv_acct_methods_id {
    type: number
    sql: ${TABLE}.DefaultInvAcctMethodsId ;;
  }

  dimension: dynamic_record_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DynamicRecordId ;;
  }

  dimension: electronic_integration {
    type: string
    sql: ${TABLE}.ElectronicIntegration ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.EndDate ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}.Fax ;;
  }

  dimension: fed_ex_account {
    type: string
    sql: ${TABLE}.FedExAccount ;;
  }

  dimension: include_in_low_stock {
    type: string
    sql: ${TABLE}.IncludeInLowStock ;;
  }

  dimension: max_orders_released_by_day {
    type: number
    sql: ${TABLE}.MaxOrdersReleasedByDay ;;
  }

  dimension: max_orders_released_in_batch {
    type: number
    sql: ${TABLE}.MaxOrdersReleasedInBatch ;;
  }

  dimension: merchant_default_provider {
    type: string
    sql: ${TABLE}.MerchantDefaultProvider ;;
  }

  dimension: optimization_enabled {
    type: string
    sql: ${TABLE}.OptimizationEnabled ;;
  }

  dimension: optimization_rank {
    type: number
    sql: ${TABLE}.OptimizationRank ;;
  }

  dimension: phone_warehouse1 {
    type: string
    sql: ${TABLE}.PhoneWarehouse1 ;;
  }

  dimension: phone_warehouse2 {
    type: string
    sql: ${TABLE}.PhoneWarehouse2 ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.PostalCode ;;
  }

  dimension: project_default_provider {
    type: string
    sql: ${TABLE}.ProjectDefaultProvider ;;
  }

  dimension: provider_code {
    type: string
    sql: ${TABLE}.ProviderCode ;;
  }

  dimension: provider_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProviderId ;;
  }

  dimension: provider_name {
    type: string
    sql: ${TABLE}.ProviderName ;;
  }

  dimension: return_default_provider {
    type: string
    sql: ${TABLE}.ReturnDefaultProvider ;;
  }

  dimension: sing_post_account {
    type: string
    sql: ${TABLE}.SingPostAccount ;;
  }

  dimension: sladays {
    type: number
    sql: ${TABLE}.SLAdays ;;
  }

  dimension: smart_provider {
    type: string
    sql: ${TABLE}.SmartProvider ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.SortOrder ;;
  }

  dimension: st_pr_id {
    type: number
    sql: ${TABLE}.StPrId ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.StartDate ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  dimension: time_zone {
    type: string
    sql: ${TABLE}.TimeZone ;;
  }

  dimension: upsaccount {
    type: string
    sql: ${TABLE}.UPSAccount ;;
  }

  dimension: warehouse_integration_software_id {
    type: number
    sql: ${TABLE}.WarehouseIntegrationSoftwareId ;;
  }

  dimension: warehouse_management_software {
    type: string
    sql: ${TABLE}.WarehouseManagementSoftware ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      backup_provider_id,
      provider_name,
      providers.provider_name,
      providers.backup_provider_id,
      dynamic_record.dynamic_record_id,
      asnheader.count,
      autoship_shipping_info.count,
      autoship_shipping_info_history.count,
      blanket_order_header.count,
      closed_dates.count,
      inventory_provider_xref.count,
      inventory_sync_history.count,
      inventory_in_stock_nofication.count,
      inventory_transaction_log.count,
      logistics.count,
      order_header.count,
      order_shipments.count,
      order_shipments_history.count,
      order_shipping_info.count,
      order_shipping_info_history.count,
      provider_carrier_services.count,
      provider_closed_dates.count,
      provider_daily_schedule.count,
      provider_provider_type.count,
      provider_service_xref.count,
      provider_ship_method_time_in_transit.count,
      provider_default_countries_xref.count,
      provider_default_state_prov_xref.count,
      provider_optimization_audit.count,
      provider_parameter.count,
      providers.count,
      provider_transit_zones.count,
      purchase_order_line_detail.count,
      quantity_reservation_history.count,
      vw_inventory_provider_atp.count,
      vw_inventory_provider_sku.count
    ]
  }
}
