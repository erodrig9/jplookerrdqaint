view: location_locale {
  sql_table_name: dbo.Location_Locale ;;

  dimension: directions {
    type: string
    sql: ${TABLE}.Directions ;;
  }

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
  }

  dimension: location_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.LocationId ;;
  }

  dimension: location_name {
    type: string
    sql: ${TABLE}.LocationName ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.Message ;;
  }

  measure: count {
    type: count
    drill_fields: [location_name, location.location_id, location.location_name]
  }
}
