view: database_version_log {
  sql_table_name: dbo.DatabaseVersionLog ;;

  dimension: database_version_log_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.DatabaseVersionLogId ;;
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

  dimension: file_name {
    type: string
    sql: ${TABLE}.FileName ;;
  }

  dimension: revision {
    type: number
    sql: ${TABLE}.Revision ;;
  }

  dimension: sql_text {
    type: string
    sql: ${TABLE}.SqlText ;;
  }

  dimension: task_code {
    type: string
    sql: ${TABLE}.TaskCode ;;
  }

  dimension: version_number {
    type: string
    sql: ${TABLE}.VersionNumber ;;
  }

  measure: count {
    type: count
    drill_fields: [database_version_log_id, file_name]
  }
}
