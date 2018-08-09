view: selling_rule_set {
  sql_table_name: dbo.SellingRuleSet ;;

  dimension: selling_rule_set_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.SellingRuleSetId ;;
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

  dimension: selling_rule_set_name {
    type: string
    sql: ${TABLE}.SellingRuleSetName ;;
  }

  measure: count {
    type: count
    drill_fields: [selling_rule_set_id, selling_rule_set_name, adt_selling_rule_set.count, adt_selling_rules_header.count, selling_rules_header.count]
  }
}
