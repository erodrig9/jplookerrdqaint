view: banners {
  sql_table_name: dbo.Banners ;;

  dimension: banner_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.BannerId ;;
  }

  dimension: banner_alt_text {
    type: string
    sql: ${TABLE}.BannerAltText ;;
  }

  dimension: banner_code {
    type: string
    sql: ${TABLE}.BannerCode ;;
  }

  dimension: banner_name {
    type: string
    sql: ${TABLE}.BannerName ;;
  }

  dimension: banner_url {
    type: string
    sql: ${TABLE}.BannerURL ;;
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

  dimension: file_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.FileId ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
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

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  measure: count {
    type: count
    drill_fields: [banner_id, banner_name, files.file_id, files.filename, files.original_file_name]
  }
}
