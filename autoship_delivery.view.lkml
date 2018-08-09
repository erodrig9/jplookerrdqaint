view: autoship_delivery {
  sql_table_name: dbo.AutoshipDelivery ;;

  dimension: autoship_delivery_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.AutoshipDeliveryId ;;
  }

  dimension: autoship_order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.AutoshipOrderHeaderId ;;
  }

  dimension: autoship_status_id {
    type: number
    sql: ${TABLE}.AutoshipStatusId ;;
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

  dimension: order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderHeaderId ;;
  }

  dimension_group: scheduled {
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
    sql: ${TABLE}.ScheduledDate ;;
  }

  measure: count {
    type: count
    drill_fields: [autoship_delivery_id, autoship_order_header.autoship_order_header_id, order_header.autoship_order_header_id]
  }
}
