view: catalog_prerequisites_xref {
  sql_table_name: dbo.CatalogPrerequisites_XRef ;;

  dimension: catalog_prerequisites_xref_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.CatalogPrerequisites_XRefId ;;
  }

  dimension: catalog_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CatalogId ;;
  }

  dimension: prerequisite_id {
    type: number
    sql: ${TABLE}.PrerequisiteId ;;
  }

  measure: count {
    type: count
    drill_fields: [catalog_prerequisites_xref_id, catalog.catalog_id, catalog.catalog_name]
  }
}
