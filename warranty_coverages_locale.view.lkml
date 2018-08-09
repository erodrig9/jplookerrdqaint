view: warranty_coverages_locale {
  sql_table_name: dbo.WarrantyCoverages_Locale ;;

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
  }

  dimension: warranty_coverage_description {
    type: string
    sql: ${TABLE}.WarrantyCoverageDescription ;;
  }

  dimension: warranty_coverage_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.WarrantyCoverageId ;;
  }

  dimension: warranty_coverage_name {
    type: string
    sql: ${TABLE}.WarrantyCoverageName ;;
  }

  measure: count {
    type: count
    drill_fields: [warranty_coverage_name, warranty_coverages.warranty_coverage_id, warranty_coverages.warranty_coverage_name]
  }
}
