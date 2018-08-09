view: price_list_catalog_xref {
  sql_table_name: dbo.PriceList_Catalog_XRef ;;

  dimension: price_list_catalog_xref_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.PriceList_Catalog_XRefId ;;
  }

  dimension: catalog_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CatalogId ;;
  }

  dimension: change_value {
    type: string
    sql: ${TABLE}.ChangeValue ;;
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

  dimension_group: end {
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
    sql: ${TABLE}.EndDate ;;
  }

  dimension: end_range {
    type: number
    sql: ${TABLE}.EndRange ;;
  }

  dimension: locale_code {
    type: string
    sql: ${TABLE}.localeCode ;;
  }

  dimension: price_change_type_id {
    type: number
    sql: ${TABLE}.PriceChangeTypeId ;;
  }

  dimension: price_list_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.PriceListId ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.StartDate ;;
  }

  dimension: start_range {
    type: number
    sql: ${TABLE}.StartRange ;;
  }

  measure: count {
    type: count
    drill_fields: [price_list_catalog_xref_id, price_lists.price_list_id, price_lists.price_list_name, catalog.catalog_id, catalog.catalog_name]
  }
}
