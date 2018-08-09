view: email_opened_stats_detail {
  sql_table_name: dbo.EmailOpenedStatsDetail ;;

  dimension_group: date_opened {
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
    sql: ${TABLE}.DateOpened ;;
  }

  dimension: email_address {
    type: string
    sql: ${TABLE}.EmailAddress ;;
  }

  dimension: group_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.GroupTypeId ;;
  }

  dimension: opened_id {
    type: number
    sql: ${TABLE}.OpenedId ;;
  }

  dimension: opened_subscriber_id {
    type: number
    sql: ${TABLE}.OpenedSubscriberId ;;
  }

  dimension: rec_id {
    type: number
    sql: ${TABLE}.RecId ;;
  }

  measure: count {
    type: count
    drill_fields: [group_types.group_type_id, group_types.group_type_name]
  }
}
