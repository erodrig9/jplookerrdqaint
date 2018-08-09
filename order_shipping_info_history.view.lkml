view: order_shipping_info_history {
  sql_table_name: dbo.OrderShippingInfoHistory ;;

  dimension: order_shipping_info_history_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrderShippingInfoHistoryId ;;
  }

  dimension: allow_early_delivery {
    type: string
    sql: ${TABLE}.AllowEarlyDelivery ;;
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

  dimension_group: date_needed {
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
    sql: ${TABLE}.DateNeeded ;;
  }

  dimension: declared_value {
    type: string
    sql: ${TABLE}.DeclaredValue ;;
  }

  dimension_group: delay_ship_until {
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
    sql: ${TABLE}.DelayShipUntil ;;
  }

  dimension: discount {
    type: string
    sql: ${TABLE}.Discount ;;
  }

  dimension: gift_message {
    type: string
    sql: ${TABLE}.GiftMessage ;;
  }

  dimension: initial_shipping_handling {
    type: string
    sql: ${TABLE}.InitialShippingHandling ;;
  }

  dimension: insurance_charge {
    type: string
    sql: ${TABLE}.InsuranceCharge ;;
  }

  dimension_group: last_drop {
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
    sql: ${TABLE}.LastDropDate ;;
  }

  dimension_group: modification {
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
    sql: ${TABLE}.ModificationDate ;;
  }

  dimension: order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderHeaderId ;;
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

  dimension: ship_method_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ShipMethodId ;;
  }

  dimension: ship_notes {
    type: string
    sql: ${TABLE}.ShipNotes ;;
  }

  dimension: ship_order_address_id {
    type: number
    sql: ${TABLE}.Ship_OrderAddressId ;;
  }

  dimension: shipper_attention_needed {
    type: string
    sql: ${TABLE}.ShipperAttentionNeeded ;;
  }

  dimension: shipping_handling {
    type: string
    sql: ${TABLE}.ShippingHandling ;;
  }

  dimension: shipping_handling_tax {
    type: number
    sql: ${TABLE}.ShippingHandlingTax ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.Source ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      order_shipping_info_history_id,
      order_shipping_info.order_shipping_info_id,
      order_header.autoship_order_header_id,
      ship_methods.ship_method_id,
      ship_methods.ship_method_name,
      ship_methods.display_name,
      providers.provider_name,
      providers.backup_provider_id
    ]
  }
}
