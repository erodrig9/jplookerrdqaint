view: selling_rules_catalog_xref {
  sql_table_name: dbo.SellingRules_Catalog_XRef ;;

  dimension: catalog_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CatalogId ;;
  }

  dimension: selling_rule_header_id {
    type: number
    sql: ${TABLE}.SellingRuleHeaderId ;;
  }

  measure: count {
    type: count
    drill_fields: [catalog.catalog_id, catalog.catalog_name]
  }
}
