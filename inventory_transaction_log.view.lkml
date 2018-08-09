view: inventory_transaction_log {
  sql_table_name: dbo.InventoryTransactionLog ;;

  dimension: inventory_transaction_log_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.InventoryTransactionLogID ;;
  }

  dimension_group: date_created {
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
    sql: ${TABLE}.DateCreated ;;
  }

  dimension: inventory_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.InventoryId ;;
  }

  dimension: message_control_id {
    type: number
    sql: ${TABLE}.MessageControlId ;;
  }

  dimension: message_destination_id {
    type: number
    sql: ${TABLE}.MessageDestinationId ;;
  }

  dimension: message_type_code {
    type: string
    sql: ${TABLE}.MessageTypeCode ;;
  }

  dimension: message_type_description {
    type: string
    sql: ${TABLE}.MessageTypeDescription ;;
  }

  dimension: message_type_detail_id {
    type: string
    sql: ${TABLE}.MessageTypeDetailId ;;
  }

  dimension: message_type_id {
    type: number
    sql: ${TABLE}.MessageTypeId ;;
  }

  dimension: message_type_mapping_code {
    type: string
    sql: ${TABLE}.MessageTypeMappingCode ;;
  }

  dimension: message_type_mapping_description {
    type: string
    sql: ${TABLE}.MessageTypeMappingDescription ;;
  }

  dimension: message_type_mapping_id {
    type: number
    sql: ${TABLE}.MessageTypeMappingId ;;
  }

  dimension: message_type_mapping_name {
    type: string
    sql: ${TABLE}.MessageTypeMappingName ;;
  }

  dimension: message_type_name {
    type: string
    sql: ${TABLE}.MessageTypeName ;;
  }

  dimension: mtddescription {
    type: string
    sql: ${TABLE}.MTDDescription ;;
  }

  dimension: provider_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProviderId ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
  }

  dimension: transaction_id {
    type: number
    sql: ${TABLE}.TransactionId ;;
  }

  dimension: transaction_log_id {
    type: number
    sql: ${TABLE}.TransactionLogId ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      inventory_transaction_log_id,
      message_type_name,
      message_type_mapping_name,
      inventory.inventory_id,
      inventory.trademark_name,
      providers.provider_name,
      providers.backup_provider_id
    ]
  }
}
