view: _dummytbl {
  sql_table_name: dbo._dummytbl ;;

  dimension: dummycol {
    type: string
    sql: ${TABLE}.dummycol ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
