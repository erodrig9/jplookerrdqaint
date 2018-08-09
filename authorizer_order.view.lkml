view: authorizer_order {
  sql_table_name: dbo.AuthorizerOrder ;;

  dimension: authorizer_order_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.AuthorizerOrderId ;;
  }

  dimension: aggregator_order_id {
    type: string
    sql: ${TABLE}.AggregatorOrderId ;;
  }

  dimension: aggregator_transaction_id {
    type: string
    sql: ${TABLE}.AggregatorTransactionId ;;
  }

  dimension: authorizer_aggregator_id {
    type: number
    sql: ${TABLE}.AuthorizerAggregatorId ;;
  }

  dimension: authorizer_provider_id {
    type: number
    sql: ${TABLE}.AuthorizerProviderId ;;
  }

  dimension: order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderHeaderId ;;
  }

  dimension: provider_order_id {
    type: string
    sql: ${TABLE}.ProviderOrderId ;;
  }

  dimension: provider_transaction_id {
    type: string
    sql: ${TABLE}.ProviderTransactionId ;;
  }

  measure: count {
    type: count
    drill_fields: [authorizer_order_id, order_header.autoship_order_header_id]
  }
}
