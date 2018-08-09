view: group_members_xref {
  sql_table_name: dbo.Group_Members_XRef ;;

  dimension: budget_group {
    type: string
    sql: ${TABLE}.BudgetGroup ;;
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

  dimension: group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.GroupId ;;
  }

  dimension: member_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MemberId ;;
  }

  dimension: record_id {
    type: number
    sql: ${TABLE}.RecordId ;;
  }

  measure: count {
    type: count
    drill_fields: [members.member_id, members.username, groups.group_id, groups.group_name]
  }
}
