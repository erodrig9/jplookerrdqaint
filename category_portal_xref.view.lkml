view: category_portal_xref {
  sql_table_name: dbo.Category_Portal_XRef ;;

  dimension: category_id {
    type: number
    sql: ${TABLE}.CategoryId ;;
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

  dimension: portal_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.PortalId ;;
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

  measure: count {
    type: count
    drill_fields: [portals.portal_id, portals.portal_name]
  }
}
