view: order_tax_detail {
  sql_table_name: dbo.OrderTaxDetail ;;

  dimension: order_tax_detail_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrderTaxDetailId ;;
  }

  dimension: city_name {
    type: string
    sql: ${TABLE}.CityName ;;
  }

  dimension: county_name {
    type: string
    sql: ${TABLE}.CountyName ;;
  }

  dimension: fips {
    type: string
    sql: ${TABLE}.FIPS ;;
  }

  dimension: jurisdiction_name {
    type: string
    sql: ${TABLE}.JurisdictionName ;;
  }

  dimension: jurisdiction_tax_id {
    type: number
    sql: ${TABLE}.JurisdictionTaxId ;;
  }

  dimension: order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderHeaderId ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.PostalCode ;;
  }

  dimension: st_pr_id {
    type: number
    sql: ${TABLE}.StPrId ;;
  }

  dimension: tax_entity_ref_id {
    type: number
    sql: ${TABLE}.TaxEntityRefId ;;
  }

  dimension: tax_level_id {
    type: number
    sql: ${TABLE}.TaxLevelId ;;
  }

  dimension: tax_rate {
    type: number
    sql: ${TABLE}.TaxRate ;;
  }

  dimension: tax_service {
    type: string
    sql: ${TABLE}.TaxService ;;
  }

  dimension: tax_value {
    type: string
    sql: ${TABLE}.TaxValue ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      order_tax_detail_id,
      county_name,
      city_name,
      jurisdiction_name,
      order_header.autoship_order_header_id,
      vw_order_line_detail_tax.count,
      vw_order_shipping_info_tax.count
    ]
  }
}
