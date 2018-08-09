view: ipfilter_rule_ip_xref {
  sql_table_name: dbo.IPFilterRule_IP_XRef ;;

  dimension: ipaddress {
    type: string
    sql: ${TABLE}.IPAddress ;;
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
