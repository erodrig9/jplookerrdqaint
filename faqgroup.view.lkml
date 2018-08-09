view: faqgroup {
  sql_table_name: dbo.FAQGroup ;;

  dimension: faqgroup_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.FAQGroupId ;;
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

  dimension: group_code {
    type: string
    sql: ${TABLE}.GroupCode ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.GroupName ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  measure: count {
    type: count
    drill_fields: [faqgroup_id, group_name, faq.count, faqgroup_locale.count]
  }
}
