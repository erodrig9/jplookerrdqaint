view: ship_station_receiving_location_xref {
  sql_table_name: dbo.ShipStation_Receiving_Location_XRef ;;

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

  dimension: location1 {
    type: string
    sql: ${TABLE}.Location1 ;;
  }

  dimension: location2 {
    type: string
    sql: ${TABLE}.Location2 ;;
  }

  dimension: location3 {
    type: string
    sql: ${TABLE}.Location3 ;;
  }

  dimension: location_qty {
    type: number
    sql: ${TABLE}.LocationQty ;;
  }

  dimension: receiving_id {
    type: number
    sql: ${TABLE}.ReceivingId ;;
  }

  dimension: receiving_location_id {
    type: number
    sql: ${TABLE}.ReceivingLocationId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
