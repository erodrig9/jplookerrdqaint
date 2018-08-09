view: marketing_campaign_members_xref {
  sql_table_name: dbo.MarketingCampaign_Members_XRef ;;

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.CampaignId ;;
  }

  dimension: campaign_member_xref_id {
    type: number
    sql: ${TABLE}.CampaignMemberXrefId ;;
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

  dimension: member_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MemberId ;;
  }

  measure: count {
    type: count
    drill_fields: [members.member_id, members.username]
  }
}
