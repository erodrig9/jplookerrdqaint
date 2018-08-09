view: logistics {
  sql_table_name: dbo.Logistics ;;

  dimension: logistics_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.LogisticsId ;;
  }

  dimension: level_type {
    type: string
    sql: ${TABLE}.LevelType ;;
  }

  dimension: provider_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProviderId ;;
  }

  dimension: record_value {
    type: string
    sql: ${TABLE}.RecordValue ;;
  }

  dimension: user_defined {
    type: number
    sql: ${TABLE}.UserDefined ;;
  }

  measure: count {
    type: count
    drill_fields: [logistics_id, providers.provider_name, providers.backup_provider_id]
  }
}
