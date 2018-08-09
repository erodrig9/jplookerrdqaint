view: source {
  sql_table_name: dbo.Source ;;

  dimension: source_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.SourceId ;;
  }

  dimension: active {
    type: string
    sql: ${TABLE}.Active ;;
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

  dimension: sort_order {
    type: string
    sql: ${TABLE}.SortOrder ;;
  }

  dimension: source_code {
    type: string
    sql: ${TABLE}.SourceCode ;;
  }

  dimension: source_name {
    type: string
    sql: ${TABLE}.SourceName ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      source_id,
      source_name,
      alternate_deliveries.count,
      blanket_order_header.count,
      communications.count,
      order_header.count
    ]
  }
}
