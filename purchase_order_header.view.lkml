view: purchase_order_header {
  sql_table_name: dbo.PurchaseOrderHeader ;;

  dimension: purchase_order_header_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.PurchaseOrderHeaderId ;;
  }

  dimension_group: acknowledge_by {
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
    sql: ${TABLE}.AcknowledgeByDate ;;
  }

  dimension: bill_to_address1 {
    type: string
    sql: ${TABLE}.BillToAddress1 ;;
  }

  dimension: bill_to_address2 {
    type: string
    sql: ${TABLE}.BillToAddress2 ;;
  }

  dimension: bill_to_city {
    type: string
    sql: ${TABLE}.BillToCity ;;
  }

  dimension: bill_to_name {
    type: string
    sql: ${TABLE}.BillToName ;;
  }

  dimension: bill_to_postal_code {
    type: string
    sql: ${TABLE}.BillToPostalCode ;;
  }

  dimension: bill_to_stpr_id {
    type: number
    sql: ${TABLE}.BillToStprId ;;
  }

  dimension_group: complete_by {
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
    sql: ${TABLE}.CompleteByDate ;;
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

  dimension_group: last_updated {
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
    sql: ${TABLE}.LastUpdatedDate ;;
  }

  dimension: last_updated_user {
    type: number
    sql: ${TABLE}.LastUpdatedUser ;;
  }

  dimension: poapprover {
    type: string
    sql: ${TABLE}.POApprover ;;
  }

  dimension: pocurrency {
    type: string
    sql: ${TABLE}.POCurrency ;;
  }

  dimension_group: poend {
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
    sql: ${TABLE}.POEndDate ;;
  }

  dimension: ponotes {
    type: string
    sql: ${TABLE}.PONotes ;;
  }

  dimension: ponumber {
    type: string
    sql: ${TABLE}.PONumber ;;
  }

  dimension: pooriginator_id {
    type: number
    sql: ${TABLE}.POOriginatorId ;;
  }

  dimension: popayment_terms {
    type: string
    sql: ${TABLE}.POPaymentTerms ;;
  }

  dimension: porevision {
    type: string
    sql: ${TABLE}.PORevision ;;
  }

  dimension: postatus_id {
    type: number
    sql: ${TABLE}.POStatusId ;;
  }

  dimension: pototal {
    type: string
    sql: ${TABLE}.POTotal ;;
  }

  dimension: potype {
    type: string
    sql: ${TABLE}.POType ;;
  }

  dimension: supplier_account_number {
    type: string
    sql: ${TABLE}.SupplierAccountNumber ;;
  }

  dimension: supplier_contact {
    type: string
    sql: ${TABLE}.SupplierContact ;;
  }

  dimension: supplier_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SupplierId ;;
  }

  dimension: supplier_ranking {
    type: string
    sql: ${TABLE}.SupplierRanking ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      purchase_order_header_id,
      bill_to_name,
      suppliers.supplier_id,
      suppliers.supplier_name,
      asnheader.count,
      purchase_order_line.count
    ]
  }
}
