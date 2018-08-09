view: email_messages {
  sql_table_name: dbo.EmailMessages ;;

  dimension: email_message_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.EmailMessageId ;;
  }

  dimension: char_set_id {
    type: number
    sql: ${TABLE}.CharSetId ;;
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

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
  }

  dimension: message_code {
    type: string
    sql: ${TABLE}.MessageCode ;;
  }

  dimension: message_html {
    type: string
    sql: ${TABLE}.MessageHTML ;;
  }

  dimension: message_multi_part {
    type: string
    sql: ${TABLE}.MessageMultiPart ;;
  }

  dimension: message_name {
    type: string
    sql: ${TABLE}.MessageName ;;
  }

  dimension: message_subject {
    type: string
    sql: ${TABLE}.MessageSubject ;;
  }

  dimension: message_txt {
    type: string
    sql: ${TABLE}.MessageTXT ;;
  }

  dimension: message_with_redirects {
    type: string
    sql: ${TABLE}.MessageWithRedirects ;;
  }

  dimension: override_global_footer {
    type: string
    sql: ${TABLE}.OverrideGlobalFooter ;;
  }

  dimension: override_global_header {
    type: string
    sql: ${TABLE}.OverrideGlobalHeader ;;
  }

  dimension: show_editor {
    type: string
    sql: ${TABLE}.ShowEditor ;;
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
    drill_fields: [email_message_id, message_name]
  }
}
