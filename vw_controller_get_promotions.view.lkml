view: vw_controller_get_promotions {
  sql_table_name: dbo.VwController_GetPromotions ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: active {
    type: string
    sql: ${TABLE}.Active ;;
  }

  dimension: rule_id {
    type: number
    sql: ${TABLE}.ruleId ;;
  }

  dimension: valid {
    type: string
    sql: ${TABLE}.Valid ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
