view: asmpromotions {
  sql_table_name: dbo.ASMPromotions ;;

  dimension: asmpromotion_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ASMPromotionId ;;
  }

  dimension: asmpromotion_code {
    type: string
    sql: ${TABLE}.ASMPromotionCode ;;
  }

  dimension: asmpromotion_description {
    type: string
    sql: ${TABLE}.ASMPromotionDescription ;;
  }

  dimension: asmpromotion_name {
    type: string
    sql: ${TABLE}.ASMPromotionName ;;
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
    drill_fields: [asmpromotion_id, asmpromotion_name, asmheader_asmpromotions_xref.count]
  }
}
