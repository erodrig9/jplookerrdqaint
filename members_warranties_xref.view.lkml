view: members_warranties_xref {
  sql_table_name: dbo.Members_Warranties_XRef ;;

  dimension: catalog_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CatalogId ;;
  }

  dimension_group: effective {
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
    sql: ${TABLE}.EffectiveDate ;;
  }

  dimension_group: exp {
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
    sql: ${TABLE}.ExpDate ;;
  }

  dimension: registered_product_id {
    type: number
    sql: ${TABLE}.RegisteredProductId ;;
  }

  dimension: warranty_id {
    type: number
    sql: ${TABLE}.WarrantyId ;;
  }

  measure: count {
    type: count
    drill_fields: [catalog.catalog_id, catalog.catalog_name]
  }
}
