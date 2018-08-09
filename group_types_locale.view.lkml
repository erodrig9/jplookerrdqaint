view: group_types_locale {
  sql_table_name: dbo.GroupTypes_Locale ;;

  dimension: group_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.GroupTypeId ;;
  }

  dimension: group_type_name {
    type: string
    sql: ${TABLE}.GroupTypeName ;;
  }

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
  }

  measure: count {
    type: count
    drill_fields: [group_type_name, group_types.group_type_id, group_types.group_type_name]
  }
}
