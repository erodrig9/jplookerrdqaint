view: auto_include_header {
  sql_table_name: dbo.AutoIncludeHeader ;;

  dimension: auto_include_header_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.AutoIncludeHeaderId ;;
  }

  dimension: allow_back_order {
    type: string
    sql: ${TABLE}.AllowBackOrder ;;
  }

  dimension: allow_duplication {
    type: string
    sql: ${TABLE}.AllowDuplication ;;
  }

  dimension: and_rule {
    type: string
    sql: ${TABLE}.AndRule ;;
  }

  dimension: auto_include_name {
    type: string
    sql: ${TABLE}.AutoIncludeName ;;
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

  dimension: include_only_if_auto_ship {
    type: string
    sql: ${TABLE}.IncludeOnlyIfAutoShip ;;
  }

  dimension: include_only_if_not_ordered {
    type: string
    sql: ${TABLE}.IncludeOnlyIfNotOrdered ;;
  }

  dimension: line_and_rule {
    type: string
    sql: ${TABLE}.LineAndRule ;;
  }

  dimension: line_or_rule {
    type: string
    sql: ${TABLE}.LineOrRule ;;
  }

  dimension: or_rule {
    type: string
    sql: ${TABLE}.OrRule ;;
  }

  dimension: per_item {
    type: string
    sql: ${TABLE}.PerItem ;;
  }

  dimension: per_order {
    type: string
    sql: ${TABLE}.PerOrder ;;
  }

  dimension: percentage {
    type: number
    sql: ${TABLE}.Percentage ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
  }

  dimension: ship_set_catalog_line {
    type: string
    sql: ${TABLE}.ShipSetCatalogLine ;;
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

  dimension: update_promo_shipping_tax {
    type: string
    sql: ${TABLE}.UpdatePromoShippingTax ;;
  }

  measure: count {
    type: count
    drill_fields: [auto_include_header_id, auto_include_name, auto_include_line.count, catalog_auto_include_xref.count]
  }
}
