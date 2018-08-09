view: vw_order_line_detail_tax {
  sql_table_name: dbo.VwOrderLineDetailTax ;;

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

  dimension: order_line_detail_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderLineDetailId ;;
  }

  dimension: order_tax_detail_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderTaxDetailId ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.PostalCode ;;
  }

  dimension: st_pr_id {
    type: number
    sql: ${TABLE}.StPrId ;;
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
      county_name,
      city_name,
      jurisdiction_name,
      order_tax_detail.order_tax_detail_id,
      order_tax_detail.county_name,
      order_tax_detail.city_name,
      order_tax_detail.jurisdiction_name,
      order_header.autoship_order_header_id,
      order_line_detail.order_line_detail_id
    ]
  }
}
