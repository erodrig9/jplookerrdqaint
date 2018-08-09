view: faq {
  sql_table_name: dbo.FAQ ;;

  dimension: faqid {
    primary_key: yes
    type: number
    sql: ${TABLE}.FAQId ;;
  }

  dimension: answer {
    type: string
    sql: ${TABLE}.Answer ;;
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

  dimension: faqgroup_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.FAQGroupId ;;
  }

  dimension: is_displayed {
    type: string
    sql: ${TABLE}.IsDisplayed ;;
  }

  dimension_group: modify {
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
    sql: ${TABLE}.ModifyDate ;;
  }

  dimension: order_by {
    type: number
    sql: ${TABLE}.OrderBy ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  dimension: question {
    type: string
    sql: ${TABLE}.Question ;;
  }

  measure: count {
    type: count
    drill_fields: [faqid, faqgroup.faqgroup_id, faqgroup.group_name, faq_locale.count]
  }
}
