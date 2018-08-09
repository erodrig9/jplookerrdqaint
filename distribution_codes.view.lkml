view: distribution_codes {
  sql_table_name: dbo.DistributionCodes ;;

  dimension: distribution_code_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.DistributionCodeId ;;
  }

  dimension: distribution_code {
    type: string
    sql: ${TABLE}.DistributionCode ;;
  }

  dimension: distribution_name {
    type: string
    sql: ${TABLE}.DistributionName ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  dimension: sort_order {
    type: string
    sql: ${TABLE}.SortOrder ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  measure: count {
    type: count
    drill_fields: [distribution_code_id, distribution_name, distribution_codes_members_xref.count]
  }
}
