view: reason_code_locale {
  sql_table_name: dbo.ReasonCode_Locale ;;

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
  }

  dimension: reason_code_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ReasonCodeId ;;
  }

  dimension: reason_code_name {
    type: string
    sql: ${TABLE}.ReasonCodeName ;;
  }

  measure: count {
    type: count
    drill_fields: [reason_code_name, reason_code.reason_code_id, reason_code.reason_code_name]
  }
}
