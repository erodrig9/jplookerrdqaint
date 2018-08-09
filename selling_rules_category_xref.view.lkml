view: selling_rules_category_xref {
  sql_table_name: dbo.SellingRules_Category_XRef ;;

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
    drill_fields: []
  }
}
