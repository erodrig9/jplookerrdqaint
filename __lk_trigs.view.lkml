view: __lk_trigs {
  sql_table_name: dbo.__lk_trigs ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: is_already_disabled {
    type: number
    sql: ${TABLE}.is_already_disabled ;;
  }

  dimension: tabl {
    type: string
    sql: ${TABLE}.tabl ;;
  }

  dimension: trig {
    type: string
    sql: ${TABLE}.trig ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
