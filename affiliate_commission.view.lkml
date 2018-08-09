view: affiliate_commission {
  sql_table_name: dbo.AffiliateCommission ;;

  dimension: affiliate_commission_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.AffiliateCommissionId ;;
  }

  dimension: commission_adjustment_type_id {
    type: number
    sql: ${TABLE}.CommissionAdjustmentTypeId ;;
  }

  dimension: commission_amount {
    type: string
    sql: ${TABLE}.CommissionAmount ;;
  }

  dimension_group: commission {
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
    sql: ${TABLE}.CommissionDate ;;
  }

  dimension: commission_notes {
    type: string
    sql: ${TABLE}.CommissionNotes ;;
  }

  dimension: commission_rate {
    type: string
    sql: ${TABLE}.CommissionRate ;;
  }

  dimension: commission_running_total {
    type: string
    sql: ${TABLE}.CommissionRunningTotal ;;
  }

  dimension: commission_type {
    type: string
    sql: ${TABLE}.CommissionType ;;
  }

  dimension: commission_type_id {
    type: number
    sql: ${TABLE}.CommissionTypeId ;;
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

  dimension: item_total {
    type: string
    sql: ${TABLE}.ItemTotal ;;
  }

  dimension: member_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MemberId ;;
  }

  dimension: order_currency_commission_value {
    type: string
    sql: ${TABLE}.OrderCurrencyCommissionValue ;;
  }

  dimension: order_shipment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderShipmentId ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
  }

  dimension: unit_price {
    type: string
    sql: ${TABLE}.UnitPrice ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.UserId ;;
  }

  measure: count {
    type: count
    drill_fields: [affiliate_commission_id, members.member_id, members.username, order_shipments.order_shipment_id, member_budget.count]
  }
}
