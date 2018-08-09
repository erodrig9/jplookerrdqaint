view: distribution_lists {
  sql_table_name: dbo.DistributionLists ;;

  dimension: distribution_lists_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.DistributionListsID ;;
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

  dimension: distribution_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DistributionId ;;
  }

  dimension: dynamic_record_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DynamicRecordId ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}.Fax ;;
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

  dimension: postal_code {
    type: string
    sql: ${TABLE}.PostalCode ;;
  }

  dimension: salutation {
    type: string
    sql: ${TABLE}.Salutation ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.Source ;;
  }

  dimension: st_pr_id {
    type: number
    sql: ${TABLE}.StPrId ;;
  }

  measure: count {
    type: count
    drill_fields: [distribution_lists_id, distributions.distribution_id, distributions.job_name, dynamic_record.dynamic_record_id]
  }
}
