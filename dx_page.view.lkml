view: dx_page {
  sql_table_name: dbo.DxPage ;;

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

  dimension: delete_flag {
    type: string
    sql: ${TABLE}.DeleteFlag ;;
  }

  dimension: deleteable {
    type: string
    sql: ${TABLE}.Deleteable ;;
  }

  dimension_group: last_update {
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
    sql: ${TABLE}.LastUpdate ;;
  }

  dimension: live {
    type: string
    sql: ${TABLE}.Live ;;
  }

  dimension: live_page_id {
    type: number
    sql: ${TABLE}.LivePageId ;;
  }

  dimension: modified {
    type: string
    sql: ${TABLE}.Modified ;;
  }

  dimension: modifying_user_id {
    type: number
    sql: ${TABLE}.ModifyingUserId ;;
  }

  dimension: page_code {
    type: string
    sql: ${TABLE}.PageCode ;;
  }

  dimension: page_id {
    type: number
    sql: ${TABLE}.PageId ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  dimension: review_flag {
    type: string
    sql: ${TABLE}.ReviewFlag ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.Title ;;
  }

  dimension: tree_order {
    type: string
    sql: ${TABLE}.TreeOrder ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
