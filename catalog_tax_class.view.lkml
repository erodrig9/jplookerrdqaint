view: catalog_tax_class {
  sql_table_name: dbo.CatalogTaxClass ;;

  dimension: catalog_tax_class_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.CatalogTaxClassId ;;
  }

  dimension: catalog_tax_class_code {
    type: string
    sql: ${TABLE}.CatalogTaxClassCode ;;
  }

  dimension: catalog_tax_class_description {
    type: string
    sql: ${TABLE}.CatalogTaxClassDescription ;;
  }

  dimension: catalog_tax_class_name {
    type: string
    sql: ${TABLE}.CatalogTaxClassName ;;
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

  dimension: is_default {
    type: string
    sql: ${TABLE}.IsDefault ;;
  }

  dimension: is_shipping_handling {
    type: string
    sql: ${TABLE}.IsShippingHandling ;;
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

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  measure: count {
    type: count
    drill_fields: [catalog_tax_class_id, catalog_tax_class_name, catalog.count]
  }
}
