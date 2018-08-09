view: warranty_coverages {
  sql_table_name: dbo.WarrantyCoverages ;;

  dimension: warranty_coverage_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.WarrantyCoverageId ;;
  }

  dimension_group: create {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CreateDate ;;
  }

  dimension_group: last_updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.LastUpdated ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  dimension: warranty_coverage_code {
    type: string
    sql: ${TABLE}.WarrantyCoverageCode ;;
  }

  dimension: warranty_coverage_description {
    type: string
    sql: ${TABLE}.WarrantyCoverageDescription ;;
  }

  dimension: warranty_coverage_name {
    type: string
    sql: ${TABLE}.WarrantyCoverageName ;;
  }

  measure: count {
    type: count
    drill_fields: [warranty_coverage_id, warranty_coverage_name, warranties.count, warranty_coverages_locale.count]
  }
}
