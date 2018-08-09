view: vw_catalog_bundle_inventory {
  sql_table_name: dbo.VwCatalogBundleInventory ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: adjusted_price {
    type: number
    sql: ${TABLE}.adjustedPrice ;;
  }

  dimension: adjustment {
    type: number
    sql: ${TABLE}.adjustment ;;
  }

  dimension: base_price {
    type: number
    sql: ${TABLE}.basePrice ;;
  }

  dimension: bundle_catalog_id {
    type: number
    sql: ${TABLE}.bundleCatalogID ;;
  }

  dimension: bundle_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.bundleHeaderID ;;
  }

  dimension: bundle_line_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.bundleLineID ;;
  }

  dimension: catalog_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.catalogID ;;
  }

  dimension: effective_price {
    type: number
    sql: ${TABLE}.effectivePrice ;;
  }

  dimension: inventory_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.inventoryID ;;
  }

  dimension: ip_used {
    type: number
    sql: ${TABLE}.ipUsed ;;
  }

  dimension: locale_id {
    type: number
    sql: ${TABLE}.localeID ;;
  }

  dimension: price_list_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.priceListID ;;
  }

  dimension: pricing_catalog_id {
    type: number
    sql: ${TABLE}.pricingCatalogID ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.projectID ;;
  }

  dimension: tax {
    type: number
    sql: ${TABLE}.tax ;;
  }

  dimension: x_ref_catalog_id {
    type: number
    sql: ${TABLE}.xRefCatalogID ;;
  }

  dimension: x_ref_price_list_id {
    type: number
    sql: ${TABLE}.xRefPriceListID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      catalog.catalog_id,
      catalog.catalog_name,
      inventory.inventory_id,
      inventory.trademark_name,
      price_lists.price_list_id,
      price_lists.price_list_name,
      bundle_header.bundle_header_id,
      bundle_line.bundle_line_id
    ]
  }
}
