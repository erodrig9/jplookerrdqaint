view: distributions {
  sql_table_name: dbo.Distributions ;;

  dimension: distribution_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.DistributionId ;;
  }

  dimension: carrier {
    type: string
    sql: ${TABLE}.Carrier ;;
  }

  dimension: charge_shipping_to {
    type: string
    sql: ${TABLE}.ChargeShippingTo ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.Comments ;;
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

  dimension: estimated_count {
    type: number
    sql: ${TABLE}.EstimatedCount ;;
  }

  dimension: instructions {
    type: string
    sql: ${TABLE}.Instructions ;;
  }

  dimension: job_description {
    type: string
    sql: ${TABLE}.JobDescription ;;
  }

  dimension: job_name {
    type: string
    sql: ${TABLE}.JobName ;;
  }

  dimension: job_number {
    type: string
    sql: ${TABLE}.JobNumber ;;
  }

  dimension: job_quote {
    type: string
    sql: ${TABLE}.JobQuote ;;
  }

  dimension: last_drop_date {
    type: string
    sql: ${TABLE}.LastDropDate ;;
  }

  dimension: listcomments {
    type: string
    sql: ${TABLE}.Listcomments ;;
  }

  dimension: packaging {
    type: string
    sql: ${TABLE}.Packaging ;;
  }

  dimension: quoted_by {
    type: string
    sql: ${TABLE}.QuotedBy ;;
  }

  dimension: shipmethod {
    type: string
    sql: ${TABLE}.Shipmethod ;;
  }

  dimension: start_drop_date {
    type: string
    sql: ${TABLE}.StartDropDate ;;
  }

  measure: count {
    type: count
    drill_fields: [distribution_id, job_name, distribution_files.count, distribution_lists.count, order_header.count]
  }
}
