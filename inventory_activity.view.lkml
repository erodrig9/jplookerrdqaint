view: inventory_activity {
  sql_table_name: dbo.Inventory_Activity ;;

  dimension: inventory_activity_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Inventory_ActivityId ;;
  }

  dimension: adjustment_qty {
    type: number
    sql: ${TABLE}.AdjustmentQty ;;
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

  dimension: inventory_adjustment_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.InventoryAdjustmentTypeId ;;
  }

  dimension: inventory_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.InventoryId ;;
  }

  dimension: inventory_provider_xref_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Inventory_Provider_XRefId ;;
  }

  dimension: reference_id {
    type: number
    sql: ${TABLE}.ReferenceId ;;
  }

  dimension: transaction_description {
    type: string
    sql: ${TABLE}.TransactionDescription ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      inventory_activity_id,
      inventory.inventory_id,
      inventory.trademark_name,
      inventory_provider_xref.inventory_provider_xref_id,
      inventory_adjustment_types.inventory_adjustment_type_id,
      inventory_adjustment_types.inventory_adjustment_type_name
    ]
  }
}
