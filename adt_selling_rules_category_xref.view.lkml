view: adt_selling_rules_category_xref {
  sql_table_name: dbo.adt_SellingRules_Category_XRef ;;

  dimension: category_id {
    type: number
    sql: ${TABLE}.CategoryId ;;
  }

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

  dimension: dbuser {
    type: string
    sql: ${TABLE}.DBUser ;;
  }

  dimension: dmlaction {
    type: string
    sql: ${TABLE}.DMLAction ;;
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
