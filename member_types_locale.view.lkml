view: member_types_locale {
  sql_table_name: dbo.MemberTypes_Locale ;;

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
  }

  dimension: member_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MemberTypeId ;;
  }

  dimension: member_type_name {
    type: string
    sql: ${TABLE}.MemberTypeName ;;
  }

  measure: count {
    type: count
    drill_fields: [member_type_name, member_types.member_type_id, member_types.member_type_name]
  }
}
