view: purchase_order_line_detail {
  sql_table_name: dbo.PurchaseOrderLineDetail ;;

  dimension: purchase_order_line_detail_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.PurchaseOrderLineDetailId ;;
  }

  dimension: asnid {
    type: number
    value_format_name: id
    sql: ${TABLE}.ASNId ;;
  }

  dimension: dynamic_field_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DynamicFieldId ;;
  }

  dimension_group: expected_delivery {
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
    sql: ${TABLE}.ExpectedDeliveryDate ;;
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
    sql: ${TABLE}.LastUpdatedDate ;;
  }

  dimension: last_updated_user {
    type: number
    sql: ${TABLE}.LastUpdatedUser ;;
  }

  dimension: provider_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProviderId ;;
  }

  dimension: purchase_order_line_detail_number {
    type: string
    sql: ${TABLE}.PurchaseOrderLineDetailNumber ;;
  }

  dimension: purchase_order_line_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.PurchaseOrderLineId ;;
  }

  dimension_group: received {
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
    sql: ${TABLE}.ReceivedDate ;;
  }

  dimension: revision {
    type: string
    sql: ${TABLE}.Revision ;;
  }

  dimension: ship_to_address1 {
    type: string
    sql: ${TABLE}.ShipToAddress1 ;;
  }

  dimension: ship_to_address2 {
    type: string
    sql: ${TABLE}.ShipToAddress2 ;;
  }

  dimension: ship_to_city {
    type: string
    sql: ${TABLE}.ShipToCity ;;
  }

  dimension: ship_to_name {
    type: string
    sql: ${TABLE}.ShipToName ;;
  }

  dimension: ship_to_postal_code {
    type: string
    sql: ${TABLE}.ShipToPostalCode ;;
  }

  dimension: ship_to_stpr_id {
    type: number
    sql: ${TABLE}.ShipToStprId ;;
  }

  dimension: supply_quantity {
    type: number
    sql: ${TABLE}.SupplyQuantity ;;
  }

  dimension: tollerance_allowed {
    type: string
    sql: ${TABLE}.TolleranceAllowed ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      purchase_order_line_detail_id,
      ship_to_name,
      purchase_order_line.purchase_order_line_id,
      dynamic_field.dynamic_field_id,
      providers.provider_name,
      providers.backup_provider_id
    ]
  }
}
