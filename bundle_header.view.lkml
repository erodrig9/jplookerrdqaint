view: bundle_header {
  sql_table_name: dbo.BundleHeader ;;

  dimension: bundle_header_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.BundleHeaderId ;;
  }

  dimension: bundle_as_category {
    type: string
    sql: ${TABLE}.BundleAsCategory ;;
  }

  dimension: catalog_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CatalogId ;;
  }

  dimension_group: date_created {
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
    sql: ${TABLE}.DateCreated ;;
  }

  dimension: duplicate_components {
    type: string
    sql: ${TABLE}.DuplicateComponents ;;
  }

  dimension: header_complete {
    type: string
    sql: ${TABLE}.HeaderComplete ;;
  }

  dimension_group: last_modified {
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
    sql: ${TABLE}.LastModified ;;
  }

  dimension: order_charge_rule_id {
    type: number
    sql: ${TABLE}.OrderChargeRuleId ;;
  }

  dimension: ship_at_once {
    type: string
    sql: ${TABLE}.ShipAtOnce ;;
  }

  dimension: shipment_method_id {
    type: number
    sql: ${TABLE}.ShipmentMethodId ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      bundle_header_id,
      catalog.catalog_id,
      catalog.catalog_name,
      bundle_line.count,
      vw_catalog_bundle_inventory.count,
      vw_product.count
    ]
  }
}
