view: member_budget {
  sql_table_name: dbo.MemberBudget ;;

  dimension: member_budget_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.MemberBudgetId ;;
  }

  dimension: affiliate_commission_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.AffiliateCommissionId ;;
  }

  dimension: budget_adjustment_type_id {
    type: number
    sql: ${TABLE}.BudgetAdjustmentTypeId ;;
  }

  dimension: budget_amount {
    type: string
    sql: ${TABLE}.BudgetAmount ;;
  }

  dimension_group: budget {
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
    sql: ${TABLE}.BudgetDate ;;
  }

  dimension: budget_notes {
    type: string
    sql: ${TABLE}.BudgetNotes ;;
  }

  dimension: budget_running_total {
    type: string
    sql: ${TABLE}.BudgetRunningTotal ;;
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

  dimension: member_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MemberId ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.UserId ;;
  }

  measure: count {
    type: count
    drill_fields: [member_budget_id, affiliate_commission.affiliate_commission_id, members.member_id, members.username]
  }
}
