view: adt_selling_rules_values_xref {
  sql_table_name: dbo.adt_SellingRules_Values_XRef ;;

  dimension: action {
    type: string
    sql: ${TABLE}.Action ;;
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

  dimension: selling_rules_values_xref_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SellingRules_Values_XRefId ;;
  }

  dimension_group: timestamp {
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
    sql: ${TABLE}.Timestamp ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}."User" ;;
  }

  measure: count {
    type: count
    drill_fields: [selling_rules_values_xref.selling_rules_values_xref_id, catalog.catalog_id, catalog.catalog_name]
  }
}
