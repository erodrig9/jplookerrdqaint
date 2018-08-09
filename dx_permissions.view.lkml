view: dx_permissions {
  sql_table_name: dbo.DxPermissions ;;

  dimension: page_id {
    type: number
    sql: ${TABLE}.PageId ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.UserId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
