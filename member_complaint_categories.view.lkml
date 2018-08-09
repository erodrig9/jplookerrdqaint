view: member_complaint_categories {
  sql_table_name: dbo.MemberComplaintCategories ;;

  dimension: member_complaint_category_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.MemberComplaintCategoryId ;;
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

  dimension: member_complaint_category_code {
    type: string
    sql: ${TABLE}.MemberComplaintCategoryCode ;;
  }

  dimension: member_complaint_category_description {
    type: string
    sql: ${TABLE}.MemberComplaintCategoryDescription ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  measure: count {
    type: count
    drill_fields: [member_complaint_category_id]
  }
}
