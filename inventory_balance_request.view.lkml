view: inventory_balance_request {
  sql_table_name: dbo.InventoryBalanceRequest ;;

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

  dimension: inventory_bal_request_id {
    type: number
    sql: ${TABLE}.InventoryBalRequestId ;;
  }

  dimension: inventory_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.InventoryId ;;
  }

  dimension: inventory_provider_xref_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Inventory_provider_XRefId ;;
  }

  dimension: process {
    type: string
    sql: ${TABLE}.Process ;;
  }

  dimension: task_name {
    type: string
    sql: ${TABLE}.TaskName ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.UserId ;;
  }

  measure: count {
    type: count
    drill_fields: [task_name, inventory.inventory_id, inventory.trademark_name, inventory_provider_xref.inventory_provider_xref_id]
  }
}
