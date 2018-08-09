view: member_type_ship_methods_xref {
  sql_table_name: dbo.MemberType_ShipMethods_XRef ;;

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

  dimension: member_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MemberTypeId ;;
  }

  dimension: member_type_ship_method_xref_id {
    type: number
    sql: ${TABLE}.MemberTypeShipMethodXRefId ;;
  }

  dimension: ship_method_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ShipMethodId ;;
  }

  measure: count {
    type: count
    drill_fields: [member_types.member_type_id, member_types.member_type_name, ship_methods.ship_method_id, ship_methods.ship_method_name, ship_methods.display_name]
  }
}
