view: asmheader_asmpromotions_xref {
  sql_table_name: dbo.ASMHeader_ASMPromotions_XREF ;;

  dimension: asmheader_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ASMHeaderId ;;
  }

  dimension: asmpromotion_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ASMPromotionId ;;
  }

  measure: count {
    type: count
    drill_fields: [asmheader.asmheader_id, asmheader.asmname, asmpromotions.asmpromotion_id, asmpromotions.asmpromotion_name]
  }
}
