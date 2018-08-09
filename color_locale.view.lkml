view: color_locale {
  sql_table_name: dbo.Color_Locale ;;

  dimension: color_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ColorId ;;
  }

  dimension: color_name {
    type: string
    sql: ${TABLE}.ColorName ;;
  }

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
  }

  measure: count {
    type: count
    drill_fields: [color_name, color.color_id, color.color_name]
  }
}
