view: marketing_campaign_locale {
  sql_table_name: dbo.MarketingCampaign_Locale ;;

  dimension: campaign_description {
    type: string
    sql: ${TABLE}.CampaignDescription ;;
  }

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.CampaignId ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.CampaignName ;;
  }

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.Notes ;;
  }

  measure: count {
    type: count
    drill_fields: [campaign_name]
  }
}
