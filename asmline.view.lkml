view: asmline {
  sql_table_name: dbo.ASMLine ;;

  dimension: asmline_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ASMLineId ;;
  }

  dimension: asmheader_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ASMHeaderId ;;
  }

  dimension: c_per_item {
    type: number
    sql: ${TABLE}.cPerItem ;;
  }

  dimension: c_per_line_item {
    type: number
    sql: ${TABLE}.cPerLineItem ;;
  }

  dimension: c_per_order {
    type: number
    sql: ${TABLE}.cPerOrder ;;
  }

  dimension: c_percent_disc_from_carrier {
    type: number
    sql: ${TABLE}.cPercentDiscFromCarrier ;;
  }

  dimension: c_percent_disc_of_total {
    type: number
    sql: ${TABLE}.cPercentDiscOfTotal ;;
  }

  dimension: c_percent_of_total {
    type: number
    sql: ${TABLE}.cPercentOfTotal ;;
  }

  dimension: c_use_carrier_rate {
    type: string
    sql: ${TABLE}.cUseCarrierRate ;;
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

  dimension: p_per_item {
    type: number
    sql: ${TABLE}.pPerItem ;;
  }

  dimension: p_per_line_item {
    type: number
    sql: ${TABLE}.pPerLineItem ;;
  }

  dimension: p_per_order {
    type: number
    sql: ${TABLE}.pPerOrder ;;
  }

  dimension: p_percent_disc_from_carrier {
    type: number
    sql: ${TABLE}.pPercentDiscFromCarrier ;;
  }

  dimension: p_percent_disc_of_total {
    type: number
    sql: ${TABLE}.pPercentDiscOfTotal ;;
  }

  dimension: p_percent_of_total {
    type: number
    sql: ${TABLE}.pPercentOfTotal ;;
  }

  dimension: p_use_carrier_rate {
    type: string
    sql: ${TABLE}.pUseCarrierRate ;;
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
      asmline_id,
      asmheader.asmheader_id,
      asmheader.asmname,
      ship_methods.ship_method_id,
      ship_methods.ship_method_name,
      ship_methods.display_name
    ]
  }
}
