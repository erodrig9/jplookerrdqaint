view: dynamic_record {
  sql_table_name: dbo.DynamicRecord ;;

  dimension: dynamic_record_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.DynamicRecordId ;;
  }

  dimension: always_one {
    type: string
    sql: ${TABLE}.AlwaysOne ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      dynamic_record_id,
      __lk_orders.count,
      asnheader.count,
      blanket_order_header.count,
      blanket_order_line.count,
      budget_center.count,
      calendar_members_xref.count,
      catalog.count,
      categories.count,
      distribution_lists.count,
      dynamic_field.count,
      groups.count,
      inventory.count,
      manufacturer.count,
      marketing_campaign.count,
      marketing_offer.count,
      marketing_segment.count,
      marketing_source.count,
      members.count,
      members_registered_product_xref.count,
      member_types.count,
      order_header.count,
      order_line.count,
      order_line_detail.count,
      order_line_detail_history.count,
      providers.count,
      ship_methods.count,
      suppliers.count
    ]
  }
}
