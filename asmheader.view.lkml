view: asmheader {
  sql_table_name: dbo.ASMHeader ;;

  dimension: asmheader_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ASMHeaderId ;;
  }

  dimension: asmcode {
    type: string
    sql: ${TABLE}.ASMCode ;;
  }

  dimension: asmdescription {
    type: string
    sql: ${TABLE}.ASMDescription ;;
  }

  dimension: asmname {
    type: string
    sql: ${TABLE}.ASMName ;;
  }

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

  dimension_group: end {
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
    sql: ${TABLE}.EndDate ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.StartDate ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  measure: count {
    type: count
    drill_fields: [asmheader_id, asmname, asmheader_asmpromotions_xref.count, asmline.count, selling_rules_asmheader_xref.count]
  }
}
