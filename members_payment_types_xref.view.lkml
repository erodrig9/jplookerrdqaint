view: members_payment_types_xref {
  sql_table_name: dbo.Members_PaymentTypes_XRef ;;

  dimension: member_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MemberId ;;
  }

  dimension: payment_type_id {
    type: number
    sql: ${TABLE}.PaymentTypeId ;;
  }

  measure: count {
    type: count
    drill_fields: [members.member_id, members.username]
  }
}
