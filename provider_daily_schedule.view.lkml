view: provider_daily_schedule {
  sql_table_name: dbo.Provider_DailySchedule ;;

  dimension: cut_off_time {
    type: string
    sql: ${TABLE}.CutOffTime ;;
  }

  dimension: day_of_week {
    type: number
    sql: ${TABLE}.DayOfWeek ;;
  }

  dimension: provider_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProviderId ;;
  }

  dimension_group: reopen {
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
    sql: ${TABLE}.ReopenTime ;;
  }

  measure: count {
    type: count
    drill_fields: [providers.provider_name, providers.backup_provider_id]
  }
}
