view: email_addresses_removed {
  sql_table_name: dbo.EmailAddressesRemoved ;;

  dimension: bounced {
    type: string
    sql: ${TABLE}.Bounced ;;
  }

  dimension: cell_number {
    type: string
    sql: ${TABLE}.CellNumber ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: custom1 {
    type: string
    sql: ${TABLE}.Custom1 ;;
  }

  dimension: custom10 {
    type: string
    sql: ${TABLE}.Custom10 ;;
  }

  dimension: custom2 {
    type: string
    sql: ${TABLE}.Custom2 ;;
  }

  dimension: custom3 {
    type: string
    sql: ${TABLE}.Custom3 ;;
  }

  dimension: custom4 {
    type: string
    sql: ${TABLE}.Custom4 ;;
  }

  dimension: custom5 {
    type: string
    sql: ${TABLE}.Custom5 ;;
  }

  dimension: custom6 {
    type: string
    sql: ${TABLE}.Custom6 ;;
  }

  dimension: custom7 {
    type: string
    sql: ${TABLE}.Custom7 ;;
  }

  dimension: custom8 {
    type: string
    sql: ${TABLE}.Custom8 ;;
  }

  dimension: custom9 {
    type: string
    sql: ${TABLE}.Custom9 ;;
  }

  dimension_group: date_bounced {
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
    sql: ${TABLE}.DateBounced ;;
  }

  dimension_group: date_removed {
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
    sql: ${TABLE}.DateRemoved ;;
  }

  dimension: duplicate {
    type: string
    sql: ${TABLE}.Duplicate ;;
  }

  dimension: email_address {
    type: string
    sql: ${TABLE}.EmailAddress ;;
  }

  dimension: email_format_id {
    type: number
    sql: ${TABLE}.EmailFormatId ;;
  }

  dimension: email_id {
    type: number
    sql: ${TABLE}.EmailId ;;
  }

  dimension: exceeded_mail_quota {
    type: string
    sql: ${TABLE}.ExceededMailQuota ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  dimension: list_id {
    type: number
    sql: ${TABLE}.ListId ;;
  }

  dimension_group: mxvalidation {
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
    sql: ${TABLE}.MXValidationDate ;;
  }

  dimension: mxvalidation_passed {
    type: string
    sql: ${TABLE}.MXValidationPassed ;;
  }

  dimension: mxvalidation_performed {
    type: string
    sql: ${TABLE}.MXValidationPerformed ;;
  }

  dimension: phone_number {
    type: string
    sql: ${TABLE}.PhoneNumber ;;
  }

  dimension_group: smtpvalidation {
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
    sql: ${TABLE}.SMTPValidationDate ;;
  }

  dimension: smtpvalidation_passed {
    type: string
    sql: ${TABLE}.SMTPValidationPassed ;;
  }

  dimension: smtpvalidation_performed {
    type: string
    sql: ${TABLE}.SMTPValidationPerformed ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: unsubscribed {
    type: string
    sql: ${TABLE}.Unsubscribed ;;
  }

  dimension: verification_id {
    type: string
    sql: ${TABLE}.VerificationId ;;
  }

  dimension: verified {
    type: string
    sql: ${TABLE}.Verified ;;
  }

  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}.ZipCode ;;
  }

  measure: count {
    type: count
    drill_fields: [first_name, last_name]
  }
}
