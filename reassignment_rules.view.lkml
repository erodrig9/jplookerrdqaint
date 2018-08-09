view: reassignment_rules {
  sql_table_name: dbo.ReassignmentRules ;;

  dimension: reassignment_rules_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ReassignmentRulesId ;;
  }

  dimension: address_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.AddressTypeId ;;
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

  dimension: day_end_range {
    type: number
    sql: ${TABLE}.DayEndRange ;;
  }

  dimension: day_start_range {
    type: number
    sql: ${TABLE}.DayStartRange ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.EndDate ;;
  }

  dimension: from_shipping_method_id {
    type: number
    sql: ${TABLE}.FromShippingMethodId ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  dimension: rule_name {
    type: string
    sql: ${TABLE}.RuleName ;;
  }

  dimension: rule_type_code {
    type: string
    sql: ${TABLE}.RuleTypeCode ;;
  }

  dimension: sort_order {
    type: string
    sql: ${TABLE}.SortOrder ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.StartDate ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  dimension: to_shipping_method_id {
    type: number
    sql: ${TABLE}.ToShippingMethodId ;;
  }

  measure: count {
    type: count
    drill_fields: [reassignment_rules_id, rule_name, address_types.address_type_id, address_types.address_type_name]
  }
}
