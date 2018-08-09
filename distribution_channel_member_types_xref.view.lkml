view: distribution_channel_member_types_xref {
  sql_table_name: dbo.DistributionChannel_MemberTypes_XRef ;;

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

  dimension: distribution_channel_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DistributionChannelId ;;
  }

  dimension: member_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MemberTypeId ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  measure: count {
    type: count
    drill_fields: [distribution_channels.distribution_channel_id, member_types.member_type_id, member_types.member_type_name]
  }
}
