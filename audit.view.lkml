view: audit {
  sql_table_name: dbo.Audit ;;

  dimension: audit_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.AuditId ;;
  }

  dimension: action_taken {
    type: string
    sql: ${TABLE}.ActionTaken ;;
  }

  dimension: database_name {
    type: string
    sql: ${TABLE}.DatabaseName ;;
  }

  dimension_group: date_stamp {
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
    sql: ${TABLE}.DateStamp ;;
  }

  dimension: member_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MemberId ;;
  }

  dimension: merchant_id {
    type: number
    sql: ${TABLE}.MerchantId ;;
  }

  dimension: process_name {
    type: string
    sql: ${TABLE}.ProcessName ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.TableName ;;
  }

  dimension: table_ref_id {
    type: number
    sql: ${TABLE}.TableRefId ;;
  }

  dimension: task_name {
    type: string
    sql: ${TABLE}.TaskName ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.UserId ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      audit_id,
      database_name,
      table_name,
      process_name,
      task_name,
      members.member_id,
      members.username
    ]
  }
}
