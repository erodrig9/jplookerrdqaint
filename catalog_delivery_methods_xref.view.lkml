view: catalog_delivery_methods_xref {
  sql_table_name: dbo.Catalog_DeliveryMethods_XRef ;;

  dimension: catalog_delivery_methods_xref_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Catalog_DeliveryMethods_XRefId ;;
  }

  dimension: catalog_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CatalogId ;;
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

  dimension: delivery_method_id {
    type: number
    sql: ${TABLE}.DeliveryMethodId ;;
  }

  measure: count {
    type: count
    drill_fields: [catalog_delivery_methods_xref_id, catalog.catalog_id, catalog.catalog_name]
  }
}
