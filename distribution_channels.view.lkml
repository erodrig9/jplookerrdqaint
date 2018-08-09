view: distribution_channels {
  sql_table_name: dbo.DistributionChannels ;;

  dimension: distribution_channel_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.DistributionChannelId ;;
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

  dimension: distribution_channel_code {
    type: string
    sql: ${TABLE}.DistributionChannelCode ;;
  }

  dimension: distribution_channel_description {
    type: string
    sql: ${TABLE}.DistributionChannelDescription ;;
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
    drill_fields: [distribution_channel_id, distribution_channel_member_types_xref.count, sales_territories.count]
  }
}
