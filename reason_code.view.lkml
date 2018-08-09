view: reason_code {
  sql_table_name: dbo.ReasonCode ;;

  dimension: reason_code_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ReasonCodeId ;;
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

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  dimension: reason_code_name {
    type: string
    sql: ${TABLE}.ReasonCodeName ;;
  }

  dimension: sort_order {
    type: string
    sql: ${TABLE}.SortOrder ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  measure: count {
    type: count
    drill_fields: [reason_code_id, reason_code_name, order_line.count, order_payment.count, reason_code_locale.count]
  }
}
