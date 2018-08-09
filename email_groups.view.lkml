view: email_groups {
  sql_table_name: dbo.EmailGroups ;;

  dimension: email_group_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.EmailGroupId ;;
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

  dimension: group_code {
    type: string
    sql: ${TABLE}.GroupCode ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.GroupName ;;
  }

  dimension: group_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.GroupTypeId ;;
  }

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
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
    drill_fields: [email_group_id, group_name, group_types.group_type_id, group_types.group_type_name, email_groups_members.count]
  }
}
