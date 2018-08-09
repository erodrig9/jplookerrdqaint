view: vw_get_communication_defaults {
  sql_table_name: dbo.VwGetCommunicationDefaults ;;

  dimension: communication_default_name {
    type: string
    sql: ${TABLE}.communicationDefaultName ;;
  }

  dimension: communications_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CommunicationsId ;;
  }

  measure: count {
    type: count
    drill_fields: [communication_default_name, communications.communications_id, communications.notify_name, communications.report_name]
  }
}
