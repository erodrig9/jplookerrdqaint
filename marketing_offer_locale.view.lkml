view: marketing_offer_locale {
  sql_table_name: dbo.MarketingOffer_Locale ;;

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.Notes ;;
  }

  dimension: offer_description {
    type: string
    sql: ${TABLE}.OfferDescription ;;
  }

  dimension: offer_id {
    type: number
    sql: ${TABLE}.OfferId ;;
  }

  dimension: offer_name {
    type: string
    sql: ${TABLE}.OfferName ;;
  }

  measure: count {
    type: count
    drill_fields: [offer_name]
  }
}
