view: purchase_order_line {
  sql_table_name: dbo.PurchaseOrderLine ;;

  dimension: purchase_order_line_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.PurchaseOrderLineId ;;
  }

  dimension: buyer {
    type: string
    sql: ${TABLE}.Buyer ;;
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

  dimension: dynamic_field_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DynamicFieldId ;;
  }

  dimension: inventory_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.InventoryId ;;
  }

  dimension_group: last_updated {
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
    sql: ${TABLE}.LastUpdatedDate ;;
  }

  dimension: last_updated_user {
    type: number
    sql: ${TABLE}.LastUpdatedUser ;;
  }

  dimension: line_comments {
    type: string
    sql: ${TABLE}.LineComments ;;
  }

  dimension: line_status {
    type: string
    sql: ${TABLE}.LineStatus ;;
  }

  dimension: order_quantity {
    type: number
    sql: ${TABLE}.OrderQuantity ;;
  }

  dimension: payment_terms {
    type: string
    sql: ${TABLE}.PaymentTerms ;;
  }

  dimension: price {
    type: string
    sql: ${TABLE}.Price ;;
  }

  dimension: purchase_order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.PurchaseOrderHeaderId ;;
  }

  dimension: purchase_order_line_number {
    type: string
    sql: ${TABLE}.PurchaseOrderLineNumber ;;
  }

  dimension: revision {
    type: string
    sql: ${TABLE}.Revision ;;
  }

  dimension: skudescription {
    type: string
    sql: ${TABLE}.SKUDescription ;;
  }

  dimension: supplier_comments {
    type: string
    sql: ${TABLE}.SupplierComments ;;
  }

  dimension: supplier_status {
    type: string
    sql: ${TABLE}.SupplierStatus ;;
  }

  dimension: uomid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.UOMId ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      purchase_order_line_id,
      purchase_order_header.purchase_order_header_id,
      purchase_order_header.bill_to_name,
      inventory.inventory_id,
      inventory.trademark_name,
      uom.uomname,
      uom.base_uomid,
      dynamic_field.dynamic_field_id,
      purchase_order_line_detail.count
    ]
  }
}
