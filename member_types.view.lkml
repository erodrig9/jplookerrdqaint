view: member_types {
  sql_table_name: dbo.MemberTypes ;;

  dimension: member_type_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.MemberTypeId ;;
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
    sql: ${TABLE}.DynamicRecordID ;;
  }

  dimension: internal {
    type: string
    sql: ${TABLE}.Internal ;;
  }

  dimension: is_default {
    type: string
    sql: ${TABLE}.IsDefault ;;
  }

  dimension: lockout_period {
    type: number
    sql: ${TABLE}.LockoutPeriod ;;
  }

  dimension: max_bad_login_attempts {
    type: number
    sql: ${TABLE}.MaxBadLoginAttempts ;;
  }

  dimension: member_type_code {
    type: string
    sql: ${TABLE}.MemberTypeCode ;;
  }

  dimension: member_type_name {
    type: string
    sql: ${TABLE}.MemberTypeName ;;
  }

  dimension: password_expiration_days {
    type: number
    sql: ${TABLE}.PasswordExpirationDays ;;
  }

  dimension: password_history_count {
    type: number
    sql: ${TABLE}.PasswordHistoryCount ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  dimension: sort_order {
    type: string
    sql: ${TABLE}.SortOrder ;;
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
      member_type_id,
      member_type_name,
      dynamic_record.dynamic_record_id,
      auto_include_line.count,
      communications_member_types_xref.count,
      distribution_channel_member_types_xref.count,
      members.count,
      member_type_ship_methods_xref.count,
      member_types_locale.count,
      shipping_handling.count
    ]
  }
}
