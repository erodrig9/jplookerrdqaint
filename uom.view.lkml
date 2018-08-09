view: uom {
  sql_table_name: dbo.UOM ;;

  dimension: base_uomid {
    primary_key: yes
    type: number
    sql: ${TABLE}.BaseUOMId ;;
  }

  dimension: base_multiplier {
    type: number
    sql: ${TABLE}.BaseMultiplier ;;
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

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  dimension: sort_order {
    type: string
    sql: ${TABLE}.SortOrder ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  dimension: uomid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.UOMId ;;
  }

  dimension: uomname {
    type: string
    sql: ${TABLE}.UOMName ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      base_uomid,
      uomname,
      uom.uomname,
      uom.base_uomid,
      catalog.count,
      inventory.count,
      purchase_order_line.count,
      uom.count,
      uom_locale.count
    ]
  }
}
