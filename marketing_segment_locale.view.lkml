view: marketing_segment_locale {
  sql_table_name: dbo.MarketingSegment_Locale ;;

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.Notes ;;
  }

  dimension: segment_description {
    type: string
    sql: ${TABLE}.SegmentDescription ;;
  }

  dimension: segment_id {
    type: number
    sql: ${TABLE}.SegmentId ;;
  }

  dimension: segment_name {
    type: string
    sql: ${TABLE}.SegmentName ;;
  }

  measure: count {
    type: count
    drill_fields: [segment_name]
  }
}
