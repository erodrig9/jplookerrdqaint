view: adt_selling_rules_line {
  sql_table_name: dbo.adt_SellingRulesLine ;;

  dimension_group: change {
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
    sql: ${TABLE}.ChangeDate ;;
  }

  dimension: column_name {
    type: string
    sql: ${TABLE}.ColumnName ;;
  }

  dimension: dbuser {
    type: string
    sql: ${TABLE}.DBUser ;;
  }

  dimension: dmlaction {
    type: string
    sql: ${TABLE}.DMLAction ;;
  }

  dimension: rule_value {
    type: string
    sql: ${TABLE}.RuleValue ;;
  }

  dimension: selling_rules_header_id {
    type: number
    sql: ${TABLE}.SellingRulesHeaderId ;;
  }

  dimension: selling_rules_line_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SellingRulesLineId ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.TableName ;;
  }

  measure: count {
    type: count
    drill_fields: [column_name, table_name, selling_rules_line.selling_rules_line_id, selling_rules_line.column_name, selling_rules_line.table_name]
  }
}
