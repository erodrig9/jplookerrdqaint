view: address_types {
  sql_table_name: dbo.AddressTypes ;;

  dimension: address_type_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.AddressTypeId ;;
  }

  dimension: address_type_code {
    type: string
    sql: ${TABLE}.AddressTypeCode ;;
  }

  dimension: address_type_name {
    type: string
    sql: ${TABLE}.AddressTypeName ;;
  }

  dimension: deliverable {
    type: string
    sql: ${TABLE}.Deliverable ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  dimension: sort_order {
    type: string
    sql: ${TABLE}.SortOrder ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  measure: count {
    type: count
    drill_fields: [address_type_id, address_type_name, addresses.count, address_types_locale.count, reassignment_rules.count]
  }
}
