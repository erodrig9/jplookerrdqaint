view: tracking {
  sql_table_name: dbo.Tracking ;;

  dimension: tracking_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.TrackingId ;;
  }

  dimension: actual_cost {
    type: string
    sql: ${TABLE}.ActualCost ;;
  }

  dimension: billable_weight {
    type: number
    sql: ${TABLE}.BillableWeight ;;
  }

  dimension: bolnumber {
    type: string
    sql: ${TABLE}.BOLNumber ;;
  }

  dimension: box_number {
    type: string
    sql: ${TABLE}.BoxNumber ;;
  }

  dimension: carrier {
    type: string
    sql: ${TABLE}.Carrier ;;
  }

  dimension: carrier_service {
    type: string
    sql: ${TABLE}.CarrierService ;;
  }

  dimension: carton_id {
    type: string
    sql: ${TABLE}.CartonId ;;
  }

  dimension: contents {
    type: string
    sql: ${TABLE}.Contents ;;
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

  dimension_group: delivery {
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
    sql: ${TABLE}.DeliveryDate ;;
  }

  dimension: number_of_boxes {
    type: number
    sql: ${TABLE}.NumberOfBoxes ;;
  }

  dimension: order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderHeaderId ;;
  }

  dimension: return_label {
    type: string
    sql: ${TABLE}.ReturnLabel ;;
  }

  dimension: ship_cost {
    type: string
    sql: ${TABLE}.ShipCost ;;
  }

  dimension_group: ship {
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
    sql: ${TABLE}.ShipDate ;;
  }

  dimension: ship_order_address_id {
    type: number
    sql: ${TABLE}.Ship_OrderAddressId ;;
  }

  dimension: shipment_group_id {
    type: string
    sql: ${TABLE}.ShipmentGroupId ;;
  }

  dimension: shipping_label {
    type: string
    sql: ${TABLE}.ShippingLabel ;;
  }

  dimension: tracking_number {
    type: string
    sql: ${TABLE}.TrackingNumber ;;
  }

  dimension: ucc {
    type: string
    sql: ${TABLE}.UCC ;;
  }

  measure: count {
    type: count
    drill_fields: [tracking_id, order_header.autoship_order_header_id, package.count, tracking_history.count]
  }
}
