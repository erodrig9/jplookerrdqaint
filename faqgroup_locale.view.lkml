view: faqgroup_locale {
  sql_table_name: dbo.FAQGroup_Locale ;;

  dimension: faqgroup_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.FAQGroupId ;;
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
    drill_fields: [group_name, faqgroup.faqgroup_id, faqgroup.group_name]
  }
}
