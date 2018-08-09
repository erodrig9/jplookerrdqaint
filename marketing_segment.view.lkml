view: marketing_segment {
  sql_table_name: dbo.MarketingSegment ;;

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

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  dimension: segment_code {
    type: string
    sql: ${TABLE}.SegmentCode ;;
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
    drill_fields: [segment_name, dynamic_record.dynamic_record_id]
  }
}
