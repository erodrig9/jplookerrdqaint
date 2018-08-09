view: database_version {
  sql_table_name: dbo.DatabaseVersion ;;

  dimension: database_version_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.DatabaseVersionId ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: number {
    type: string
    sql: ${TABLE}.Number ;;
  }

  dimension_group: release {
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
    sql: ${TABLE}.ReleaseDate ;;
  }

  measure: count {
    type: count
    drill_fields: [database_version_id]
  }
}
