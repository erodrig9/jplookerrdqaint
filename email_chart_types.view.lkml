view: email_chart_types {
  sql_table_name: dbo.EmailChartTypes ;;

  dimension: chart_id {
    type: number
    sql: ${TABLE}.ChartId ;;
  }

  dimension: chart_type {
    type: string
    sql: ${TABLE}.ChartType ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
