view: categories {
  sql_table_name: dbo.Categories ;;

  dimension: category_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.CategoryId ;;
  }

  dimension: category_code {
    type: string
    sql: ${TABLE}.CategoryCode ;;
  }

  dimension: category_name {
    type: string
    sql: ${TABLE}.CategoryName ;;
  }

  dimension: category_tree {
    type: string
    sql: ${TABLE}.CategoryTree ;;
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

  dimension: custodian_user_id {
    type: number
    sql: ${TABLE}.Custodian_UserId ;;
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

  dimension: front_end_display {
    type: string
    sql: ${TABLE}.FrontEndDisplay ;;
  }

  dimension: is_inventory {
    type: number
    sql: ${TABLE}.IsInventory ;;
  }

  dimension_group: last_updated {
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
    sql: ${TABLE}.LastUpdated ;;
  }

  dimension: long_description {
    type: string
    sql: ${TABLE}.LongDescription ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.Notes ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.Priority ;;
  }

  dimension: short_description {
    type: string
    sql: ${TABLE}.ShortDescription ;;
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
    drill_fields: [category_id, category_name, dynamic_record.dynamic_record_id]
  }
}
