view: ipfilter_rule {
  sql_table_name: dbo.IPFilterRule ;;

  dimension: ipfilter_rule_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.IPFilterRuleId ;;
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

  dimension: ipfilter_rule_code {
    type: string
    sql: ${TABLE}.IPFilterRuleCode ;;
  }

  dimension: ipfilter_rule_name {
    type: string
    sql: ${TABLE}.IPFilterRuleName ;;
  }

  dimension: ipfilter_type {
    type: string
    sql: ${TABLE}.IPFilterType ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  measure: count {
    type: count
    drill_fields: [ipfilter_rule_id, ipfilter_rule_name, ipfilter_rule_country_xref.count, ipfilter_rule_ip_xref.count, portals.count]
  }
}
