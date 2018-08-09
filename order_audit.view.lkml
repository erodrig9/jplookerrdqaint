view: order_audit {
  sql_table_name: dbo.OrderAudit ;;

  dimension: order_audit_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrderAuditId ;;
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

  dimension: notes {
    type: string
    sql: ${TABLE}.Notes ;;
  }

  dimension: order_action_id {
    type: number
    sql: ${TABLE}.OrderActionId ;;
  }

  dimension: order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderHeaderId ;;
  }

  measure: count {
    type: count
    drill_fields: [order_audit_id, order_header.autoship_order_header_id, order_audit_reference.count]
  }
}
