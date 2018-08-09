view: dx_page_block_text_locale {
  sql_table_name: dbo.DxPageBlockText_Locale ;;

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
  }

  dimension: page_block_text_id {
    type: number
    sql: ${TABLE}.PageBlockTextId ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.Text ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
