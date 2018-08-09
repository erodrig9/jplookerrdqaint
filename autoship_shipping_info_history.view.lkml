view: autoship_shipping_info_history {
  sql_table_name: dbo.AutoshipShippingInfoHistory ;;

  dimension: autoship_shipping_info_history_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.AutoshipShippingInfoHistoryId ;;
  }

  dimension: auto_ship_address_id {
    type: number
    sql: ${TABLE}.AutoShipAddressId ;;
  }

  dimension: auto_ship_order_header_id {
    type: number
    sql: ${TABLE}.AutoShipOrderHeaderId ;;
  }

  dimension: autoship_shipping_info_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.AutoshipShippingInfoId ;;
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

  dimension: modified_by_member_id {
    type: number
    sql: ${TABLE}.ModifiedByMemberId ;;
  }

  dimension: modified_by_user_id {
    type: number
    sql: ${TABLE}.ModifiedByUserId ;;
  }

  dimension_group: modify {
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
    sql: ${TABLE}.ModifyDate ;;
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

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      autoship_shipping_info_history_id,
      autoship_shipping_info.autoship_shipping_info_id,
      ship_methods.ship_method_id,
      ship_methods.ship_method_name,
      ship_methods.display_name,
      providers.provider_name,
      providers.backup_provider_id
    ]
  }
}
