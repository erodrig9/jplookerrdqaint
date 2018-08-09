view: portals {
  sql_table_name: dbo.Portals ;;

  dimension: portal_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.PortalId ;;
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

  dimension: ipfilter_rule_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.IPFilterRuleId ;;
  }

  dimension: portal_code {
    type: string
    sql: ${TABLE}.PortalCode ;;
  }

  dimension: portal_description {
    type: string
    sql: ${TABLE}.PortalDescription ;;
  }

  dimension: portal_name {
    type: string
    sql: ${TABLE}.PortalName ;;
  }

  dimension: portal_url {
    type: string
    sql: ${TABLE}.PortalUrl ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  dimension: redirect_url {
    type: string
    sql: ${TABLE}.RedirectURL ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  dimension: use_ipfilter {
    type: string
    sql: ${TABLE}.UseIPFilter ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      portal_id,
      portal_name,
      ipfilter_rule.ipfilter_rule_id,
      ipfilter_rule.ipfilter_rule_name,
      catalog_portal_xref.count,
      category_portal_xref.count
    ]
  }
}
