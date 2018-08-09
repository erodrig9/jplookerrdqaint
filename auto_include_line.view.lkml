view: auto_include_line {
  sql_table_name: dbo.AutoIncludeLine ;;

  dimension: auto_include_line_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.AutoIncludeLineId ;;
  }

  dimension: auto_include_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.AutoIncludeHeaderId ;;
  }

  dimension: auto_ship_number {
    type: number
    sql: ${TABLE}.AutoShipNumber ;;
  }

  dimension: catalog_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CatalogId ;;
  }

  dimension: category_id {
    type: number
    sql: ${TABLE}.CategoryId ;;
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

  dimension: custodian_id {
    type: number
    sql: ${TABLE}.CustodianId ;;
  }

  dimension: dynamic_field_layout_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DynamicFieldLayoutId ;;
  }

  dimension: dynamic_field_value {
    type: string
    sql: ${TABLE}.DynamicFieldValue ;;
  }

  dimension: group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.GroupId ;;
  }

  dimension: marketing_source_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MarketingSourceId ;;
  }

  dimension: member_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MemberTypeId ;;
  }

  dimension: sales_territory_id {
    type: number
    sql: ${TABLE}.SalesTerritoryId ;;
  }

  dimension: state_id {
    type: number
    sql: ${TABLE}.StateId ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      auto_include_line_id,
      auto_include_header.auto_include_header_id,
      auto_include_header.auto_include_name,
      catalog.catalog_id,
      catalog.catalog_name,
      groups.group_id,
      groups.group_name,
      dynamic_field_layout.dynamic_field_layout_id,
      member_types.member_type_id,
      member_types.member_type_name,
      marketing_source.marketing_source_id,
      marketing_source.marketing_source_name
    ]
  }
}
