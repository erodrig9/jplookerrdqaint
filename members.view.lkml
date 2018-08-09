view: members {
  sql_table_name: dbo.Members ;;

  dimension: member_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.MemberId ;;
  }

  dimension: admin_user_id {
    type: number
    sql: ${TABLE}.AdminUserId ;;
  }

  dimension: affiliate_code {
    type: string
    sql: ${TABLE}.AffiliateCode ;;
  }

  dimension: affiliate_id {
    type: number
    sql: ${TABLE}.AffiliateId ;;
  }

  dimension: affiliate_rule_promotion_id {
    type: number
    sql: ${TABLE}.affiliateRulePromotionID ;;
  }

  dimension: affiliate_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.AffiliateTypeID ;;
  }

  dimension_group: affiliation {
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
    sql: ${TABLE}.AffiliationDate ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.Age ;;
  }

  dimension: bad_login_attempts {
    type: number
    sql: ${TABLE}.BadLoginAttempts ;;
  }

  dimension: budget_balance {
    type: string
    sql: ${TABLE}.BudgetBalance ;;
  }

  dimension: budget_frequency {
    type: number
    sql: ${TABLE}.BudgetFrequency ;;
  }

  dimension_group: budget_last_updated {
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
    sql: ${TABLE}.BudgetLastUpdated ;;
  }

  dimension: budget_restore {
    type: string
    sql: ${TABLE}.BudgetRestore ;;
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

  dimension: credit_status {
    type: string
    sql: ${TABLE}.CreditStatus ;;
  }

  dimension_group: date_of_birth {
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
    sql: ${TABLE}.DateOfBirth ;;
  }

  dimension: download_total {
    type: string
    sql: ${TABLE}.DownloadTotal ;;
  }

  dimension: dynamic_record_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DynamicRecordId ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: email_format_id {
    type: number
    sql: ${TABLE}.EmailFormatId ;;
  }

  dimension: email_validation_failed {
    type: string
    sql: ${TABLE}.EmailValidationFailed ;;
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

  dimension: extern_member_xref {
    type: string
    sql: ${TABLE}.ExternMemberXRef ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.Gender ;;
  }

  dimension: income {
    type: string
    sql: ${TABLE}.Income ;;
  }

  dimension: is_affiliate {
    type: string
    sql: ${TABLE}.IsAffiliate ;;
  }

  dimension_group: last_login {
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
    sql: ${TABLE}.LastLoginDate ;;
  }

  dimension_group: last_updated {
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
    sql: ${TABLE}.LastUpdated ;;
  }

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
  }

  dimension: marketing_permission_ext {
    type: string
    sql: ${TABLE}.MarketingPermissionExt ;;
  }

  dimension: marketing_permission_int {
    type: string
    sql: ${TABLE}.MarketingPermissionInt ;;
  }

  dimension: member_number {
    type: string
    sql: ${TABLE}.MemberNumber ;;
  }

  dimension: member_origin_id {
    type: number
    sql: ${TABLE}.MemberOriginId ;;
  }

  dimension: member_source_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MemberSourceId ;;
  }

  dimension: member_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MemberTypeId ;;
  }

  dimension: name_first {
    type: string
    sql: ${TABLE}.NameFirst ;;
  }

  dimension: name_last {
    type: string
    sql: ${TABLE}.NameLast ;;
  }

  dimension: name_middle {
    type: string
    sql: ${TABLE}.NameMiddle ;;
  }

  dimension: occupation {
    type: string
    sql: ${TABLE}.Occupation ;;
  }

  dimension: organization {
    type: string
    sql: ${TABLE}.Organization ;;
  }

  dimension_group: password_change {
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
    sql: ${TABLE}.PasswordChangeDate ;;
  }

  dimension: password_hash {
    type: string
    sql: ${TABLE}.passwordHash ;;
  }

  dimension: pref_communication {
    type: string
    sql: ${TABLE}.PrefCommunication ;;
  }

  dimension: pref_ship_method {
    type: number
    sql: ${TABLE}.PrefShipMethod ;;
  }

  dimension: price_list_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.PriceListId ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  dimension: rule_promotion_id {
    type: number
    sql: ${TABLE}.rulePromotionID ;;
  }

  dimension: sales_relationship_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SalesRelationshipId ;;
  }

  dimension: salutation {
    type: string
    sql: ${TABLE}.Salutation ;;
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

  dimension: store_payment_info {
    type: string
    sql: ${TABLE}.StorePaymentInfo ;;
  }

  dimension: tax_number {
    type: string
    sql: ${TABLE}.TaxNumber ;;
  }

  dimension: total_items {
    type: number
    sql: ${TABLE}.TotalItems ;;
  }

  dimension: total_sales {
    type: string
    sql: ${TABLE}.TotalSales ;;
  }

  dimension: total_transaction {
    type: number
    sql: ${TABLE}.TotalTransaction ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.Username ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      member_id,
      username,
      price_lists.price_list_id,
      price_lists.price_list_name,
      member_types.member_type_id,
      member_types.member_type_name,
      dynamic_record.dynamic_record_id,
      sales_relationships.sales_relationship_id,
      sales_relationships.sales_relationship_name,
      member_sources.member_source_id,
      member_sources.member_source_name,
      affiliate_types.affiliate_type_id,
      affiliate_types.affiliate_type_name,
      addresses.count,
      affiliate_commission.count,
      alternate_deliveries.count,
      audit.count,
      autoship_address.count,
      autoship_address_history.count,
      autoship_order_header.count,
      autoship_order_header_history.count,
      autoship_payment_info.count,
      autoship_payment_info_history.count,
      blanket_order_audit.count,
      blanket_order_header.count,
      calendar_members_xref.count,
      calendar_friends.count,
      distribution_codes_members_xref.count,
      email_broadcast_success_log.count,
      files_members_xref.count,
      gift_certificate_adjustments.count,
      group_members_xref.count,
      inventory_in_stock_nofication.count,
      marketing_campaign_members_xref.count,
      member_affiliate_commission_types_xref.count,
      member_affiliates_xref.count,
      member_social_network_x_ref.count,
      member_budget.count,
      member_notes.count,
      members_marketing_segment_xref.count,
      members_payment_types_xref.count,
      members_registered_product_xref.count,
      members_sales_territories_xref.count,
      members_password_history.count,
      member_wish_list.count,
      order_header.count,
      payment_info.count,
      search_tracking.count,
      service_request.count,
      survey_answers.count
    ]
  }
}
