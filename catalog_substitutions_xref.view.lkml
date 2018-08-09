view: catalog_substitutions_xref {
  sql_table_name: dbo.CatalogSubstitutions_XRef ;;

  dimension: catalog_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CatalogId ;;
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

  dimension_group: end {
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
    sql: ${TABLE}.EndDate ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.SortOrder ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.StartDate ;;
  }

  dimension: substitute_catalog_id {
    type: number
    sql: ${TABLE}.Substitute_CatalogId ;;
  }

  measure: count {
    type: count
    drill_fields: [catalog.catalog_id, catalog.catalog_name]
  }
}
