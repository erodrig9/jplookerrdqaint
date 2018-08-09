view: price_lists {
  sql_table_name: dbo.PriceLists ;;

  dimension: price_list_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.PriceListId ;;
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

  dimension: default_list {
    type: string
    sql: ${TABLE}.DefaultList ;;
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

  dimension: price_list_code {
    type: string
    sql: ${TABLE}.PriceListCode ;;
  }

  dimension: price_list_description {
    type: string
    sql: ${TABLE}.PriceListDescription ;;
  }

  dimension: price_list_name {
    type: string
    sql: ${TABLE}.PriceListName ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
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

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      price_list_id,
      price_list_name,
      members.count,
      order_line.count,
      price_list_catalog_xref.count,
      vw_catalog_bundle_inventory.count
    ]
  }
}
