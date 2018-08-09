view: status_lock {
  sql_table_name: dbo.StatusLock ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: locked {
    type: string
    sql: ${TABLE}.locked ;;
  }

  dimension: object_id {
    type: number
    sql: ${TABLE}.objectID ;;
  }

  dimension: object_type {
    type: string
    sql: ${TABLE}.objectType ;;
  }

  dimension: previous_status_id {
    type: number
    sql: ${TABLE}.previousStatusID ;;
  }

  dimension_group: timestamp {
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
    sql: ${TABLE}.timestamp ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.userID ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
