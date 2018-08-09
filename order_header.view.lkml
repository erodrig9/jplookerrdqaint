view: order_header {
  sql_table_name: dbo.OrderHeader ;;

  dimension: autoship_order_header_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.AutoshipOrderHeaderId ;;
  }

  dimension: affiliate_id {
    type: number
    sql: ${TABLE}.AffiliateId ;;
  }

  dimension: authorization_info_id {
    type: number
    sql: ${TABLE}.AuthorizationInfoId ;;
  }

  dimension: auto_ship_number {
    type: number
    sql: ${TABLE}.AutoShipNumber ;;
  }

  dimension: bill_order_address_id {
    type: number
    sql: ${TABLE}.Bill_OrderAddressId ;;
  }

  dimension: billing_code_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.BillingCodeId ;;
  }

  dimension: blanket_order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.BlanketOrderHeaderId ;;
  }

  dimension: budget_center_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.BudgetCenterId ;;
  }

  dimension: client_reference {
    type: string
    sql: ${TABLE}.ClientReference ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.Comments ;;
  }

  dimension: commission_info {
    type: string
    sql: ${TABLE}.CommissionInfo ;;
  }

  dimension: commission_value {
    type: string
    sql: ${TABLE}.CommissionValue ;;
  }

  dimension_group: complete_by {
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
    sql: ${TABLE}.CompleteByDate ;;
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

  dimension: custodian_user_id {
    type: number
    sql: ${TABLE}.Custodian_UserId ;;
  }

  dimension: destination_provider_id {
    type: number
    sql: ${TABLE}.DestinationProviderId ;;
  }

  dimension: distribution_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DistributionId ;;
  }

  dimension: dynamic_record_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DynamicRecordId ;;
  }

  dimension: edge_user_id {
    type: number
    sql: ${TABLE}.Edge_UserId ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: fobrule_id {
    type: number
    sql: ${TABLE}.FOBRuleId ;;
  }

  dimension: group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.GroupId ;;
  }

  dimension: ipoctet1 {
    type: number
    sql: ${TABLE}.IPOctet1 ;;
  }

  dimension: ipoctet2 {
    type: number
    sql: ${TABLE}.IPOctet2 ;;
  }

  dimension: ipoctet3 {
    type: number
    sql: ${TABLE}.IPOctet3 ;;
  }

  dimension: ipoctet4 {
    type: number
    sql: ${TABLE}.IPOctet4 ;;
  }

  dimension: locale_code {
    type: string
    sql: ${TABLE}.localeCode ;;
  }

  dimension: marketing_source_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MarketingSourceId ;;
  }

  dimension: member_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MemberId ;;
  }

  dimension: order_currency_commission_value {
    type: string
    sql: ${TABLE}.OrderCurrencyCommissionValue ;;
  }

  dimension: order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderHeaderId ;;
  }

  dimension: order_source_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderSourceId ;;
  }

  dimension: order_status_id {
    type: number
    sql: ${TABLE}.OrderStatusId ;;
  }

  dimension: order_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderTypeId ;;
  }

  dimension: ordered_by_member_id {
    type: number
    sql: ${TABLE}.OrderedBy_MemberId ;;
  }

  dimension: original_order_header_id {
    type: number
    sql: ${TABLE}.OriginalOrderHeaderId ;;
  }

  dimension: priority_id {
    type: number
    sql: ${TABLE}.PriorityId ;;
  }

  dimension_group: priority_ship {
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
    sql: ${TABLE}.PriorityShipDate ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  dimension: provider_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProviderId ;;
  }

  dimension_group: record_create {
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
    sql: ${TABLE}.RecordCreateDate ;;
  }

  dimension: reference_field1 {
    type: string
    sql: ${TABLE}.ReferenceField1 ;;
  }

  dimension: reference_field2 {
    type: string
    sql: ${TABLE}.ReferenceField2 ;;
  }

  dimension: reference_field3 {
    type: string
    sql: ${TABLE}.ReferenceField3 ;;
  }

  dimension: reference_field4 {
    type: string
    sql: ${TABLE}.ReferenceField4 ;;
  }

  dimension: reference_field5 {
    type: string
    sql: ${TABLE}.ReferenceField5 ;;
  }

  dimension_group: release {
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
    sql: ${TABLE}.ReleaseDate ;;
  }

  dimension: sales_territory_id {
    type: number
    sql: ${TABLE}.SalesTerritoryId ;;
  }

  dimension: ship_complete {
    type: string
    sql: ${TABLE}.ShipComplete ;;
  }

  dimension: source_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SourceId ;;
  }

  dimension: work_order_reference {
    type: string
    sql: ${TABLE}.WorkOrderReference ;;
  }

  dimension: work_order_source_id {
    type: number
    sql: ${TABLE}.WorkOrderSourceId ;;
  }

  dimension: work_order_type_id {
    type: number
    sql: ${TABLE}.WorkOrderTypeId ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      autoship_order_header_id,
      order_header.autoship_order_header_id,
      members.member_id,
      members.username,
      distributions.distribution_id,
      distributions.job_name,
      providers.provider_name,
      providers.backup_provider_id,
      order_types.order_type_id,
      order_types.order_type_name,
      dynamic_record.dynamic_record_id,
      source.source_id,
      source.source_name,
      order_sources.order_source_id,
      order_sources.order_source_name,
      billing_codes.billing_code_id,
      billing_codes.billing_code_name,
      marketing_source.marketing_source_id,
      marketing_source.marketing_source_name,
      groups.group_id,
      groups.group_name,
      budget_center.budget_center_id,
      budget_center.budget_center_name,
      blanket_order_header.blanket_order_header_id,
      __lk_orders.count,
      asnheader.count,
      authorizer_order.count,
      authorizer_order_history.count,
      autoship_delivery.count,
      autoship_order_header.count,
      autoship_order_header_history.count,
      disassemble_xref.count,
      member_notes.count,
      member_wish_list_item.count,
      order_address.count,
      order_address_history.count,
      order_audit.count,
      order_exceptions.count,
      order_header.count,
      order_header_promotion.count,
      order_line.count,
      order_notes.count,
      order_payment.count,
      order_payment_method.count,
      order_shipping_info.count,
      order_shipping_info_history.count,
      order_tax_cache.count,
      order_tax_detail.count,
      return_order_order_xref.count,
      search_tracking.count,
      service_order_diagnostic_code_xref.count,
      service_order_service_codes_xref.count,
      service_order_service_parts_xref.count,
      service_order_header.count,
      service_request.count,
      tracking.count,
      tracking_history.count,
      vw_controller_get_sales_orders.count,
      vw_order_line_detail_tax.count,
      vw_order_shipping_info_tax.count,
      vw_order_status.count,
      vw_order_total.count,
      vw_order_total_order_line.count,
      vw_order_total_order_line_detail.count,
      vw_order_total_order_shipping_info.count,
      vw_order_total_converted.count
    ]
  }
}
