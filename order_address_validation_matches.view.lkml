view: order_address_validation_matches {
  sql_table_name: dbo.OrderAddressValidationMatches ;;

  dimension: order_address_validation_matches_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrderAddressValidationMatchesId ;;
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

  dimension: is_residential {
    type: string
    sql: ${TABLE}.IsResidential ;;
  }

  dimension: is_uspsdelivery_only {
    type: string
    sql: ${TABLE}.IsUSPSDeliveryOnly ;;
  }

  dimension: order_address_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderAddressId ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.PostalCode ;;
  }

  dimension: st_pr_id {
    type: number
    sql: ${TABLE}.StPrId ;;
  }

  dimension: validation_service {
    type: string
    sql: ${TABLE}.ValidationService ;;
  }

  measure: count {
    type: count
    drill_fields: [order_address_validation_matches_id, order_address.order_address_id]
  }
}
