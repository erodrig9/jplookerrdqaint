view: blanket_order_audit {
  sql_table_name: dbo.BlanketOrderAudit ;;

  dimension: blanket_order_audit_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.BlanketOrderAuditId ;;
  }

  dimension: blanket_order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.BlanketOrderHeaderId ;;
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

  dimension: edge_user_id {
    type: number
    sql: ${TABLE}.EdgeUserId ;;
  }

  dimension: member_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MemberId ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.Notes ;;
  }

  dimension: order_action_id {
    type: number
    sql: ${TABLE}.OrderActionId ;;
  }

  measure: count {
    type: count
    drill_fields: [blanket_order_audit_id, blanket_order_header.blanket_order_header_id, members.member_id, members.username, blanket_order_audit_reference.count]
  }
}
