view: email_click_thru_stats_detail {
  sql_table_name: dbo.EmailClickThruStatsDetail ;;

  dimension: click_count {
    type: number
    sql: ${TABLE}.ClickCount ;;
  }

  dimension: click_thru_id {
    type: number
    sql: ${TABLE}.ClickThruId ;;
  }

  dimension: click_thru_subscriber_id {
    type: number
    sql: ${TABLE}.ClickThruSubscriberId ;;
  }

  dimension_group: date_clicked {
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
    sql: ${TABLE}.DateClicked ;;
  }

  dimension: group_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.GroupTypeId ;;
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
