view: manufacturer_locale {
  sql_table_name: dbo.Manufacturer_Locale ;;

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
  }

  dimension: manufacturer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ManufacturerId ;;
  }

  dimension: manufacturer_name {
    type: string
    sql: ${TABLE}.ManufacturerName ;;
  }

  measure: count {
    type: count
    drill_fields: [manufacturer_name, manufacturer.manufacturer_id, manufacturer.manufacturer_name]
  }
}
