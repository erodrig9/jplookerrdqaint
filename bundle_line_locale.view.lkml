view: bundle_line_locale {
  sql_table_name: dbo.BundleLine_Locale ;;

  dimension: bundle_line_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.BundleLineId ;;
  }

  dimension: bundle_line_price {
    type: string
    sql: ${TABLE}.BundleLinePrice ;;
  }

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
  }

  dimension: service_charge {
    type: string
    sql: ${TABLE}.ServiceCharge ;;
  }

  measure: count {
    type: count
    drill_fields: [bundle_line.bundle_line_id]
  }
}
