view: sales_relationships {
  sql_table_name: dbo.SalesRelationships ;;

  dimension: sales_relationship_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.SalesRelationshipId ;;
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

  dimension: sales_relationship_code {
    type: string
    sql: ${TABLE}.SalesRelationshipCode ;;
  }

  dimension: sales_relationship_name {
    type: string
    sql: ${TABLE}.SalesRelationshipName ;;
  }

  dimension: sort_order {
    type: string
    sql: ${TABLE}.SortOrder ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  measure: count {
    type: count
    drill_fields: [sales_relationship_id, sales_relationship_name, members.count, members_sales_territories_xref.count, sales_relationships_sales_territories_xref.count]
  }
}
