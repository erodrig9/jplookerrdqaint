view: alternate_deliveries {
  sql_table_name: dbo.AlternateDeliveries ;;

  dimension: alternate_delivery_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.AlternateDeliveryId ;;
  }

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

  dimension: delivery_method_id {
    type: number
    sql: ${TABLE}.DeliveryMethodId ;;
  }

  dimension: edge_user_id {
    type: number
    sql: ${TABLE}.Edge_UserId ;;
  }

  dimension: email_to {
    type: string
    sql: ${TABLE}.Email_To ;;
  }

  dimension: file_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.FileId ;;
  }

  dimension: member_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MemberId ;;
  }

  dimension: ordered_by_member_id {
    type: number
    sql: ${TABLE}.OrderedBy_MemberId ;;
  }

  dimension: source_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SourceId ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      alternate_delivery_id,
      catalog.catalog_id,
      catalog.catalog_name,
      members.member_id,
      members.username,
      source.source_id,
      source.source_name,
      files.file_id,
      files.filename,
      files.original_file_name
    ]
  }
}
