view: location {
  sql_table_name: dbo.Location ;;

  dimension: location_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.LocationId ;;
  }

  dimension: address1 {
    type: string
    sql: ${TABLE}.Address1 ;;
  }

  dimension: address2 {
    type: string
    sql: ${TABLE}.Address2 ;;
  }

  dimension: address3 {
    type: string
    sql: ${TABLE}.Address3 ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: country_id {
    type: number
    sql: ${TABLE}.CountryId ;;
  }

  dimension: directions {
    type: string
    sql: ${TABLE}.Directions ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}.Fax ;;
  }

  dimension: hours_friday {
    type: string
    sql: ${TABLE}.HoursFriday ;;
  }

  dimension: hours_monday {
    type: string
    sql: ${TABLE}.HoursMonday ;;
  }

  dimension: hours_saturday {
    type: string
    sql: ${TABLE}.HoursSaturday ;;
  }

  dimension: hours_sunday {
    type: string
    sql: ${TABLE}.HoursSunday ;;
  }

  dimension: hours_thursday {
    type: string
    sql: ${TABLE}.HoursThursday ;;
  }

  dimension: hours_tuesday {
    type: string
    sql: ${TABLE}.HoursTuesday ;;
  }

  dimension: hours_wednesday {
    type: string
    sql: ${TABLE}.HoursWednesday ;;
  }

  dimension: hours_weekdays {
    type: string
    sql: ${TABLE}.HoursWeekdays ;;
  }

  dimension: hours_weekends {
    type: string
    sql: ${TABLE}.HoursWeekends ;;
  }

  dimension: location_code {
    type: string
    sql: ${TABLE}.LocationCode ;;
  }

  dimension: location_name {
    type: string
    sql: ${TABLE}.LocationName ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.Message ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.Phone ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.PostalCode ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  dimension: st_pr_id {
    type: number
    sql: ${TABLE}.StPrId ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  measure: count {
    type: count
    drill_fields: [location_id, location_name, location_locale.count]
  }
}
