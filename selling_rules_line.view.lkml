view: selling_rules_line {
  sql_table_name: dbo.SellingRulesLine ;;

  dimension: selling_rules_line_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.SellingRulesLineId ;;
  }

  dimension: column_name {
    type: string
    sql: ${TABLE}.ColumnName ;;
  }

  dimension: rule_value {
    type: string
    sql: ${TABLE}.RuleValue ;;
  }

  dimension: selling_rules_header_id {
    type: number
    sql: ${TABLE}.SellingRulesHeaderId ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.TableName ;;
  }

  measure: count {
    type: count
    drill_fields: [selling_rules_line_id, column_name, table_name, adt_selling_rules_line.count]
  }
}
