view: sales_relationships_sales_territories_xref {
  sql_table_name: dbo.SalesRelationships_SalesTerritories_XRef ;;

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

  dimension: sales_relationship_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SalesRelationshipId ;;
  }

  dimension: sales_territory_id {
    type: number
    sql: ${TABLE}.SalesTerritoryId ;;
  }

  measure: count {
    type: count
    drill_fields: [sales_relationships.sales_relationship_id, sales_relationships.sales_relationship_name]
  }
}
