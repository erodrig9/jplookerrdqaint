view: shipping_handling {
  sql_table_name: dbo.ShippingHandling ;;

  dimension: shipping_handling_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ShippingHandlingId ;;
  }

  dimension: charge_later {
    type: string
    sql: ${TABLE}.ChargeLater ;;
  }

  dimension: default_upsrate {
    type: number
    sql: ${TABLE}.DefaultUPSRate ;;
  }

  dimension: locale_code {
    type: string
    sql: ${TABLE}.LocaleCode ;;
  }

  dimension: member_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MemberTypeId ;;
  }

  dimension: per_item {
    type: number
    sql: ${TABLE}.PerItem ;;
  }

  dimension: per_line_item {
    type: number
    sql: ${TABLE}.PerLineItem ;;
  }

  dimension: per_order {
    type: number
    sql: ${TABLE}.PerOrder ;;
  }

  dimension: percent_surcharge {
    type: number
    sql: ${TABLE}.PercentSurcharge ;;
  }

  dimension: percentage {
    type: number
    sql: ${TABLE}.Percentage ;;
  }

  dimension: price_end_range {
    type: number
    sql: ${TABLE}.PriceEndRange ;;
  }

  dimension: price_start_range {
    type: number
    sql: ${TABLE}.PriceStartRange ;;
  }

  dimension: ship_method_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ShipMethodId ;;
  }

  dimension: use_upsrate {
    type: string
    sql: ${TABLE}.UseUPSRate ;;
  }

  dimension: weight_end_range {
    type: number
    sql: ${TABLE}.WeightEndRange ;;
  }

  dimension: weight_start_range {
    type: number
    sql: ${TABLE}.WeightStartRange ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      shipping_handling_id,
      member_types.member_type_id,
      member_types.member_type_name,
      ship_methods.ship_method_id,
      ship_methods.ship_method_name,
      ship_methods.display_name
    ]
  }
}
