view: inventory_adjustment_types {
  sql_table_name: dbo.InventoryAdjustmentTypes ;;

  dimension: inventory_adjustment_type_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.InventoryAdjustmentTypeId ;;
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

  dimension: inventory_adjustment_type_code {
    type: string
    sql: ${TABLE}.InventoryAdjustmentTypeCode ;;
  }

  dimension: inventory_adjustment_type_name {
    type: string
    sql: ${TABLE}.InventoryAdjustmentTypeName ;;
  }

  dimension: sort_order {
    type: string
    sql: ${TABLE}.SortOrder ;;
  }

  measure: count {
    type: count
    drill_fields: [inventory_adjustment_type_id, inventory_adjustment_type_name, inventory_activity.count]
  }
}
