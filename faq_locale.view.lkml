view: faq_locale {
  sql_table_name: dbo.FAQ_Locale ;;

  dimension: answer {
    type: string
    sql: ${TABLE}.Answer ;;
  }

  dimension: faqid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.FAQId ;;
  }

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
  }

  dimension: question {
    type: string
    sql: ${TABLE}.Question ;;
  }

  measure: count {
    type: count
    drill_fields: [faq.faqid]
  }
}
