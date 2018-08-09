view: selling_rules_asmheader_xref {
  sql_table_name: dbo.SellingRules_ASMHeader_XREF ;;

  dimension: asmheader_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ASMHeaderId ;;
  }

  dimension: selling_rule_header_id {
    type: number
    sql: ${TABLE}.SellingRuleHeaderId ;;
  }

  measure: count {
    type: count
    drill_fields: [asmheader.asmheader_id, asmheader.asmname]
  }
}
