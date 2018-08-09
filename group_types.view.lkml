view: group_types {
  sql_table_name: dbo.GroupTypes ;;

  dimension: group_type_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.GroupTypeId ;;
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

  dimension: group_type_name {
    type: string
    sql: ${TABLE}.GroupTypeName ;;
  }

  dimension: internal {
    type: string
    sql: ${TABLE}.Internal ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
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
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      group_type_id,
      group_type_name,
      email_click_thru_stats_detail.count,
      email_groups.count,
      email_opened_stats_detail.count,
      groups.count,
      group_types_locale.count
    ]
  }
}
