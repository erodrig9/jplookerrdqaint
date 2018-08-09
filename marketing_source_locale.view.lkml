view: marketing_source_locale {
  sql_table_name: dbo.MarketingSource_Locale ;;

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
  }

  dimension: marketing_source_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MarketingSourceId ;;
  }

  dimension: marketing_source_name {
    type: string
    sql: ${TABLE}.MarketingSourceName ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.Notes ;;
  }

  measure: count {
    type: count
    drill_fields: [marketing_source_name, marketing_source.marketing_source_id, marketing_source.marketing_source_name]
  }
}
