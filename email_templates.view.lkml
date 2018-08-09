view: email_templates {
  sql_table_name: dbo.EmailTemplates ;;

  dimension: email_template_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.EmailTemplateId ;;
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

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  dimension: template_description {
    type: string
    sql: ${TABLE}.TemplateDescription ;;
  }

  dimension: template_html {
    type: string
    sql: ${TABLE}.TemplateHTML ;;
  }

  dimension: template_name {
    type: string
    sql: ${TABLE}.TemplateName ;;
  }

  dimension: template_txt {
    type: string
    sql: ${TABLE}.TemplateTXT ;;
  }

  measure: count {
    type: count
    drill_fields: [email_template_id, template_name]
  }
}
