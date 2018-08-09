view: dpodtemplate {
  sql_table_name: dbo.DPODTemplate ;;

  dimension: dpodtemplate_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.DPODTemplateId ;;
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

  dimension: dpodtemplate_name {
    type: string
    sql: ${TABLE}.DPODTemplateName ;;
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

  measure: count {
    type: count
    drill_fields: [dpodtemplate_id, dpodtemplate_name, inventory.count]
  }
}
