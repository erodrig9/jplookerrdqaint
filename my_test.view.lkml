view: my_test {
  sql_table_name: dbo.MyTest ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: color {
    type: string
    sql: ${TABLE}.color ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
