view: affiliate_types {
  sql_table_name: dbo.AffiliateTypes ;;

  dimension: affiliate_type_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.AffiliateTypeId ;;
  }

  dimension: affiliate_type_base_url {
    type: string
    sql: ${TABLE}.AffiliateTypeBaseURL ;;
  }

  dimension: affiliate_type_code {
    type: string
    sql: ${TABLE}.AffiliateTypeCode ;;
  }

  dimension: affiliate_type_name {
    type: string
    sql: ${TABLE}.AffiliateTypeName ;;
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

  dimension: default_affiliate_commission_type_id {
    type: number
    sql: ${TABLE}.DefaultAffiliateCommissionTypeId ;;
  }

  dimension: member_budget {
    type: string
    sql: ${TABLE}.MemberBudget ;;
  }

  dimension: requires_approval {
    type: string
    sql: ${TABLE}.RequiresApproval ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  measure: count {
    type: count
    drill_fields: [affiliate_type_id, affiliate_type_name, members.count]
  }
}
