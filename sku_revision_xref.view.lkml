view: sku_revision_xref {
  sql_table_name: dbo.SkuRevision_XRef ;;

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

  dimension: original_inventory_id {
    type: number
    sql: ${TABLE}.OriginalInventoryId ;;
  }

  dimension: revision_inventory_id {
    type: number
    sql: ${TABLE}.RevisionInventoryId ;;
  }

  dimension: revision_method_id {
    type: number
    sql: ${TABLE}.RevisionMethodId ;;
  }

  dimension: sku_replacement_option_id {
    type: number
    sql: ${TABLE}.SkuReplacementOptionId ;;
  }

  dimension: sku_revision_id {
    type: number
    sql: ${TABLE}.SkuRevisionId ;;
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

  dimension: ultimate_parent_id {
    type: number
    sql: ${TABLE}.UltimateParentId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
