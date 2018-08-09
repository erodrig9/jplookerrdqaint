view: warranties_locale {
  sql_table_name: dbo.Warranties_Locale ;;

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
  }

  dimension: warranty_id {
    type: number
    sql: ${TABLE}.WarrantyId ;;
  }

  dimension: warranty_name {
    type: string
    sql: ${TABLE}.WarrantyName ;;
  }

  measure: count {
    type: count
    drill_fields: [warranty_name]
  }
}
