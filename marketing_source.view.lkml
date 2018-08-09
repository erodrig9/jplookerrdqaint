view: marketing_source {
  sql_table_name: dbo.MarketingSource ;;

  dimension: marketing_source_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.MarketingSourceId ;;
  }

  dimension: actual_mailing_quantity {
    type: number
    sql: ${TABLE}.ActualMailingQuantity ;;
  }

  dimension: budgeted_response_rate {
    type: number
    sql: ${TABLE}.BudgetedResponseRate ;;
  }

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.CampaignId ;;
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

  dimension: default {
    type: string
    sql: ${TABLE}."Default" ;;
  }

  dimension: distribution_order_type {
    type: string
    sql: ${TABLE}.DistributionOrderType ;;
  }

  dimension: dynamic_record_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DynamicRecordId ;;
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

  dimension: marketing_source_code {
    type: string
    sql: ${TABLE}.MarketingSourceCode ;;
  }

  dimension: marketing_source_name {
    type: string
    sql: ${TABLE}.MarketingSourceName ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.Notes ;;
  }

  dimension: offer_id {
    type: number
    sql: ${TABLE}.OfferId ;;
  }

  dimension: optimization_enabled {
    type: string
    sql: ${TABLE}.OptimizationEnabled ;;
  }

  dimension: order_processing_type {
    type: number
    sql: ${TABLE}.OrderProcessingType ;;
  }

  dimension: order_type {
    type: number
    sql: ${TABLE}.OrderType ;;
  }

  dimension: override_auto_inclusion_item_rules {
    type: string
    sql: ${TABLE}.OverrideAutoInclusionItemRules ;;
  }

  dimension: override_auto_inclusion_order_rules {
    type: string
    sql: ${TABLE}.OverrideAutoInclusionOrderRules ;;
  }

  dimension: override_status_shipment_constraints {
    type: string
    sql: ${TABLE}.OverrideStatusShipmentConstraints ;;
  }

  dimension: planned_mailing_quantity {
    type: number
    sql: ${TABLE}.PlannedMailingQuantity ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  dimension: segment_id {
    type: number
    sql: ${TABLE}.SegmentId ;;
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

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      marketing_source_id,
      marketing_source_name,
      dynamic_record.dynamic_record_id,
      auto_include_line.count,
      marketing_source_locale.count,
      order_header.count
    ]
  }
}
