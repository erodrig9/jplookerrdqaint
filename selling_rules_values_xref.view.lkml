view: selling_rules_values_xref {
  sql_table_name: dbo.SellingRules_Values_XRef ;;

  dimension: selling_rules_values_xref_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.SellingRules_Values_XRefId ;;
  }

  dimension: catalog_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CatalogId ;;
  }

  dimension: category_id {
    type: number
    sql: ${TABLE}.CategoryId ;;
  }

  dimension: selling_rule_header_id {
    type: number
    sql: ${TABLE}.SellingRuleHeaderId ;;
  }

  measure: count {
    type: count
    drill_fields: [selling_rules_values_xref_id, catalog.catalog_id, catalog.catalog_name, adt_selling_rules_values_xref.count]
  }
}
