view: groups_locale {
  sql_table_name: dbo.Groups_Locale ;;

  dimension: budget {
    type: string
    sql: ${TABLE}.Budget ;;
  }

  dimension: group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.GroupId ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.GroupName ;;
  }

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
  }

  measure: count {
    type: count
    drill_fields: [group_name, groups.group_id, groups.group_name]
  }
}
