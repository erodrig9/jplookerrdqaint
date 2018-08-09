view: message_types_xmlsearch_xref {
  sql_table_name: dbo.MessageTypes_XMLSearch_XRef ;;

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

  dimension: message_type_id {
    type: number
    sql: ${TABLE}.MessageTypeId ;;
  }

  dimension: message_type_name {
    type: string
    sql: ${TABLE}.MessageTypeName ;;
  }

  dimension: search_tag_id {
    type: number
    sql: ${TABLE}.SearchTagId ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  dimension: xmltag {
    type: string
    sql: ${TABLE}.XMLTag ;;
  }

  measure: count {
    type: count
    drill_fields: [message_type_name]
  }
}
