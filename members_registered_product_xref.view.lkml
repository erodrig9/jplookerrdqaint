view: members_registered_product_xref {
  sql_table_name: dbo.Members_RegisteredProduct_XRef ;;

  dimension: catalog_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CatalogId ;;
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

  dimension: dynamic_record_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DynamicRecordId ;;
  }

  dimension: inventory_serial_id {
    type: number
    sql: ${TABLE}.InventorySerialId ;;
  }

  dimension: member_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MemberId ;;
  }

  dimension: order_line_detail_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderLineDetailId ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.Product ;;
  }

  dimension_group: purchase {
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
    sql: ${TABLE}.PurchaseDate ;;
  }

  dimension: registered_product_id {
    type: number
    sql: ${TABLE}.RegisteredProductId ;;
  }

  dimension: registered_product_source_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.RegisteredProductSourceId ;;
  }

  dimension: registration_number {
    type: string
    sql: ${TABLE}.RegistrationNumber ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  dimension_group: ultimate_exp {
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
    sql: ${TABLE}.UltimateExpDate ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      members.member_id,
      members.username,
      catalog.catalog_id,
      catalog.catalog_name,
      dynamic_record.dynamic_record_id,
      registered_product_sources.registered_product_source_id,
      registered_product_sources.registered_product_source_name,
      order_line_detail.order_line_detail_id
    ]
  }
}
