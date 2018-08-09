view: closed_dates {
  sql_table_name: dbo.ClosedDates ;;

  dimension: closed_dates_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ClosedDatesID ;;
  }

  dimension: closed_date {
    type: string
    sql: ${TABLE}.ClosedDate ;;
  }

  dimension: country_id {
    type: number
    sql: ${TABLE}.CountryId ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  dimension: provider_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProviderId ;;
  }

  measure: count {
    type: count
    drill_fields: [closed_dates_id, providers.provider_name, providers.backup_provider_id]
  }
}
