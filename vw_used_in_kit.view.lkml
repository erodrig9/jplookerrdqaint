view: vw_used_in_kit {
  sql_table_name: dbo.VwUsedInKit ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: inventoryid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.inventoryid ;;
  }

  dimension: used_in_kit {
    type: string
    sql: ${TABLE}.UsedInKit ;;
  }

  measure: count {
    type: count
    drill_fields: [id, inventory.inventory_id, inventory.trademark_name]
  }
}
