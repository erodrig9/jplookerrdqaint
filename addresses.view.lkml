view: addresses {
  sql_table_name: dbo.Addresses ;;

  dimension: address_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.AddressId ;;
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

  dimension: address_name {
    type: string
    sql: ${TABLE}.AddressName ;;
  }

  dimension: address_obj_type_id {
    type: number
    sql: ${TABLE}.AddressObjTypeId ;;
  }

  dimension: address_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.AddressTypeId ;;
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
    sql: ${TABLE}.LastUpdated ;;
  }

  dimension: member_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MemberId ;;
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

  dimension: primary_for_type {
    type: string
    sql: ${TABLE}.PrimaryForType ;;
  }

  dimension: salutation {
    type: string
    sql: ${TABLE}.Salutation ;;
  }

  dimension: st_pr_id {
    type: number
    sql: ${TABLE}.StPrId ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      address_id,
      address_name,
      members.member_id,
      members.username,
      address_types.address_type_id,
      address_types.address_type_name
    ]
  }
}
