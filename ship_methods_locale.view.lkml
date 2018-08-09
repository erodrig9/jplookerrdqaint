view: ship_methods_locale {
  sql_table_name: dbo.ShipMethods_Locale ;;

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}.DisplayName ;;
  }

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
  }

  dimension: ship_method_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ShipMethodId ;;
  }

  dimension: ship_method_name {
    type: string
    sql: ${TABLE}.ShipMethodName ;;
  }

  measure: count {
    type: count
    drill_fields: [ship_method_name, display_name, ship_methods.ship_method_id, ship_methods.ship_method_name, ship_methods.display_name]
  }
}
