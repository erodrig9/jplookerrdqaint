view: email_messages_schedule {
  sql_table_name: dbo.EmailMessagesSchedule ;;

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
    sql: ${TABLE}.EndDate ;;
  }

  dimension: msched_active {
    type: string
    sql: ${TABLE}.MSchedActive ;;
  }

  dimension: msched_code {
    type: string
    sql: ${TABLE}.MSchedCode ;;
  }

  dimension_group: msched_create {
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
    sql: ${TABLE}.MSchedCreateDate ;;
  }

  dimension: msched_end_date {
    type: string
    sql: ${TABLE}.MSchedEndDate ;;
  }

  dimension: msched_end_time {
    type: string
    sql: ${TABLE}.MSchedEndTime ;;
  }

  dimension: msched_group_id {
    type: number
    sql: ${TABLE}.MSchedGroupId ;;
  }

  dimension: msched_interval {
    type: string
    sql: ${TABLE}.MSchedInterval ;;
  }

  dimension: msched_list_id {
    type: number
    sql: ${TABLE}.MSchedListId ;;
  }

  dimension: msched_message_id {
    type: number
    sql: ${TABLE}.MSchedMessageId ;;
  }

  dimension: msched_name {
    type: string
    sql: ${TABLE}.MSchedName ;;
  }

  dimension: msched_start_date {
    type: string
    sql: ${TABLE}.MSchedStartDate ;;
  }

  dimension: msched_start_time {
    type: string
    sql: ${TABLE}.MSchedStartTime ;;
  }

  dimension: msched_time_interval {
    type: number
    sql: ${TABLE}.MSchedTimeInterval ;;
  }

  dimension: msg_schedule_id {
    type: number
    sql: ${TABLE}.MsgScheduleId ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
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
    sql: ${TABLE}.StartDate ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  measure: count {
    type: count
    drill_fields: [msched_name]
  }
}
