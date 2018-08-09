view: order_address {
  sql_table_name: dbo.OrderAddress ;;

  dimension: order_address_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrderAddressId ;;
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

  dimension: address_change_type_id {
    type: number
    sql: ${TABLE}.AddressChangeTypeId ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: country_id {
    type: number
    sql: ${TABLE}.CountryId ;;
  }

  dimension: county_fips {
    type: string
    sql: ${TABLE}.CountyFIPS ;;
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

  dimension: dt_residential {
    type: string
    sql: ${TABLE}.DtResidential ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}.Fax ;;
  }

  dimension: is_residential {
    type: string
    sql: ${TABLE}.IsResidential ;;
  }

  dimension: is_uspsdelivery_only {
    type: string
    sql: ${TABLE}.IsUSPSDeliveryOnly ;;
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

  dimension: salutation {
    type: string
    sql: ${TABLE}.Salutation ;;
  }

  dimension: st_pr_id {
    type: number
    sql: ${TABLE}.StPrId ;;
  }

  measure: count {
    type: count
    drill_fields: [order_address_id, order_header.autoship_order_header_id, order_address_history.count, order_address_validation_matches.count, order_invoice.count]
  }
}
