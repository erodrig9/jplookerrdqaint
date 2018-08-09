view: catalog_auto_include_xref {
  sql_table_name: dbo.CatalogAutoInclude_XRef ;;

  dimension: catalog_auto_include_xref_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.CatalogAutoInclude_XRefId ;;
  }

  dimension: auto_include_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.AutoIncludeHeaderId ;;
  }

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

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  measure: count {
    type: count
    drill_fields: [catalog_auto_include_xref_id, catalog.catalog_id, catalog.catalog_name, auto_include_header.auto_include_header_id, auto_include_header.auto_include_name]
  }
}
