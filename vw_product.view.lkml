view: vw_product {
  sql_table_name: dbo.VwProduct ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
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

  dimension: catalog_inventory_id {
    type: number
    sql: ${TABLE}.catalogInventoryID ;;
  }

  dimension: icx_catalog_id {
    type: number
    sql: ${TABLE}.icxCatalogID ;;
  }

  dimension: icx_inventory_id {
    type: number
    sql: ${TABLE}.icxInventoryID ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.projectID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, catalog.catalog_id, catalog.catalog_name, bundle_header.bundle_header_id, bundle_line.bundle_line_id]
  }
}
