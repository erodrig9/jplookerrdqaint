view: ipfilter_rule_country_xref {
  sql_table_name: dbo.IPFilterRule_Country_XRef ;;

  dimension: country_id {
    type: number
    sql: ${TABLE}.CountryId ;;
  }

  dimension: ipfilter_rule_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.IPFilterRuleId ;;
  }

  measure: count {
    type: count
    drill_fields: [ipfilter_rule.ipfilter_rule_id, ipfilter_rule.ipfilter_rule_name]
  }
}
