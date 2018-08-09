view: blanket_order_header {
  sql_table_name: dbo.BlanketOrderHeader ;;

  dimension: blanket_order_header_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.BlanketOrderHeaderId ;;
  }

  dimension: billing_code_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.BillingCodeId ;;
  }

  dimension: client_reference {
    type: string
    sql: ${TABLE}.ClientReference ;;
  }

  dimension_group: close_order {
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
    sql: ${TABLE}.CloseOrderDate ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.Comments ;;
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

  dimension: dynamic_record_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DynamicRecordId ;;
  }

  dimension: edge_user_id {
    type: number
    sql: ${TABLE}.Edge_UserId ;;
  }

  dimension: member_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MemberId ;;
  }

  dimension_group: no_edits {
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
    sql: ${TABLE}.NoEditsDate ;;
  }

  dimension: order_notes {
    type: string
    sql: ${TABLE}.OrderNotes ;;
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

  dimension: ordered_by_member_id {
    type: number
    sql: ${TABLE}.OrderedBy_MemberId ;;
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

  dimension: source_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SourceId ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      blanket_order_header_id,
      members.member_id,
      members.username,
      providers.provider_name,
      providers.backup_provider_id,
      dynamic_record.dynamic_record_id,
      order_sources.order_source_id,
      order_sources.order_source_name,
      billing_codes.billing_code_id,
      billing_codes.billing_code_name,
      source.source_id,
      source.source_name,
      blanket_order_audit.count,
      blanket_order_line.count,
      blanket_order_payment.count,
      order_header.count
    ]
  }
}
