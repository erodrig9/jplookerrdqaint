view: rssfeed_groups {
  sql_table_name: dbo.RSSFeedGroups ;;

  dimension: rssfeed_group_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.RSSFeedGroupId ;;
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

  dimension: rssfeed_group_code {
    type: string
    sql: ${TABLE}.RSSFeedGroupCode ;;
  }

  dimension: rssfeed_group_description {
    type: string
    sql: ${TABLE}.RSSFeedGroupDescription ;;
  }

  dimension: rssfeed_group_name {
    type: string
    sql: ${TABLE}.RSSFeedGroupName ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  measure: count {
    type: count
    drill_fields: [rssfeed_group_id, rssfeed_group_name, rssfeeds.count]
  }
}
