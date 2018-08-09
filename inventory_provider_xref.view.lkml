view: inventory_provider_xref {
  sql_table_name: dbo.Inventory_Provider_XRef ;;

  dimension: inventory_provider_xref_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Inventory_Provider_XRefId ;;
  }

  dimension: active {
    type: string
    sql: ${TABLE}.Active ;;
  }

  dimension: atp {
    type: number
    sql: ${TABLE}.ATP ;;
  }

  dimension: avg_daily_usage {
    type: number
    sql: ${TABLE}.AvgDailyUsage ;;
  }

  dimension: cost {
    type: string
    sql: ${TABLE}.Cost ;;
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

  dimension: first_stock_date {
    type: number
    sql: ${TABLE}.FirstStockDate ;;
  }

  dimension_group: forecasted {
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
    sql: ${TABLE}.ForecastedDate ;;
  }

  dimension: hold_future_releases {
    type: string
    sql: ${TABLE}.HoldFutureReleases ;;
  }

  dimension: inventory_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.InventoryId ;;
  }

  dimension_group: last_rec {
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
    sql: ${TABLE}.LastRecDate ;;
  }

  dimension: last_rec_qty {
    type: number
    sql: ${TABLE}.LastRecQty ;;
  }

  dimension_group: last_sale {
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
    sql: ${TABLE}.LastSaleDate ;;
  }

  dimension: last_sale_qty {
    type: number
    sql: ${TABLE}.LastSaleQty ;;
  }

  dimension: lead_time {
    type: number
    sql: ${TABLE}.LeadTime ;;
  }

  dimension_group: low_stock {
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
    sql: ${TABLE}.LowStockDate ;;
  }

  dimension: max_build_qty {
    type: number
    sql: ${TABLE}.MaxBuildQty ;;
  }

  dimension: min_build_qty {
    type: number
    sql: ${TABLE}.MinBuildQty ;;
  }

  dimension: order_against_asn {
    type: string
    sql: ${TABLE}.OrderAgainstASN ;;
  }

  dimension: provider_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProviderId ;;
  }

  dimension: qty_incoming_transfer {
    type: number
    sql: ${TABLE}.QtyIncomingTransfer ;;
  }

  dimension: qty_on_hand {
    type: number
    sql: ${TABLE}.QtyOnHand ;;
  }

  dimension: qty_on_hold {
    type: number
    sql: ${TABLE}.QtyOnHold ;;
  }

  dimension: qty_outgoing_transfer {
    type: number
    sql: ${TABLE}.QtyOutgoingTransfer ;;
  }

  dimension: qty_released {
    type: number
    sql: ${TABLE}.QtyReleased ;;
  }

  dimension: qty_reserved {
    type: number
    sql: ${TABLE}.QtyReserved ;;
  }

  dimension: qty_reserved_to_warehouse {
    type: number
    sql: ${TABLE}.QtyReservedToWarehouse ;;
  }

  dimension: reorder_point {
    type: number
    sql: ${TABLE}.ReorderPoint ;;
  }

  dimension: reorder_qty {
    type: number
    sql: ${TABLE}.ReorderQTY ;;
  }

  dimension: reorder_rule_id {
    type: number
    sql: ${TABLE}.ReorderRuleId ;;
  }

  dimension: safety_stock {
    type: number
    sql: ${TABLE}.SafetyStock ;;
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

  dimension: updated {
    type: string
    sql: ${TABLE}.Updated ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      inventory_provider_xref_id,
      inventory.inventory_id,
      inventory.trademark_name,
      providers.provider_name,
      providers.backup_provider_id,
      inventory_activity.count,
      inventory_sync_history.count,
      inventory_balance_request.count
    ]
  }
}
