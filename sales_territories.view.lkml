view: sales_territories {
  sql_table_name: dbo.SalesTerritories ;;

  dimension: sales_territory_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.SalesTerritoryId ;;
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

  dimension: default_territory {
    type: string
    sql: ${TABLE}.DefaultTerritory ;;
  }

  dimension: distribution_channel_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DistributionChannelId ;;
  }

  dimension_group: effective {
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
    sql: ${TABLE}.EffectiveDate ;;
  }

  dimension: sort_order {
    type: string
    sql: ${TABLE}.SortOrder ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  dimension: territory_code {
    type: string
    sql: ${TABLE}.TerritoryCode ;;
  }

  dimension: territory_name {
    type: string
    sql: ${TABLE}.TerritoryName ;;
  }

  dimension: zip_end {
    type: string
    sql: ${TABLE}.ZipEnd ;;
  }

  dimension: zip_start {
    type: string
    sql: ${TABLE}.ZipStart ;;
  }

  measure: count {
    type: count
    drill_fields: [sales_territory_id, territory_name, distribution_channels.distribution_channel_id]
  }
}
