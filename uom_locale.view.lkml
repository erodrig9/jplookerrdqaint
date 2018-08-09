view: uom_locale {
  sql_table_name: dbo.UOM_Locale ;;

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
  }

  dimension: uomid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.UOMId ;;
  }

  dimension: uomname {
    type: string
    sql: ${TABLE}.UOMName ;;
  }

  measure: count {
    type: count
    drill_fields: [uomname, uom.uomname, uom.base_uomid]
  }
}
