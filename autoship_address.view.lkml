view: autoship_address {
  sql_table_name: dbo.AutoshipAddress ;;

  dimension: autoship_address_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.AutoshipAddressId ;;
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

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: country_id {
    type: number
    sql: ${TABLE}.CountryId ;;
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

  dimension: modified_by_member_id {
    type: number
    sql: ${TABLE}.ModifiedByMemberId ;;
  }

  dimension: modified_by_user_id {
    type: number
    sql: ${TABLE}.ModifiedByUserId ;;
  }

  dimension_group: modify {
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
    sql: ${TABLE}.ModifyDate ;;
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
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      autoship_address_id,
      members.member_id,
      members.username,
      autoship_address_history.count,
      autoship_order_header.count,
      autoship_order_header_history.count
    ]
  }
}
