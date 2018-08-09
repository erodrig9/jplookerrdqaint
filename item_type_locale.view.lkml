view: item_type_locale {
  sql_table_name: dbo.ItemType_Locale ;;

  dimension: item_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ItemTypeId ;;
  }

  dimension: item_type_name {
    type: string
    sql: ${TABLE}.ItemTypeName ;;
  }

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
  }

  measure: count {
    type: count
    drill_fields: [item_type_name, item_type.item_type_id, item_type.item_type_name]
  }
}
