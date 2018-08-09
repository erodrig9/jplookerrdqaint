view: categories_locale {
  sql_table_name: dbo.Categories_Locale ;;

  dimension: category_id {
    type: number
    sql: ${TABLE}.CategoryId ;;
  }

  dimension: category_name {
    type: string
    sql: ${TABLE}.CategoryName ;;
  }

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
  }

  dimension: long_description {
    type: string
    sql: ${TABLE}.LongDescription ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.Notes ;;
  }

  dimension: short_description {
    type: string
    sql: ${TABLE}.ShortDescription ;;
  }

  measure: count {
    type: count
    drill_fields: [category_name]
  }
}
