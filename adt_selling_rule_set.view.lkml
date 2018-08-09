view: adt_selling_rule_set {
  sql_table_name: dbo.adt_SellingRuleSet ;;

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

  dimension: selling_rule_set_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SellingRuleSetId ;;
  }

  dimension: selling_rule_set_name {
    type: string
    sql: ${TABLE}.SellingRuleSetName ;;
  }

  measure: count {
    type: count
    drill_fields: [selling_rule_set_name, selling_rule_set.selling_rule_set_id, selling_rule_set.selling_rule_set_name]
  }
}
