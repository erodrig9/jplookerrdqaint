view: ship_methods {
  sql_table_name: dbo.ShipMethods ;;

  dimension: ship_method_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ShipMethodId ;;
  }

  dimension: active {
    type: string
    sql: ${TABLE}.Active ;;
  }

  dimension: allow_third_party_billing {
    type: string
    sql: ${TABLE}.AllowThirdPartyBilling ;;
  }

  dimension: carrier_service_xref_id {
    type: number
    sql: ${TABLE}.CarrierServiceXRefId ;;
  }

  dimension: charge_handling {
    type: string
    sql: ${TABLE}.ChargeHandling ;;
  }

  dimension: charge_shipping {
    type: string
    sql: ${TABLE}.ChargeShipping ;;
  }

  dimension: default_ship_method {
    type: number
    sql: ${TABLE}.DefaultShipMethod ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}.DisplayName ;;
  }

  dimension: dynamic_record_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DynamicRecordID ;;
  }

  dimension: estimated_delivery_days {
    type: string
    sql: ${TABLE}.EstimatedDeliveryDays ;;
  }

  dimension: expedited_ship_method {
    type: string
    sql: ${TABLE}.ExpeditedShipMethod ;;
  }

  dimension: fulfillment_type_code {
    type: string
    sql: ${TABLE}.fulfillmentTypeCode ;;
  }

  dimension: internet_enable {
    type: string
    sql: ${TABLE}.InternetEnable ;;
  }

  dimension: ship_method_code {
    type: string
    sql: ${TABLE}.ShipMethodCode ;;
  }

  dimension: ship_method_name {
    type: string
    sql: ${TABLE}.ShipMethodName ;;
  }

  dimension: ship_method_type_id {
    type: number
    sql: ${TABLE}.ShipMethodTypeId ;;
  }

  dimension: sort_order {
    type: string
    sql: ${TABLE}.SortOrder ;;
  }

  dimension: throws_exception {
    type: string
    sql: ${TABLE}.ThrowsException ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      ship_method_id,
      ship_method_name,
      display_name,
      dynamic_record.dynamic_record_id,
      asmline.count,
      autoship_shipping_info.count,
      autoship_shipping_info_history.count,
      member_type_ship_methods_xref.count,
      order_shipping_info.count,
      order_shipping_info_history.count,
      provider_ship_method_time_in_transit.count,
      ship_methods_locale.count,
      shipping_handling.count
    ]
  }
}
