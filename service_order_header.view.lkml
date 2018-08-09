view: service_order_header {
  sql_table_name: dbo.ServiceOrderHeader ;;

  dimension: service_order_header_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ServiceOrderHeaderID ;;
  }

  dimension: box_catalog_id {
    type: number
    sql: ${TABLE}.BoxCatalogId ;;
  }

  dimension: catalog_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CatalogId ;;
  }

  dimension: charge_for_service {
    type: string
    sql: ${TABLE}.ChargeForService ;;
  }

  dimension_group: date_order_completed {
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
    sql: ${TABLE}.DateOrderCompleted ;;
  }

  dimension_group: date_order_updated {
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
    sql: ${TABLE}.DateOrderUpdated ;;
  }

  dimension: inventory_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.InventoryId ;;
  }

  dimension: loaner_catalog_id {
    type: number
    sql: ${TABLE}.LoanerCatalogId ;;
  }

  dimension: loaner_required {
    type: string
    sql: ${TABLE}.LoanerRequired ;;
  }

  dimension: notes_external {
    type: string
    sql: ${TABLE}.NotesExternal ;;
  }

  dimension: notes_internal {
    type: string
    sql: ${TABLE}.NotesInternal ;;
  }

  dimension: order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderHeaderId ;;
  }

  dimension: registered_product_id {
    type: number
    sql: ${TABLE}.RegisteredProductId ;;
  }

  dimension_group: service_item_date_received {
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
    sql: ${TABLE}.ServiceItemDateReceived ;;
  }

  dimension: service_item_ship_cost {
    type: string
    sql: ${TABLE}.ServiceItemShipCost ;;
  }

  dimension: service_item_ship_method_id {
    type: number
    sql: ${TABLE}.ServiceItemShipMethodId ;;
  }

  dimension: service_item_tracking_number {
    type: string
    sql: ${TABLE}.ServiceItemTrackingNumber ;;
  }

  dimension: service_order_invoice_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ServiceOrderInvoiceTypeId ;;
  }

  dimension: service_order_status_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ServiceOrderStatusId ;;
  }

  dimension: warranty_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.WarrantyTypeId ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      service_order_header_id,
      order_header.autoship_order_header_id,
      catalog.catalog_id,
      catalog.catalog_name,
      inventory.inventory_id,
      inventory.trademark_name,
      service_order_status.service_order_status_id,
      service_order_status.service_order_status_name,
      warranty_types.warranty_type_id,
      warranty_types.warranty_type_name,
      service_order_invoice_type.service_order_invoice_type_id,
      service_order_invoice_type.service_order_invoice_type_name,
      service_orders_xref.count
    ]
  }
}
