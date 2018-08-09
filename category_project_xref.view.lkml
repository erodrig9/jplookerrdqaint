view: category_project_xref {
  sql_table_name: dbo.Category_Project_XRef ;;

  dimension: category_id {
    type: number
    sql: ${TABLE}.CategoryId ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
