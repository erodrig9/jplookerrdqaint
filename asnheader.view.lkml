view: asnheader {
  sql_table_name: dbo.ASNHeader ;;

  dimension: asnheader_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ASNHeaderId ;;
  }

  dimension: asnsource_id {
    type: number
    sql: ${TABLE}.ASNSourceId ;;
  }

  dimension: asnstatus_id {
    type: number
    sql: ${TABLE}.ASNStatusId ;;
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

  dimension: create_user_id {
    type: number
    sql: ${TABLE}.CreateUserId ;;
  }

  dimension: dynamic_record_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DynamicRecordId ;;
  }

  dimension_group: last_modified {
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
    sql: ${TABLE}.LastModifiedDate ;;
  }

  dimension: last_modified_user_id {
    type: number
    sql: ${TABLE}.LastModifiedUserId ;;
  }

  dimension: order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderHeaderId ;;
  }

  dimension: provider_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProviderId ;;
  }

  dimension: purchase_order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.PurchaseOrderHeaderId ;;
  }

  dimension: reference_number {
    type: string
    sql: ${TABLE}.ReferenceNumber ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      asnheader_id,
      providers.provider_name,
      providers.backup_provider_id,
      order_header.autoship_order_header_id,
      dynamic_record.dynamic_record_id,
      purchase_order_header.purchase_order_header_id,
      purchase_order_header.bill_to_name,
      asnline.count,
      asnreceipt.count,
      order_notes.count
    ]
  }
}
