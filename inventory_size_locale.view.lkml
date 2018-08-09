view: inventory_size_locale {
  sql_table_name: dbo.InventorySize_Locale ;;

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
  }

  dimension: size_id {
    type: number
    sql: ${TABLE}.SizeId ;;
  }

  dimension: size_name {
    type: string
    sql: ${TABLE}.SizeName ;;
  }

  measure: count {
    type: count
    drill_fields: [size_name]
  }
}
