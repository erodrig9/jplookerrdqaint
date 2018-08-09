view: bundle_line {
  sql_table_name: dbo.BundleLine ;;

  dimension: bundle_line_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.BundleLineId ;;
  }

  dimension: bundle_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.BundleHeaderId ;;
  }

  dimension: bundle_line_price {
    type: string
    sql: ${TABLE}.BundleLinePrice ;;
  }

  dimension: calculate_atp {
    type: string
    sql: ${TABLE}.CalculateATP ;;
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

  dimension: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
  }

  dimension: release_days {
    type: number
    sql: ${TABLE}.ReleaseDays ;;
  }

  dimension: service_charge {
    type: string
    sql: ${TABLE}.ServiceCharge ;;
  }

  dimension: sort_order {
    type: string
    sql: ${TABLE}.SortOrder ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      bundle_line_id,
      bundle_header.bundle_header_id,
      catalog.catalog_id,
      catalog.catalog_name,
      bundle_line_locale.count,
      vw_catalog_bundle_inventory.count,
      vw_product.count
    ]
  }
}
