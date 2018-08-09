view: service_request {
  sql_table_name: dbo.ServiceRequest ;;

  dimension: service_request_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ServiceRequestId ;;
  }

  dimension: address1 {
    type: string
    sql: ${TABLE}.Address1 ;;
  }

  dimension: address2 {
    type: string
    sql: ${TABLE}.Address2 ;;
  }

  dimension: address3 {
    type: string
    sql: ${TABLE}.Address3 ;;
  }

  dimension_group: call_back_date {
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
    sql: ${TABLE}.CallBackDateTime ;;
  }

  dimension: catalog_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CatalogId ;;
  }

  dimension: category_id {
    type: number
    sql: ${TABLE}.CategoryId ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: country_id {
    type: number
    sql: ${TABLE}.CountryId ;;
  }

  dimension_group: date_created {
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
    sql: ${TABLE}.DateCreated ;;
  }

  dimension_group: date_purchased {
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
    sql: ${TABLE}.DatePurchased ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}.Fax ;;
  }

  dimension: member_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MemberId ;;
  }

  dimension: member_id_created_by {
    type: number
    sql: ${TABLE}.MemberIdCreatedBy ;;
  }

  dimension: name_first {
    type: string
    sql: ${TABLE}.NameFirst ;;
  }

  dimension: name_last {
    type: string
    sql: ${TABLE}.NameLast ;;
  }

  dimension: name_middle {
    type: string
    sql: ${TABLE}.NameMiddle ;;
  }

  dimension: notes_external {
    type: string
    sql: ${TABLE}.NotesExternal ;;
  }

  dimension: notes_internal {
    type: string
    sql: ${TABLE}.NotesInternal ;;
  }

  dimension: order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderHeaderId ;;
  }

  dimension: organization {
    type: string
    sql: ${TABLE}.Organization ;;
  }

  dimension: phone_cell {
    type: string
    sql: ${TABLE}.PhoneCell ;;
  }

  dimension: phone_home {
    type: string
    sql: ${TABLE}.PhoneHome ;;
  }

  dimension: phone_other {
    type: string
    sql: ${TABLE}.PhoneOther ;;
  }

  dimension: phone_pager {
    type: string
    sql: ${TABLE}.PhonePager ;;
  }

  dimension: phone_work {
    type: string
    sql: ${TABLE}.PhoneWork ;;
  }

  dimension: phone_work_ext {
    type: string
    sql: ${TABLE}.PhoneWorkExt ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.PostalCode ;;
  }

  dimension: preferred_communication_method1 {
    type: string
    sql: ${TABLE}.PreferredCommunicationMethod1 ;;
  }

  dimension: preferred_communication_method2 {
    type: string
    sql: ${TABLE}.PreferredCommunicationMethod2 ;;
  }

  dimension: preferred_communication_method3 {
    type: string
    sql: ${TABLE}.PreferredCommunicationMethod3 ;;
  }

  dimension: salutation {
    type: string
    sql: ${TABLE}.Salutation ;;
  }

  dimension: serial_number {
    type: string
    sql: ${TABLE}.SerialNumber ;;
  }

  dimension: service_request_status_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ServiceRequestStatusId ;;
  }

  dimension: service_request_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ServiceRequestTypeId ;;
  }

  dimension: st_pr_id {
    type: number
    sql: ${TABLE}.StPrId ;;
  }

  dimension: style_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.StyleId ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.UserId ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      service_request_id,
      members.member_id,
      members.username,
      order_header.autoship_order_header_id,
      service_request_status.service_request_status_id,
      service_request_status.service_request_status_name,
      service_request_types.service_request_type_id,
      service_request_types.service_request_type_name,
      catalog.catalog_id,
      catalog.catalog_name,
      style.style_id,
      style.style_name
    ]
  }
}
