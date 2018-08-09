view: marketing_offer {
  sql_table_name: dbo.MarketingOffer ;;

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

  dimension: dynamic_record_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DynamicRecordId ;;
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

  dimension: notes {
    type: string
    sql: ${TABLE}.Notes ;;
  }

  dimension: offer_code {
    type: string
    sql: ${TABLE}.OfferCode ;;
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

  dimension: order_source_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderSourceId ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
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
    drill_fields: [offer_name, order_sources.order_source_id, order_sources.order_source_name, dynamic_record.dynamic_record_id]
  }
}
