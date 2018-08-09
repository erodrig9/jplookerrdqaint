view: tax_override_states {
  sql_table_name: dbo.TaxOverrideStates ;;

  dimension: tax_override_state_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.TaxOverrideStateId ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.CountryCode ;;
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

  dimension: over_ride_tax {
    type: string
    sql: ${TABLE}.OverRideTax ;;
  }

  dimension: over_ride_tax_rate {
    type: number
    sql: ${TABLE}.OverRideTaxRate ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  dimension: st_pr_id {
    type: number
    sql: ${TABLE}.StPrId ;;
  }

  dimension: tax_vatnumber {
    type: string
    sql: ${TABLE}.TaxVATNumber ;;
  }

  measure: count {
    type: count
    drill_fields: [tax_override_state_id]
  }
}
