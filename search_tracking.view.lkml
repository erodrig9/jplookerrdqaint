view: search_tracking {
  sql_table_name: dbo.SearchTracking ;;

  dimension: search_tracking_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.SearchTrackingId ;;
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

  dimension: member_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MemberId ;;
  }

  dimension: order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderHeaderId ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  dimension: search_string {
    type: string
    sql: ${TABLE}.SearchString ;;
  }

  dimension: source_code {
    type: string
    sql: ${TABLE}.SourceCode ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  measure: count {
    type: count
    drill_fields: [search_tracking_id, members.member_id, members.username, order_header.autoship_order_header_id]
  }
}
