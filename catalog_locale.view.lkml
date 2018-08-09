view: catalog_locale {
  sql_table_name: dbo.Catalog_Locale ;;

  dimension: catalog_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CatalogId ;;
  }

  dimension: catalog_item {
    type: string
    sql: ${TABLE}.CatalogItem ;;
  }

  dimension: catalog_name {
    type: string
    sql: ${TABLE}.CatalogName ;;
  }

  dimension: catalog_notes {
    type: string
    sql: ${TABLE}.CatalogNotes ;;
  }

  dimension: duty_tax {
    type: string
    sql: ${TABLE}.DutyTax ;;
  }

  dimension: handling_amount {
    type: string
    sql: ${TABLE}.HandlingAmount ;;
  }

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
  }

  dimension: long_description {
    type: string
    sql: ${TABLE}.LongDescription ;;
  }

  dimension: min_retail_price {
    type: string
    sql: ${TABLE}.MinRetailPrice ;;
  }

  dimension: retail_price {
    type: string
    sql: ${TABLE}.RetailPrice ;;
  }

  dimension: shipping_amount {
    type: string
    sql: ${TABLE}.ShippingAmount ;;
  }

  dimension: short_description {
    type: string
    sql: ${TABLE}.ShortDescription ;;
  }

  measure: count {
    type: count
    drill_fields: [catalog_name, catalog.catalog_id, catalog.catalog_name]
  }
}
