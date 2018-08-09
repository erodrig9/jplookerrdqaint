view: members_password_history {
  sql_table_name: dbo.MembersPasswordHistory ;;

  dimension: members_password_history_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.MembersPasswordHistoryID ;;
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

  dimension: password {
    type: string
    sql: ${TABLE}.Password ;;
  }

  measure: count {
    type: count
    drill_fields: [members_password_history_id, members.member_id, members.username]
  }
}
