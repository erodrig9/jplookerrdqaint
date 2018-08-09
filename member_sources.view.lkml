view: member_sources {
  sql_table_name: dbo.MemberSources ;;

  dimension: member_source_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.MemberSourceId ;;
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

  dimension: member_source_code {
    type: string
    sql: ${TABLE}.MemberSourceCode ;;
  }

  dimension: member_source_name {
    type: string
    sql: ${TABLE}.MemberSourceName ;;
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
    drill_fields: [member_source_id, member_source_name, members.count]
  }
}
