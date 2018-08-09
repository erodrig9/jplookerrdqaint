view: communications {
  sql_table_name: dbo.Communications ;;

  dimension: communications_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.CommunicationsId ;;
  }

  dimension: bcc {
    type: string
    sql: ${TABLE}.BCC ;;
  }

  dimension: cc {
    type: string
    sql: ${TABLE}.CC ;;
  }

  dimension: communication_event_id {
    type: number
    sql: ${TABLE}.CommunicationEventId ;;
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

  dimension: default_id {
    type: number
    sql: ${TABLE}.DefaultId ;;
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

  dimension: file_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.FileId ;;
  }

  dimension: font_color_id {
    type: number
    sql: ${TABLE}.FontColorId ;;
  }

  dimension: font_id {
    type: number
    sql: ${TABLE}.FontId ;;
  }

  dimension: fulfillment_type_code {
    type: string
    sql: ${TABLE}.FulfillmentTypeCode ;;
  }

  dimension: high_priority {
    type: string
    sql: ${TABLE}.HighPriority ;;
  }

  dimension: include_details {
    type: string
    sql: ${TABLE}.IncludeDetails ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.Message ;;
  }

  dimension: message_format {
    type: string
    sql: ${TABLE}.MessageFormat ;;
  }

  dimension: notify {
    type: string
    sql: ${TABLE}.Notify ;;
  }

  dimension: notify_name {
    type: string
    sql: ${TABLE}.NotifyName ;;
  }

  dimension: order_source_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderSourceId ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  dimension: recipient {
    type: string
    sql: ${TABLE}.Recipient ;;
  }

  dimension: reply_to {
    type: string
    sql: ${TABLE}.ReplyTo ;;
  }

  dimension: report_name {
    type: string
    sql: ${TABLE}.ReportName ;;
  }

  dimension: sender {
    type: string
    sql: ${TABLE}.Sender ;;
  }

  dimension: sender_alias {
    type: string
    sql: ${TABLE}.SenderAlias ;;
  }

  dimension: source_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SourceId ;;
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

  dimension: subject {
    type: string
    sql: ${TABLE}.Subject ;;
  }

  dimension: suppress_auto_include {
    type: string
    sql: ${TABLE}.SuppressAutoInclude ;;
  }

  dimension: suppress_order_status {
    type: string
    sql: ${TABLE}.SuppressOrderStatus ;;
  }

  dimension: suppress_price_info {
    type: string
    sql: ${TABLE}.SuppressPriceInfo ;;
  }

  dimension: use_member_types {
    type: string
    sql: ${TABLE}.UseMemberTypes ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      communications_id,
      notify_name,
      report_name,
      order_sources.order_source_id,
      order_sources.order_source_name,
      files.file_id,
      files.filename,
      files.original_file_name,
      source.source_id,
      source.source_name,
      communications_locale.count,
      communications_member_types_xref.count,
      vw_get_communication_defaults.count
    ]
  }
}
