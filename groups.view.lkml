view: groups {
  sql_table_name: dbo.Groups ;;

  dimension: group_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.GroupId ;;
  }

  dimension: admin_user_id {
    type: number
    sql: ${TABLE}.AdminUserId ;;
  }

  dimension: budget {
    type: string
    sql: ${TABLE}.Budget ;;
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

  dimension: dynamic_record_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DynamicRecordId ;;
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

  dimension: group_code {
    type: string
    sql: ${TABLE}.GroupCode ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.GroupName ;;
  }

  dimension: group_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.GroupTypeId ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  dimension: rule_promotion_id {
    type: number
    sql: ${TABLE}.rulePromotionID ;;
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
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      group_id,
      group_name,
      group_types.group_type_id,
      group_types.group_type_name,
      dynamic_record.dynamic_record_id,
      anoop_and_max_test.count,
      auto_include_line.count,
      group_members_xref.count,
      groups_locale.count,
      groups_marketing_segment_xref.count,
      order_header.count
    ]
  }
}
