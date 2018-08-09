view: inventory {
  sql_table_name: dbo.Inventory ;;

  dimension: inventory_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.InventoryId ;;
  }

  dimension: allow_back_order {
    type: string
    sql: ${TABLE}.AllowBackOrder ;;
  }

  dimension: avg_daily_usage {
    type: number
    sql: ${TABLE}.AvgDailyUsage ;;
  }

  dimension: color_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ColorId ;;
  }

  dimension: cost {
    type: string
    sql: ${TABLE}.Cost ;;
  }

  dimension_group: create_stamp {
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
    sql: ${TABLE}.CreateStamp ;;
  }

  dimension: custodian_id {
    type: number
    sql: ${TABLE}.CustodianId ;;
  }

  dimension: default_inv_acct_methods_id {
    type: number
    sql: ${TABLE}.DefaultInvAcctMethodsId ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: dock_to_stock {
    type: number
    sql: ${TABLE}.DockToStock ;;
  }

  dimension: dpodauthor {
    type: string
    sql: ${TABLE}.DPODAuthor ;;
  }

  dimension: dpodcost_center {
    type: string
    sql: ${TABLE}.DPODCostCenter ;;
  }

  dimension: dpoddocument_type {
    type: string
    sql: ${TABLE}.DPODDocumentType ;;
  }

  dimension: dpodfile_id {
    type: number
    sql: ${TABLE}.DPODFileId ;;
  }

  dimension: dpodfile_link {
    type: string
    sql: ${TABLE}.DPODFileLink ;;
  }

  dimension: dpodkit {
    type: string
    sql: ${TABLE}.DPODKit ;;
  }

  dimension: dpodkit_approved {
    type: string
    sql: ${TABLE}.DPODKitApproved ;;
  }

  dimension_group: dpodkit_approved {
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
    sql: ${TABLE}.DPODKitApprovedDate ;;
  }

  dimension: dpodkit_approved_user_id {
    type: number
    sql: ${TABLE}.DPODKitApprovedUserId ;;
  }

  dimension: dpodproof_required {
    type: string
    sql: ${TABLE}.DPODProofRequired ;;
  }

  dimension: dpodtemplate_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DPODTemplateId ;;
  }

  dimension: dpodtotal_pages {
    type: number
    sql: ${TABLE}.DPODTotalPages ;;
  }

  dimension: dynamic_record_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DynamicRecordId ;;
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

  dimension_group: forecasted {
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
    sql: ${TABLE}.ForecastedDate ;;
  }

  dimension: global_atp {
    type: number
    sql: ${TABLE}.GlobalATP ;;
  }

  dimension: global_qty_on_hand {
    type: number
    sql: ${TABLE}.GlobalQtyOnHand ;;
  }

  dimension: global_qty_on_hold {
    type: number
    sql: ${TABLE}.GlobalQtyOnHold ;;
  }

  dimension: global_qty_reserved {
    type: number
    sql: ${TABLE}.GlobalQtyReserved ;;
  }

  dimension: global_qty_reserved_to_warehouse {
    type: number
    sql: ${TABLE}.GlobalQtyReservedToWarehouse ;;
  }

  dimension: global_safety_stock {
    type: number
    sql: ${TABLE}.GlobalSafetyStock ;;
  }

  dimension: grace_period {
    type: number
    sql: ${TABLE}.GracePeriod ;;
  }

  dimension: hazard_class {
    type: string
    sql: ${TABLE}.HazardClass ;;
  }

  dimension: height {
    type: number
    sql: ${TABLE}.Height ;;
  }

  dimension: in_stock_notification {
    type: string
    sql: ${TABLE}.InStockNotification ;;
  }

  dimension: inventory {
    type: string
    sql: ${TABLE}.Inventory ;;
  }

  dimension: inventory_notes {
    type: string
    sql: ${TABLE}.InventoryNotes ;;
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
    sql: ${TABLE}.LastUpdated ;;
  }

  dimension: lead_time {
    type: number
    sql: ${TABLE}.LeadTime ;;
  }

  dimension: legacy_number {
    type: string
    sql: ${TABLE}.LegacyNumber ;;
  }

  dimension: length {
    type: number
    sql: ${TABLE}.Length ;;
  }

  dimension: lwhunit {
    type: number
    sql: ${TABLE}.LWHUnit ;;
  }

  dimension: manufacturer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ManufacturerId ;;
  }

  dimension: manufacturer_part_no {
    type: string
    sql: ${TABLE}.ManufacturerPartNo ;;
  }

  dimension: max_build_qty {
    type: number
    sql: ${TABLE}.MaxBuildQty ;;
  }

  dimension: min_atpin_stock_notification {
    type: number
    sql: ${TABLE}.MinATPInStockNotification ;;
  }

  dimension: min_build_qty {
    type: number
    sql: ${TABLE}.MinBuildQty ;;
  }

  dimension: obsolete {
    type: string
    sql: ${TABLE}.Obsolete ;;
  }

  dimension: packaging_group {
    type: number
    sql: ${TABLE}.PackagingGroup ;;
  }

  dimension: parent_sku {
    type: number
    sql: ${TABLE}.ParentSku ;;
  }

  dimension: qty_per_package {
    type: number
    sql: ${TABLE}.QtyPerPackage ;;
  }

  dimension: refundable {
    type: string
    sql: ${TABLE}.Refundable ;;
  }

  dimension: reorder_point {
    type: number
    sql: ${TABLE}.ReorderPoint ;;
  }

  dimension: reorder_qty {
    type: number
    sql: ${TABLE}.ReorderQty ;;
  }

  dimension: reorder_rule_id {
    type: number
    sql: ${TABLE}.ReorderRuleId ;;
  }

  dimension: replaceable {
    type: string
    sql: ${TABLE}.Replaceable ;;
  }

  dimension: restockable {
    type: string
    sql: ${TABLE}.Restockable ;;
  }

  dimension: retail_price {
    type: string
    sql: ${TABLE}.RetailPrice ;;
  }

  dimension: returnable {
    type: string
    sql: ${TABLE}.Returnable ;;
  }

  dimension: safety_stock {
    type: number
    sql: ${TABLE}.SafetyStock ;;
  }

  dimension: sale_price {
    type: string
    sql: ${TABLE}.SalePrice ;;
  }

  dimension: secure_shipment {
    type: number
    sql: ${TABLE}.SecureShipment ;;
  }

  dimension: serializable {
    type: string
    sql: ${TABLE}.Serializable ;;
  }

  dimension: size_id {
    type: number
    sql: ${TABLE}.SizeId ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.Sku ;;
  }

  dimension: sku_placement_id {
    type: number
    sql: ${TABLE}.SkuPlacementId ;;
  }

  dimension: sku_type_id {
    type: number
    sql: ${TABLE}.SkuTypeId ;;
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

  dimension_group: status {
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
    sql: ${TABLE}.StatusDate ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  dimension: style_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.StyleId ;;
  }

  dimension: trademark_name {
    type: string
    sql: ${TABLE}.TrademarkName ;;
  }

  dimension: uomid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.UOMId ;;
  }

  dimension: upcnumber {
    type: string
    sql: ${TABLE}.UPCNumber ;;
  }

  dimension: weight {
    type: number
    sql: ${TABLE}.Weight ;;
  }

  dimension: width {
    type: number
    sql: ${TABLE}.Width ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      inventory_id,
      trademark_name,
      manufacturer.manufacturer_id,
      manufacturer.manufacturer_name,
      uom.uomname,
      uom.base_uomid,
      color.color_id,
      color.color_name,
      style.style_id,
      style.style_name,
      dpodtemplate.dpodtemplate_id,
      dpodtemplate.dpodtemplate_name,
      dynamic_record.dynamic_record_id,
      asnline.count,
      autoship_order_line.count,
      autoship_order_line_history.count,
      blanket_order_line.count,
      category_inventory_xref.count,
      disassemble_xref.count,
      dpodkit_line.count,
      files_inventory_xref.count,
      files_xref.count,
      inventory_activity.count,
      inventory_catalog_xref.count,
      inventory_locale.count,
      inventory_provider_xref.count,
      inventory_suppliers_xref.count,
      inventory_sync_history.count,
      inventory_balance_request.count,
      inventory_in_stock_nofication.count,
      inventory_transaction_log.count,
      kit_header.count,
      kit_line.count,
      member_wish_list_item.count,
      order_line.count,
      order_line_detail.count,
      order_line_detail_history.count,
      purchase_order_line.count,
      quantity_reservation_history.count,
      service_order_header.count,
      vw_catalog_bundle_inventory.count,
      vw_inventory_global_atp.count,
      vw_inventory_provider_atp.count,
      vw_inventory_provider_sku.count,
      vw_used_in_kit.count
    ]
  }
}
