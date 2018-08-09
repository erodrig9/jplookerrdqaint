view: exchange_rate {
  sql_table_name: dbo.ExchangeRate ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: currency_from {
    type: string
    sql: ${TABLE}.currencyFrom ;;
  }

  dimension: currency_to {
    type: string
    sql: ${TABLE}.currencyTo ;;
  }

  dimension_group: effective {
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
    sql: ${TABLE}.effectiveDate ;;
  }

  dimension: project_code {
    type: string
    sql: ${TABLE}.projectCode ;;
  }

  dimension: rate {
    type: number
    sql: ${TABLE}.rate ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
