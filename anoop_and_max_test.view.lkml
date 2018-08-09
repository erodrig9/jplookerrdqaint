view: anoop_and_max_test {
  sql_table_name: dbo.AnoopAndMaxTest ;;

  dimension: application_name {
    type: string
    sql: ${TABLE}.ApplicationName ;;
  }

  dimension: binary_data {
    type: string
    sql: ${TABLE}.BinaryData ;;
  }

  dimension: client_process_id {
    type: number
    sql: ${TABLE}.ClientProcessID ;;
  }

  dimension: cpu {
    type: number
    sql: ${TABLE}.CPU ;;
  }

  dimension: database_id {
    type: number
    sql: ${TABLE}.DatabaseID ;;
  }

  dimension: database_name {
    type: string
    sql: ${TABLE}.DatabaseName ;;
  }

  dimension: duration {
    type: number
    sql: ${TABLE}.Duration ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.EndTime ;;
  }

  dimension: event_class {
    type: number
    sql: ${TABLE}.EventClass ;;
  }

  dimension: event_sequence {
    type: number
    sql: ${TABLE}.EventSequence ;;
  }

  dimension: group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.GroupID ;;
  }

  dimension: host_name {
    type: string
    sql: ${TABLE}.HostName ;;
  }

  dimension: integer_data {
    type: number
    sql: ${TABLE}.IntegerData ;;
  }

  dimension: integer_data2 {
    type: number
    sql: ${TABLE}.IntegerData2 ;;
  }

  dimension: is_system {
    type: number
    sql: ${TABLE}.IsSystem ;;
  }

  dimension: line_number {
    type: number
    sql: ${TABLE}.LineNumber ;;
  }

  dimension: login_name {
    type: string
    sql: ${TABLE}.LoginName ;;
  }

  dimension: login_sid {
    type: string
    sql: ${TABLE}.LoginSid ;;
  }

  dimension: nest_level {
    type: number
    sql: ${TABLE}.NestLevel ;;
  }

  dimension: ntdomain_name {
    type: string
    sql: ${TABLE}.NTDomainName ;;
  }

  dimension: ntuser_name {
    type: string
    sql: ${TABLE}.NTUserName ;;
  }

  dimension: object_id {
    type: number
    sql: ${TABLE}.ObjectID ;;
  }

  dimension: object_name {
    type: string
    sql: ${TABLE}.ObjectName ;;
  }

  dimension: object_type {
    type: number
    sql: ${TABLE}.ObjectType ;;
  }

  dimension: offset {
    type: number
    sql: ${TABLE}.Offset ;;
  }

  dimension: reads {
    type: number
    sql: ${TABLE}.Reads ;;
  }

  dimension: request_id {
    type: number
    sql: ${TABLE}.RequestID ;;
  }

  dimension: row_counts {
    type: number
    sql: ${TABLE}.RowCounts ;;
  }

  dimension: row_number {
    type: number
    sql: ${TABLE}.RowNumber ;;
  }

  dimension: server_name {
    type: string
    sql: ${TABLE}.ServerName ;;
  }

  dimension: session_login_name {
    type: string
    sql: ${TABLE}.SessionLoginName ;;
  }

  dimension: source_database_id {
    type: number
    sql: ${TABLE}.SourceDatabaseID ;;
  }

  dimension: spid {
    type: number
    value_format_name: id
    sql: ${TABLE}.SPID ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.StartTime ;;
  }

  dimension: text_data {
    type: string
    sql: ${TABLE}.TextData ;;
  }

  dimension: transaction_id {
    type: number
    sql: ${TABLE}.TransactionID ;;
  }

  dimension: writes {
    type: number
    sql: ${TABLE}.Writes ;;
  }

  dimension: xact_sequence {
    type: number
    sql: ${TABLE}.XactSequence ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      application_name,
      ntuser_name,
      login_name,
      database_name,
      host_name,
      ntdomain_name,
      server_name,
      session_login_name,
      object_name,
      groups.group_id,
      groups.group_name
    ]
  }
}
