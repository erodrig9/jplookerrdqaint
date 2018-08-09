view: color_group_locale {
  sql_table_name: dbo.ColorGroup_Locale ;;

  dimension: color_group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ColorGroupId ;;
  }

  dimension: color_group_name {
    type: string
    sql: ${TABLE}.ColorGroupName ;;
  }

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
  }

  measure: count {
    type: count
    drill_fields: [color_group_name, color_group.color_group_id, color_group.color_group_name]
  }
}
