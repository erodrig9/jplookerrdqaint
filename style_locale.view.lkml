view: style_locale {
  sql_table_name: dbo.Style_Locale ;;

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
  }

  dimension: style_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.StyleId ;;
  }

  dimension: style_name {
    type: string
    sql: ${TABLE}.StyleName ;;
  }

  measure: count {
    type: count
    drill_fields: [style_name, style.style_id, style.style_name]
  }
}
