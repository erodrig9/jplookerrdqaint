view: inventory_suppliers_xref {
  sql_table_name: dbo.Inventory_Suppliers_XRef ;;

  dimension: cost {
    type: number
    sql: ${TABLE}.Cost ;;
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

  dimension_group: end {
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
    sql: ${TABLE}.EndDate ;;
  }

  dimension: inventory_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.InventoryId ;;
  }

  dimension: lead_time {
    type: number
    sql: ${TABLE}.LeadTime ;;
  }

  dimension: order_quantity {
    type: number
    sql: ${TABLE}.OrderQuantity ;;
  }

  dimension: primary_supplier {
    type: string
    sql: ${TABLE}.PrimarySupplier ;;
  }

  dimension: qty_per_package {
    type: number
    sql: ${TABLE}.QtyPerPackage ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.StartDate ;;
  }

  dimension: supplier_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SupplierId ;;
  }

  dimension: supplier_item_no {
    type: string
    sql: ${TABLE}.SupplierItemNo ;;
  }

  measure: count {
    type: count
    drill_fields: [inventory.inventory_id, inventory.trademark_name, suppliers.supplier_id, suppliers.supplier_name]
  }
}
