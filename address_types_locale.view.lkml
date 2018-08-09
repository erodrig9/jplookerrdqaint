view: address_types_locale {
  sql_table_name: dbo.AddressTypes_Locale ;;

  dimension: address_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.AddressTypeId ;;
  }

  dimension: address_type_name {
    type: string
    sql: ${TABLE}.AddressTypeName ;;
  }

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
  }

  measure: count {
    type: count
    drill_fields: [address_type_name, address_types.address_type_id, address_types.address_type_name]
  }
}
