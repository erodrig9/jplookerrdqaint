view: rssfeeds {
  sql_table_name: dbo.RSSFeeds ;;

  dimension: rssfeed_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.RSSFeedId ;;
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

  dimension: rssfeed_code {
    type: string
    sql: ${TABLE}.RSSFeedCode ;;
  }

  dimension: rssfeed_description {
    type: string
    sql: ${TABLE}.RSSFeedDescription ;;
  }

  dimension: rssfeed_group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.RSSFeedGroupId ;;
  }

  dimension: rssfeed_title {
    type: string
    sql: ${TABLE}.RSSFeedTitle ;;
  }

  dimension: rssfeed_url {
    type: string
    sql: ${TABLE}.RSSFeedURL ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.SortOrder ;;
  }

  dimension: sort_order_within_group {
    type: number
    sql: ${TABLE}.SortOrderWithinGroup ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  measure: count {
    type: count
    drill_fields: [rssfeed_id, rssfeed_groups.rssfeed_group_id, rssfeed_groups.rssfeed_group_name]
  }
}
