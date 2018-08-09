view: email_bounce_log {
  sql_table_name: dbo.EmailBounceLog ;;

  dimension: bounce_body {
    type: string
    sql: ${TABLE}.BounceBody ;;
  }

  dimension_group: bounce {
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
    sql: ${TABLE}.BounceDate ;;
  }

  dimension: bounce_subject {
    type: string
    sql: ${TABLE}.BounceSubject ;;
  }

  dimension: bounce_to {
    type: string
    sql: ${TABLE}.BounceTo ;;
  }

  dimension: broadcast_id {
    type: number
    sql: ${TABLE}.BroadcastId ;;
  }

  dimension: email_address_id {
    type: number
    sql: ${TABLE}.EmailAddressId ;;
  }

  dimension: email_header_id {
    type: string
    sql: ${TABLE}.EmailHeaderId ;;
  }

  dimension: email_settings_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.EmailSettingsId ;;
  }

  dimension: rec_id {
    type: number
    sql: ${TABLE}.RecId ;;
  }

  measure: count {
    type: count
    drill_fields: [email_settings.email_settings_id, email_settings.email_settings_name, email_settings.ftpusername]
  }
}
