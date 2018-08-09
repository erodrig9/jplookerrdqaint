view: vw_catalog_global_atp {
  sql_table_name: dbo.VwCatalogGlobalATP ;;

  dimension: catalog_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.catalogID ;;
  }

  dimension: global_atp {
    type: number
    sql: ${TABLE}.globalATP ;;
  }

  dimension: global_qty_on_hand {
    type: number
    sql: ${TABLE}.globalQtyOnHand ;;
  }

  dimension: global_qty_on_hold {
    type: number
    sql: ${TABLE}.globalQtyOnHold ;;
  }

  dimension: global_qty_reserved {
    type: number
    sql: ${TABLE}.globalQtyReserved ;;
  }

  measure: count {
    type: count
    drill_fields: [catalog.catalog_id, catalog.catalog_name]
  }
}
