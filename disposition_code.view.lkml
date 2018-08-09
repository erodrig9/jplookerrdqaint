view: disposition_code {
  sql_table_name: dbo.DispositionCode ;;

  dimension: disposition_code_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.DispositionCodeId ;;
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

  dimension: disposition_code_name {
    type: string
    sql: ${TABLE}.DispositionCodeName ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  dimension: refund {
    type: string
    sql: ${TABLE}.Refund ;;
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
    drill_fields: [disposition_code_id, disposition_code_name, order_line.count]
  }
}
