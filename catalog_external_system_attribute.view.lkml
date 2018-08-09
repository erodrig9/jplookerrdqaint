view: catalog_external_system_attribute {
  sql_table_name: dbo.Catalog_ExternalSystemAttribute ;;

  dimension: catalog_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.catalogID ;;
  }

  dimension: external_system_attribute_code {
    type: string
    sql: ${TABLE}.ExternalSystemAttributeCode ;;
  }

  dimension: external_system_code {
    type: string
    sql: ${TABLE}.ExternalSystemCode ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.projectID ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [catalog.catalog_id, catalog.catalog_name]
  }
}
