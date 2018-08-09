view: affiliate_commission_types {
  sql_table_name: dbo.AffiliateCommissionTypes ;;

  dimension: affiliate_commission_type_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.AffiliateCommissionTypeId ;;
  }

  dimension: affiliate_commission_type_code {
    type: string
    sql: ${TABLE}.AffiliateCommissionTypeCode ;;
  }

  dimension: affiliate_commission_type_name {
    type: string
    sql: ${TABLE}.AffiliateCommissionTypeName ;;
  }

  dimension: commission_rate_type_id {
    type: number
    sql: ${TABLE}.CommissionRateTypeId ;;
  }

  dimension: commission_rate_value {
    type: number
    sql: ${TABLE}.CommissionRateValue ;;
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

  dimension: flat_rate {
    type: string
    sql: ${TABLE}.FlatRate ;;
  }

  dimension: max_orders {
    type: number
    sql: ${TABLE}.MaxOrders ;;
  }

  dimension: min_item_total {
    type: string
    sql: ${TABLE}.MinItemTotal ;;
  }

  dimension: min_orders {
    type: number
    sql: ${TABLE}.MinOrders ;;
  }

  dimension: percentage_rate {
    type: number
    sql: ${TABLE}.PercentageRate ;;
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

  measure: count {
    type: count
    drill_fields: [affiliate_commission_type_id, affiliate_commission_type_name, catalog.count, member_affiliate_commission_types_xref.count]
  }
}
