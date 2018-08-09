view: communications_member_types_xref {
  sql_table_name: dbo.Communications_MemberTypes_XRef ;;

  dimension: communications_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CommunicationsId ;;
  }

  dimension: member_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MemberTypeId ;;
  }

  measure: count {
    type: count
    drill_fields: [communications.communications_id, communications.notify_name, communications.report_name, member_types.member_type_id, member_types.member_type_name]
  }
}
