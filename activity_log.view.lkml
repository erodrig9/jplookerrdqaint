view: activity_log {
  sql_table_name: dbo.ActivityLog ;;

  dimension: activity_log_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ActivityLogID ;;
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

  dimension: form_data {
    type: string
    sql: ${TABLE}.FormData ;;
  }

  dimension: ip1 {
    type: number
    sql: ${TABLE}.Ip1 ;;
  }

  dimension: ip2 {
    type: number
    sql: ${TABLE}.Ip2 ;;
  }

  dimension: ip3 {
    type: number
    sql: ${TABLE}.Ip3 ;;
  }

  dimension: ip4 {
    type: number
    sql: ${TABLE}.Ip4 ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  dimension: query_string {
    type: string
    sql: ${TABLE}.QueryString ;;
  }

  dimension: referer {
    type: string
    sql: ${TABLE}.Referer ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.UserId ;;
  }

  measure: count {
    type: count
    drill_fields: [activity_log_id]
  }
}
