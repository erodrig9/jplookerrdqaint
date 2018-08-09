view: members_sales_territories_xref {
  sql_table_name: dbo.Members_SalesTerritories_XRef ;;

  dimension: members_sales_territories_xref_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Members_SalesTerritories_XRefId ;;
  }

  dimension: address_id {
    type: number
    sql: ${TABLE}.AddressId ;;
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

  dimension: member_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MemberId ;;
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
    drill_fields: [members_sales_territories_xref_id, members.member_id, members.username, sales_relationships.sales_relationship_id, sales_relationships.sales_relationship_name]
  }
}
