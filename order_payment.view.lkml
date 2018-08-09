view: order_payment {
  sql_table_name: dbo.OrderPayment ;;

  dimension: order_payment_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrderPaymentId ;;
  }

  dimension: address_token {
    type: string
    sql: ${TABLE}.AddressToken ;;
  }

  dimension: address_validation_code {
    type: string
    sql: ${TABLE}.AddressValidationCode ;;
  }

  dimension: amount {
    type: string
    sql: ${TABLE}.Amount ;;
  }

  dimension: approval_code {
    type: string
    sql: ${TABLE}.ApprovalCode ;;
  }

  dimension: auth_trn_no {
    type: string
    sql: ${TABLE}.AuthTrnNo ;;
  }

  dimension: authorization_code {
    type: string
    sql: ${TABLE}.AuthorizationCode ;;
  }

  dimension: authorizer_id {
    type: number
    sql: ${TABLE}.AuthorizerId ;;
  }

  dimension: bank_abanumber {
    type: string
    sql: ${TABLE}.BankABANumber ;;
  }

  dimension: bank_account_name {
    type: string
    sql: ${TABLE}.BankAccountName ;;
  }

  dimension: bank_account_number {
    type: string
    sql: ${TABLE}.BankAccountNumber ;;
  }

  dimension: bank_account_type {
    type: string
    sql: ${TABLE}.BankAccountType ;;
  }

  dimension: bank_name {
    type: string
    sql: ${TABLE}.BankName ;;
  }

  dimension: bank_routing_number {
    type: string
    sql: ${TABLE}.BankRoutingNumber ;;
  }

  dimension: card_code_response_code {
    type: string
    sql: ${TABLE}.CardCodeResponseCode ;;
  }

  dimension: certificate_no {
    type: string
    sql: ${TABLE}.CertificateNo ;;
  }

  dimension: check_number {
    type: string
    sql: ${TABLE}.CheckNumber ;;
  }

  dimension: cost_center {
    type: string
    sql: ${TABLE}.CostCenter ;;
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

  dimension: credit_card_exp {
    type: string
    sql: ${TABLE}.CreditCardExp ;;
  }

  dimension: credit_card_name {
    type: string
    sql: ${TABLE}.CreditCardName ;;
  }

  dimension: credit_card_number {
    type: string
    sql: ${TABLE}.CreditCardNumber ;;
  }

  dimension: credit_card_suffix {
    type: string
    sql: ${TABLE}.CreditCardSuffix ;;
  }

  dimension: credit_card_type {
    type: string
    sql: ${TABLE}.CreditCardType ;;
  }

  dimension: currency_code {
    type: string
    sql: ${TABLE}.CurrencyCode ;;
  }

  dimension: exchange_rate {
    type: number
    sql: ${TABLE}.ExchangeRate ;;
  }

  dimension: gateway_transaction_index {
    type: string
    sql: ${TABLE}.GatewayTransactionIndex ;;
  }

  dimension: gift_certificate_balance {
    type: string
    sql: ${TABLE}.GiftCertificateBalance ;;
  }

  dimension: gift_certificate_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.GiftCertificateId ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.Notes ;;
  }

  dimension: order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderHeaderId ;;
  }

  dimension: order_payment_method_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderPaymentMethodId ;;
  }

  dimension: payer_status {
    type: string
    sql: ${TABLE}.PayerStatus ;;
  }

  dimension_group: payment {
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
    sql: ${TABLE}.PaymentDate ;;
  }

  dimension: payment_status_id {
    type: number
    sql: ${TABLE}.PaymentStatusId ;;
  }

  dimension: payment_token {
    type: string
    sql: ${TABLE}.PaymentToken ;;
  }

  dimension: payment_type {
    type: string
    sql: ${TABLE}.PaymentType ;;
  }

  dimension: pending_reason {
    type: string
    sql: ${TABLE}.Pending_Reason ;;
  }

  dimension: ppl_subscriber_id {
    type: string
    sql: ${TABLE}.PplSubscriberId ;;
  }

  dimension: primary_for_order {
    type: string
    sql: ${TABLE}.PrimaryForOrder ;;
  }

  dimension: profile_token {
    type: string
    sql: ${TABLE}.ProfileToken ;;
  }

  dimension: purchase_order_date {
    type: string
    sql: ${TABLE}.PurchaseOrderDate ;;
  }

  dimension: purchase_order_exp {
    type: string
    sql: ${TABLE}.PurchaseOrderExp ;;
  }

  dimension: purchase_order_number {
    type: string
    sql: ${TABLE}.PurchaseOrderNumber ;;
  }

  dimension: reason_code_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ReasonCodeId ;;
  }

  dimension: receiver_email {
    type: string
    sql: ${TABLE}.ReceiverEmail ;;
  }

  dimension: response_code {
    type: string
    sql: ${TABLE}.ResponseCode ;;
  }

  dimension: response_reason_code {
    type: string
    sql: ${TABLE}.ResponseReasonCode ;;
  }

  dimension: response_reason_text {
    type: string
    sql: ${TABLE}.ResponseReasonText ;;
  }

  dimension: response_sub_code {
    type: string
    sql: ${TABLE}.ResponseSubCode ;;
  }

  dimension: retry_attemp_count {
    type: number
    sql: ${TABLE}.RetryAttempCount ;;
  }

  dimension: settle_amount {
    type: string
    sql: ${TABLE}.SettleAmount ;;
  }

  dimension: settle_currency_code {
    type: string
    sql: ${TABLE}.SettleCurrencyCode ;;
  }

  dimension: tax_number {
    type: string
    sql: ${TABLE}.TaxNumber ;;
  }

  dimension: third_party_acct_number {
    type: string
    sql: ${TABLE}.ThirdPartyAcctNumber ;;
  }

  dimension: trace_number {
    type: number
    sql: ${TABLE}.TraceNumber ;;
  }

  dimension: transaction_action {
    type: string
    sql: ${TABLE}.TransactionAction ;;
  }

  dimension: transaction_fee {
    type: string
    sql: ${TABLE}.TransactionFee ;;
  }

  dimension: transaction_type_id {
    type: number
    sql: ${TABLE}.TransactionTypeId ;;
  }

  dimension: verify_sign {
    type: string
    sql: ${TABLE}.VerifySign ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      order_payment_id,
      credit_card_name,
      bank_name,
      bank_account_name,
      order_header.autoship_order_header_id,
      gift_certificates.gift_certificate_id,
      gift_certificates.gift_certificate_name,
      reason_code.reason_code_id,
      reason_code.reason_code_name,
      order_payment_method.order_payment_method_id,
      order_payment_method.payment_name,
      gift_card_stack.count,
      order_exceptions.count,
      order_shipments.count,
      order_shipments_order_payment_xref.count,
      order_shipping_info.count,
      order_shipping_info_order_payment_xref.count
    ]
  }
}
