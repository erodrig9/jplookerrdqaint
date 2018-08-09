view: distribution_files {
  sql_table_name: dbo.DistributionFiles ;;

  dimension: distribution_files_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.DistributionFilesID ;;
  }

  dimension: client_file {
    type: string
    sql: ${TABLE}.ClientFile ;;
  }

  dimension: distribution_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DistributionId ;;
  }

  dimension: server_file {
    type: string
    sql: ${TABLE}.ServerFile ;;
  }

  dimension_group: transferred {
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
    sql: ${TABLE}.TransferredDate ;;
  }

  dimension: transferred_to_list {
    type: string
    sql: ${TABLE}.TransferredToList ;;
  }

  measure: count {
    type: count
    drill_fields: [distribution_files_id, distributions.distribution_id, distributions.job_name]
  }
}
