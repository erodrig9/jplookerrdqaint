view: adt_selling_rules_catalog_xref {
  sql_table_name: dbo.adt_SellingRules_Catalog_XRef ;;

  dimension: catalog_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CatalogId ;;
  }

  dimension_group: change {
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
    sql: ${TABLE}.ChangeDate ;;
  }

  dimension: dbuser {
    type: string
    sql: ${TABLE}.DBUser ;;
  }

  dimension: dmlaction {
    type: string
    sql: ${TABLE}.DMLAction ;;
  }

  dimension: selling_rule_header_id {
    type: number
    sql: ${TABLE}.SellingRuleHeaderId ;;
  }

  measure: count {
    type: count
    drill_fields: [catalog.catalog_id, catalog.catalog_name]
  }
}
