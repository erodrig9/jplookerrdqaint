connection: "rdqa-int_edgerelease6i155trunk"

# include all the views
include: "*.view"

datagroup: rdqa_int_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: rdqa_int_default_datagroup

explore: __lk_orders {
  join: order_header {
    type: left_outer
    sql_on: ${__lk_orders.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${__lk_orders.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }
}

explore: __lk_trigs {}

explore: _dummytbl {}

explore: activity_log {}

explore: address_types {}

explore: address_types_locale {
  join: address_types {
    type: left_outer
    sql_on: ${address_types_locale.address_type_id} = ${address_types.address_type_id} ;;
    relationship: many_to_one
  }
}

explore: addresses {
  join: members {
    type: left_outer
    sql_on: ${addresses.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: address_types {
    type: left_outer
    sql_on: ${addresses.address_type_id} = ${address_types.address_type_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${members.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }
}

explore: adt_selling_rule_set {
  join: selling_rule_set {
    type: left_outer
    sql_on: ${adt_selling_rule_set.selling_rule_set_id} = ${selling_rule_set.selling_rule_set_id} ;;
    relationship: many_to_one
  }
}

explore: adt_selling_rules_catalog_xref {
  join: catalog {
    type: left_outer
    sql_on: ${adt_selling_rules_catalog_xref.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${catalog.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }
}

explore: adt_selling_rules_category_xref {}

explore: adt_selling_rules_header {
  join: selling_rule_set {
    type: left_outer
    sql_on: ${adt_selling_rules_header.selling_rule_set_id} = ${selling_rule_set.selling_rule_set_id} ;;
    relationship: many_to_one
  }

  join: dynamic_field_layout {
    type: left_outer
    sql_on: ${adt_selling_rules_header.dynamic_field_layout_id} = ${dynamic_field_layout.dynamic_field_layout_id} ;;
    relationship: many_to_one
  }

  join: selling_rule_execution_group {
    type: left_outer
    sql_on: ${adt_selling_rules_header.selling_rule_execution_group_id} = ${selling_rule_execution_group.selling_rule_execution_group_id} ;;
    relationship: many_to_one
  }
}

explore: adt_selling_rules_line {
  join: selling_rules_line {
    type: left_outer
    sql_on: ${adt_selling_rules_line.selling_rules_line_id} = ${selling_rules_line.selling_rules_line_id} ;;
    relationship: many_to_one
  }
}

explore: adt_selling_rules_values_xref {
  join: selling_rules_values_xref {
    type: left_outer
    sql_on: ${adt_selling_rules_values_xref.selling_rules_values_xref_id} = ${selling_rules_values_xref.selling_rules_values_xref_id} ;;
    relationship: many_to_one
  }

  join: catalog {
    type: left_outer
    sql_on: ${adt_selling_rules_values_xref.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${catalog.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }
}

explore: affiliate_commission {
  join: members {
    type: left_outer
    sql_on: ${affiliate_commission.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: order_shipments {
    type: left_outer
    sql_on: ${affiliate_commission.order_shipment_id} = ${order_shipments.order_shipment_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${members.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: order_line_detail {
    type: left_outer
    sql_on: ${order_shipments.order_line_detail_id} = ${order_line_detail.order_line_detail_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_shipments.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_payment {
    type: left_outer
    sql_on: ${order_shipments.order_payment_id} = ${order_payment.order_payment_id} ;;
    relationship: many_to_one
  }

  join: shipment_cancellation_reasons {
    type: left_outer
    sql_on: ${order_shipments.shipment_cancellation_reasons_id} = ${shipment_cancellation_reasons.shipment_cancellation_reasons_id} ;;
    relationship: many_to_one
  }

  join: shipment_rejection_reasons {
    type: left_outer
    sql_on: ${order_shipments.shipment_rejection_reasons_id} = ${shipment_rejection_reasons.shipment_rejection_reasons_id} ;;
    relationship: many_to_one
  }

  join: order_line {
    type: left_outer
    sql_on: ${order_line_detail.order_line_id} = ${order_line.original_order_line_id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${order_line_detail.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: order_shipping_info {
    type: left_outer
    sql_on: ${order_line_detail.order_shipping_info_id} = ${order_shipping_info.order_shipping_info_id} ;;
    relationship: many_to_one
  }

  join: kit_line {
    type: left_outer
    sql_on: ${order_line_detail.kit_line_id} = ${kit_line.kit_line_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${order_line.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: catalog {
    type: left_outer
    sql_on: ${order_line.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: reason_code {
    type: left_outer
    sql_on: ${order_line.reason_code_id} = ${reason_code.reason_code_id} ;;
    relationship: many_to_one
  }

  join: disposition_code {
    type: left_outer
    sql_on: ${order_line.disposition_code_id} = ${disposition_code.disposition_code_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }

  join: ship_methods {
    type: left_outer
    sql_on: ${order_shipping_info.ship_method_id} = ${ship_methods.ship_method_id} ;;
    relationship: many_to_one
  }

  join: kit_header {
    type: left_outer
    sql_on: ${kit_line.kit_header_id} = ${kit_header.kit_header_id} ;;
    relationship: many_to_one
  }

  join: kit_placement {
    type: left_outer
    sql_on: ${kit_line.kit_placement_id} = ${kit_placement.kit_placement_id} ;;
    relationship: many_to_one
  }

  join: order_payment_method {
    type: left_outer
    sql_on: ${order_payment.order_payment_method_id} = ${order_payment_method.order_payment_method_id} ;;
    relationship: many_to_one
  }
}

explore: affiliate_commission_types {}

explore: affiliate_types {}

explore: alternate_deliveries {
  join: catalog {
    type: left_outer
    sql_on: ${alternate_deliveries.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${alternate_deliveries.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${alternate_deliveries.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${alternate_deliveries.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${catalog.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }
}

explore: anoop_and_max_test {
  join: groups {
    type: left_outer
    sql_on: ${anoop_and_max_test.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${groups.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }
}

explore: asmheader {}

explore: asmheader_asmpromotions_xref {
  join: asmheader {
    type: left_outer
    sql_on: ${asmheader_asmpromotions_xref.asmheader_id} = ${asmheader.asmheader_id} ;;
    relationship: many_to_one
  }

  join: asmpromotions {
    type: left_outer
    sql_on: ${asmheader_asmpromotions_xref.asmpromotion_id} = ${asmpromotions.asmpromotion_id} ;;
    relationship: many_to_one
  }
}

explore: asmline {
  join: asmheader {
    type: left_outer
    sql_on: ${asmline.asmheader_id} = ${asmheader.asmheader_id} ;;
    relationship: many_to_one
  }

  join: ship_methods {
    type: left_outer
    sql_on: ${asmline.ship_method_id} = ${ship_methods.ship_method_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${ship_methods.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }
}

explore: asmpromotions {}

explore: asnheader {
  join: providers {
    type: left_outer
    sql_on: ${asnheader.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${asnheader.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${asnheader.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: purchase_order_header {
    type: left_outer
    sql_on: ${asnheader.purchase_order_header_id} = ${purchase_order_header.purchase_order_header_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: suppliers {
    type: left_outer
    sql_on: ${purchase_order_header.supplier_id} = ${suppliers.supplier_id} ;;
    relationship: many_to_one
  }
}

explore: asnline {
  join: asnheader {
    type: left_outer
    sql_on: ${asnline.asnheader_id} = ${asnheader.asnheader_id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${asnline.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: suppliers {
    type: left_outer
    sql_on: ${asnline.supplier_id} = ${suppliers.supplier_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${asnheader.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${asnheader.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${asnheader.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: purchase_order_header {
    type: left_outer
    sql_on: ${asnheader.purchase_order_header_id} = ${purchase_order_header.purchase_order_header_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${inventory.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }
}

explore: asnreceipt {
  join: asnheader {
    type: left_outer
    sql_on: ${asnreceipt.asnheader_id} = ${asnheader.asnheader_id} ;;
    relationship: many_to_one
  }

  join: asnline {
    type: left_outer
    sql_on: ${asnreceipt.asnline_id} = ${asnline.asnline_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${asnheader.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${asnheader.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${asnheader.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: purchase_order_header {
    type: left_outer
    sql_on: ${asnheader.purchase_order_header_id} = ${purchase_order_header.purchase_order_header_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: suppliers {
    type: left_outer
    sql_on: ${purchase_order_header.supplier_id} = ${suppliers.supplier_id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${asnline.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${inventory.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }
}

explore: asnreceipt_lot_serial_xref {
  join: asnreceipt {
    type: left_outer
    sql_on: ${asnreceipt_lot_serial_xref.asnreceipt_id} = ${asnreceipt.asnreceipt_id} ;;
    relationship: many_to_one
  }

  join: asnheader {
    type: left_outer
    sql_on: ${asnreceipt.asnheader_id} = ${asnheader.asnheader_id} ;;
    relationship: many_to_one
  }

  join: asnline {
    type: left_outer
    sql_on: ${asnreceipt.asnline_id} = ${asnline.asnline_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${asnheader.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${asnheader.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${asnheader.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: purchase_order_header {
    type: left_outer
    sql_on: ${asnheader.purchase_order_header_id} = ${purchase_order_header.purchase_order_header_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: suppliers {
    type: left_outer
    sql_on: ${purchase_order_header.supplier_id} = ${suppliers.supplier_id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${asnline.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${inventory.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }
}

explore: audit {
  join: members {
    type: left_outer
    sql_on: ${audit.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${members.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }
}

explore: authorizer_order {
  join: order_header {
    type: left_outer
    sql_on: ${authorizer_order.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }
}

explore: authorizer_order_history {
  join: order_header {
    type: left_outer
    sql_on: ${authorizer_order_history.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }
}

explore: auto_include_header {}

explore: auto_include_line {
  join: auto_include_header {
    type: left_outer
    sql_on: ${auto_include_line.auto_include_header_id} = ${auto_include_header.auto_include_header_id} ;;
    relationship: many_to_one
  }

  join: catalog {
    type: left_outer
    sql_on: ${auto_include_line.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${auto_include_line.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: dynamic_field_layout {
    type: left_outer
    sql_on: ${auto_include_line.dynamic_field_layout_id} = ${dynamic_field_layout.dynamic_field_layout_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${auto_include_line.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${auto_include_line.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${catalog.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }
}

explore: autoship_address {
  join: members {
    type: left_outer
    sql_on: ${autoship_address.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${members.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }
}

explore: autoship_address_history {
  join: autoship_address {
    type: left_outer
    sql_on: ${autoship_address_history.autoship_address_id} = ${autoship_address.autoship_address_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${autoship_address_history.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${members.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }
}

explore: autoship_cancellation {
  join: autoship_order_header {
    type: left_outer
    sql_on: ${autoship_cancellation.autoship_order_header_id} = ${autoship_order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${autoship_order_header.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${autoship_order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: autoship_address {
    type: left_outer
    sql_on: ${autoship_order_header.autoship_address_id} = ${autoship_address.autoship_address_id} ;;
    relationship: many_to_one
  }

  join: autoship_payment_info {
    type: left_outer
    sql_on: ${autoship_order_header.autoship_payment_info_id} = ${autoship_payment_info.autoship_payment_info_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }
}

explore: autoship_cancellation_reasons {}

explore: autoship_delivery {
  join: autoship_order_header {
    type: left_outer
    sql_on: ${autoship_delivery.autoship_order_header_id} = ${autoship_order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${autoship_delivery.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${autoship_order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: autoship_address {
    type: left_outer
    sql_on: ${autoship_order_header.autoship_address_id} = ${autoship_address.autoship_address_id} ;;
    relationship: many_to_one
  }

  join: autoship_payment_info {
    type: left_outer
    sql_on: ${autoship_order_header.autoship_payment_info_id} = ${autoship_payment_info.autoship_payment_info_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${members.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }
}

explore: autoship_exception {
  join: autoship_order_header {
    type: left_outer
    sql_on: ${autoship_exception.autoship_order_header_id} = ${autoship_order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${autoship_order_header.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${autoship_order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: autoship_address {
    type: left_outer
    sql_on: ${autoship_order_header.autoship_address_id} = ${autoship_address.autoship_address_id} ;;
    relationship: many_to_one
  }

  join: autoship_payment_info {
    type: left_outer
    sql_on: ${autoship_order_header.autoship_payment_info_id} = ${autoship_payment_info.autoship_payment_info_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }
}

explore: autoship_notes {
  join: autoship_order_header {
    type: left_outer
    sql_on: ${autoship_notes.autoship_order_header_id} = ${autoship_order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${autoship_order_header.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${autoship_order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: autoship_address {
    type: left_outer
    sql_on: ${autoship_order_header.autoship_address_id} = ${autoship_address.autoship_address_id} ;;
    relationship: many_to_one
  }

  join: autoship_payment_info {
    type: left_outer
    sql_on: ${autoship_order_header.autoship_payment_info_id} = ${autoship_payment_info.autoship_payment_info_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }
}

explore: autoship_order_header {
  join: order_header {
    type: left_outer
    sql_on: ${autoship_order_header.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${autoship_order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: autoship_address {
    type: left_outer
    sql_on: ${autoship_order_header.autoship_address_id} = ${autoship_address.autoship_address_id} ;;
    relationship: many_to_one
  }

  join: autoship_payment_info {
    type: left_outer
    sql_on: ${autoship_order_header.autoship_payment_info_id} = ${autoship_payment_info.autoship_payment_info_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }
}

explore: autoship_order_header_history {
  join: autoship_order_header {
    type: left_outer
    sql_on: ${autoship_order_header_history.autoship_order_header_id} = ${autoship_order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${autoship_order_header_history.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${autoship_order_header_history.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: autoship_address {
    type: left_outer
    sql_on: ${autoship_order_header_history.autoship_address_id} = ${autoship_address.autoship_address_id} ;;
    relationship: many_to_one
  }

  join: autoship_payment_info {
    type: left_outer
    sql_on: ${autoship_order_header_history.autoship_payment_info_id} = ${autoship_payment_info.autoship_payment_info_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }
}

explore: autoship_order_line {
  join: autoship_order_header {
    type: left_outer
    sql_on: ${autoship_order_line.autoship_order_header_id} = ${autoship_order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: autoship_shipping_info {
    type: left_outer
    sql_on: ${autoship_order_line.autoship_shipping_info_id} = ${autoship_shipping_info.autoship_shipping_info_id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${autoship_order_line.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: catalog {
    type: left_outer
    sql_on: ${autoship_order_line.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${autoship_order_header.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${autoship_order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: autoship_address {
    type: left_outer
    sql_on: ${autoship_order_header.autoship_address_id} = ${autoship_address.autoship_address_id} ;;
    relationship: many_to_one
  }

  join: autoship_payment_info {
    type: left_outer
    sql_on: ${autoship_order_header.autoship_payment_info_id} = ${autoship_payment_info.autoship_payment_info_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: ship_methods {
    type: left_outer
    sql_on: ${autoship_shipping_info.ship_method_id} = ${ship_methods.ship_method_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${inventory.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }
}

explore: autoship_order_line_history {
  join: autoship_order_line {
    type: left_outer
    sql_on: ${autoship_order_line_history.autoship_order_line_id} = ${autoship_order_line.autoship_order_line_id} ;;
    relationship: many_to_one
  }

  join: autoship_order_header {
    type: left_outer
    sql_on: ${autoship_order_line_history.autoship_order_header_id} = ${autoship_order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: autoship_shipping_info {
    type: left_outer
    sql_on: ${autoship_order_line_history.autoship_shipping_info_id} = ${autoship_shipping_info.autoship_shipping_info_id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${autoship_order_line_history.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: catalog {
    type: left_outer
    sql_on: ${autoship_order_line_history.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${autoship_order_header.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${autoship_order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: autoship_address {
    type: left_outer
    sql_on: ${autoship_order_header.autoship_address_id} = ${autoship_address.autoship_address_id} ;;
    relationship: many_to_one
  }

  join: autoship_payment_info {
    type: left_outer
    sql_on: ${autoship_order_header.autoship_payment_info_id} = ${autoship_payment_info.autoship_payment_info_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: ship_methods {
    type: left_outer
    sql_on: ${autoship_shipping_info.ship_method_id} = ${ship_methods.ship_method_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${inventory.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }
}

explore: autoship_payment_info {
  join: members {
    type: left_outer
    sql_on: ${autoship_payment_info.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${members.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }
}

explore: autoship_payment_info_history {
  join: autoship_payment_info {
    type: left_outer
    sql_on: ${autoship_payment_info_history.autoship_payment_info_id} = ${autoship_payment_info.autoship_payment_info_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${autoship_payment_info_history.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${members.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }
}

explore: autoship_shipping_info {
  join: ship_methods {
    type: left_outer
    sql_on: ${autoship_shipping_info.ship_method_id} = ${ship_methods.ship_method_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${autoship_shipping_info.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${ship_methods.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }
}

explore: autoship_shipping_info_history {
  join: autoship_shipping_info {
    type: left_outer
    sql_on: ${autoship_shipping_info_history.autoship_shipping_info_id} = ${autoship_shipping_info.autoship_shipping_info_id} ;;
    relationship: many_to_one
  }

  join: ship_methods {
    type: left_outer
    sql_on: ${autoship_shipping_info_history.ship_method_id} = ${ship_methods.ship_method_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${autoship_shipping_info_history.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${ship_methods.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }
}

explore: banners {
  join: files {
    type: left_outer
    sql_on: ${banners.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }
}

explore: billing_codes {}

explore: blanket_order_audit {
  join: blanket_order_header {
    type: left_outer
    sql_on: ${blanket_order_audit.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${blanket_order_audit.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${blanket_order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${blanket_order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${blanket_order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${blanket_order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${blanket_order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }
}

explore: blanket_order_audit_reference {
  join: blanket_order_audit {
    type: left_outer
    sql_on: ${blanket_order_audit_reference.blanket_order_audit_id} = ${blanket_order_audit.blanket_order_audit_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${blanket_order_audit.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${blanket_order_audit.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${blanket_order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${blanket_order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${blanket_order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${blanket_order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${blanket_order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }
}

explore: blanket_order_header {
  join: members {
    type: left_outer
    sql_on: ${blanket_order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${blanket_order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${blanket_order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${blanket_order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${blanket_order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${blanket_order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }
}

explore: blanket_order_line {
  join: blanket_order_header {
    type: left_outer
    sql_on: ${blanket_order_line.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${blanket_order_line.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: catalog {
    type: left_outer
    sql_on: ${blanket_order_line.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${blanket_order_line.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${blanket_order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${blanket_order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${blanket_order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${blanket_order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${blanket_order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${inventory.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }
}

explore: blanket_order_payment {
  join: blanket_order_header {
    type: left_outer
    sql_on: ${blanket_order_payment.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${blanket_order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${blanket_order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${blanket_order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${blanket_order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${blanket_order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${blanket_order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }
}

explore: budget_center {
  join: dynamic_record {
    type: left_outer
    sql_on: ${budget_center.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }
}

explore: budget_center_locale {
  join: budget_center {
    type: left_outer
    sql_on: ${budget_center_locale.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${budget_center.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }
}

explore: bundle_header {
  join: catalog {
    type: left_outer
    sql_on: ${bundle_header.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${catalog.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }
}

explore: bundle_line {
  join: bundle_header {
    type: left_outer
    sql_on: ${bundle_line.bundle_header_id} = ${bundle_header.bundle_header_id} ;;
    relationship: many_to_one
  }

  join: catalog {
    type: left_outer
    sql_on: ${bundle_line.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${catalog.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }
}

explore: bundle_line_locale {
  join: bundle_line {
    type: left_outer
    sql_on: ${bundle_line_locale.bundle_line_id} = ${bundle_line.bundle_line_id} ;;
    relationship: many_to_one
  }

  join: bundle_header {
    type: left_outer
    sql_on: ${bundle_line.bundle_header_id} = ${bundle_header.bundle_header_id} ;;
    relationship: many_to_one
  }

  join: catalog {
    type: left_outer
    sql_on: ${bundle_line.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${catalog.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }
}

explore: calendar {}

explore: calendar_friends {
  join: calendar {
    type: left_outer
    sql_on: ${calendar_friends.calendar_id} = ${calendar.calendar_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${calendar_friends.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${members.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }
}

explore: calendar_members_xref {
  join: calendar {
    type: left_outer
    sql_on: ${calendar_members_xref.calendar_id} = ${calendar.calendar_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${calendar_members_xref.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${calendar_members_xref.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }
}

explore: catalog {
  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${catalog.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }
}

explore: catalog_auto_include_xref {
  join: catalog {
    type: left_outer
    sql_on: ${catalog_auto_include_xref.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: auto_include_header {
    type: left_outer
    sql_on: ${catalog_auto_include_xref.auto_include_header_id} = ${auto_include_header.auto_include_header_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${catalog.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }
}

explore: catalog_cross_sell_xref {
  join: catalog {
    type: left_outer
    sql_on: ${catalog_cross_sell_xref.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${catalog.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }
}

explore: catalog_delivery_methods_xref {
  join: catalog {
    type: left_outer
    sql_on: ${catalog_delivery_methods_xref.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${catalog.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }
}

explore: catalog_external_system_attribute {
  join: catalog {
    type: left_outer
    sql_on: ${catalog_external_system_attribute.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${catalog.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }
}

explore: catalog_locale {
  join: catalog {
    type: left_outer
    sql_on: ${catalog_locale.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${catalog.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }
}

explore: catalog_portal_xref {
  join: portals {
    type: left_outer
    sql_on: ${catalog_portal_xref.portal_id} = ${portals.portal_id} ;;
    relationship: many_to_one
  }

  join: catalog {
    type: left_outer
    sql_on: ${catalog_portal_xref.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: ipfilter_rule {
    type: left_outer
    sql_on: ${portals.ipfilter_rule_id} = ${ipfilter_rule.ipfilter_rule_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${catalog.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }
}

explore: catalog_prerequisites_xref {
  join: catalog {
    type: left_outer
    sql_on: ${catalog_prerequisites_xref.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${catalog.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }
}

explore: catalog_project_xref {
  join: catalog {
    type: left_outer
    sql_on: ${catalog_project_xref.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${catalog.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }
}

explore: catalog_substitutions_xref {
  join: catalog {
    type: left_outer
    sql_on: ${catalog_substitutions_xref.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${catalog.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }
}

explore: catalog_tax_class {}

explore: categories {
  join: dynamic_record {
    type: left_outer
    sql_on: ${categories.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }
}

explore: categories_locale {}

explore: category_catalog_xref {
  join: catalog {
    type: left_outer
    sql_on: ${category_catalog_xref.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${catalog.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }
}

explore: category_inventory_xref {
  join: inventory {
    type: left_outer
    sql_on: ${category_inventory_xref.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${inventory.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${inventory.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }
}

explore: category_portal_xref {
  join: portals {
    type: left_outer
    sql_on: ${category_portal_xref.portal_id} = ${portals.portal_id} ;;
    relationship: many_to_one
  }

  join: ipfilter_rule {
    type: left_outer
    sql_on: ${portals.ipfilter_rule_id} = ${ipfilter_rule.ipfilter_rule_id} ;;
    relationship: many_to_one
  }
}

explore: category_project_xref {}

explore: closed_dates {
  join: providers {
    type: left_outer
    sql_on: ${closed_dates.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${providers.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }
}

explore: color {
  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }
}

explore: color_group {}

explore: color_group_locale {
  join: color_group {
    type: left_outer
    sql_on: ${color_group_locale.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }
}

explore: color_locale {
  join: color {
    type: left_outer
    sql_on: ${color_locale.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }
}

explore: communications {
  join: order_sources {
    type: left_outer
    sql_on: ${communications.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${communications.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${communications.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }
}

explore: communications_locale {
  join: communications {
    type: left_outer
    sql_on: ${communications_locale.communications_id} = ${communications.communications_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${communications.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${communications.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${communications.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }
}

explore: communications_member_types_xref {
  join: communications {
    type: left_outer
    sql_on: ${communications_member_types_xref.communications_id} = ${communications.communications_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${communications_member_types_xref.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${communications.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${communications.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${communications.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${member_types.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }
}

explore: database_version {}

explore: database_version_log {}

explore: diagnostic_codes {}

explore: disassemble_xref {
  join: order_header {
    type: left_outer
    sql_on: ${disassemble_xref.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: order_line {
    type: left_outer
    sql_on: ${disassemble_xref.order_line_id} = ${order_line.original_order_line_id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${disassemble_xref.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: catalog {
    type: left_outer
    sql_on: ${order_line.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: reason_code {
    type: left_outer
    sql_on: ${order_line.reason_code_id} = ${reason_code.reason_code_id} ;;
    relationship: many_to_one
  }

  join: disposition_code {
    type: left_outer
    sql_on: ${order_line.disposition_code_id} = ${disposition_code.disposition_code_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }
}

explore: disposition_code {}

explore: distribution_channel_member_types_xref {
  join: distribution_channels {
    type: left_outer
    sql_on: ${distribution_channel_member_types_xref.distribution_channel_id} = ${distribution_channels.distribution_channel_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${distribution_channel_member_types_xref.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${member_types.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }
}

explore: distribution_channels {}

explore: distribution_codes {}

explore: distribution_codes_members_xref {
  join: members {
    type: left_outer
    sql_on: ${distribution_codes_members_xref.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distribution_codes {
    type: left_outer
    sql_on: ${distribution_codes_members_xref.distribution_code_id} = ${distribution_codes.distribution_code_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${members.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }
}

explore: distribution_files {
  join: distributions {
    type: left_outer
    sql_on: ${distribution_files.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }
}

explore: distribution_lists {
  join: distributions {
    type: left_outer
    sql_on: ${distribution_lists.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${distribution_lists.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }
}

explore: distributions {}

explore: dpodkit_line {
  join: inventory {
    type: left_outer
    sql_on: ${dpodkit_line.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${inventory.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${inventory.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }
}

explore: dpodtemplate {}

explore: dx_page {}

explore: dx_page_block {}

explore: dx_page_block_text {}

explore: dx_page_block_text_locale {}

explore: dx_permissions {}

explore: dynamic_field {
  join: dynamic_record {
    type: left_outer
    sql_on: ${dynamic_field.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: dynamic_field_layout {
    type: left_outer
    sql_on: ${dynamic_field.dynamic_field_layout_id} = ${dynamic_field_layout.dynamic_field_layout_id} ;;
    relationship: many_to_one
  }
}

explore: dynamic_field_layout {}

explore: dynamic_field_layout_locale {
  join: dynamic_field_layout {
    type: left_outer
    sql_on: ${dynamic_field_layout_locale.dynamic_field_layout_id} = ${dynamic_field_layout.dynamic_field_layout_id} ;;
    relationship: many_to_one
  }
}

explore: dynamic_field_locale {
  join: dynamic_field {
    type: left_outer
    sql_on: ${dynamic_field_locale.dynamic_field_id} = ${dynamic_field.dynamic_field_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${dynamic_field.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: dynamic_field_layout {
    type: left_outer
    sql_on: ${dynamic_field.dynamic_field_layout_id} = ${dynamic_field_layout.dynamic_field_layout_id} ;;
    relationship: many_to_one
  }
}

explore: dynamic_record {}

explore: email_addresses {}

explore: email_addresses_removed {}

explore: email_bounce_exceptions {}

explore: email_bounce_log {
  join: email_settings {
    type: left_outer
    sql_on: ${email_bounce_log.email_settings_id} = ${email_settings.email_settings_id} ;;
    relationship: many_to_one
  }
}

explore: email_broadcast_success_log {
  join: members {
    type: left_outer
    sql_on: ${email_broadcast_success_log.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${members.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }
}

explore: email_chart_types {}

explore: email_click_thru_stats {}

explore: email_click_thru_stats_detail {
  join: group_types {
    type: left_outer
    sql_on: ${email_click_thru_stats_detail.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }
}

explore: email_groups {
  join: group_types {
    type: left_outer
    sql_on: ${email_groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }
}

explore: email_groups_members {
  join: email_groups {
    type: left_outer
    sql_on: ${email_groups_members.email_group_id} = ${email_groups.email_group_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${email_groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }
}

explore: email_messages {}

explore: email_messages_schedule {}

explore: email_opened_stats {}

explore: email_opened_stats_detail {
  join: group_types {
    type: left_outer
    sql_on: ${email_opened_stats_detail.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }
}

explore: email_send_log {}

explore: email_send_log_id {}

explore: email_settings {}

explore: email_templates {}

explore: exchange_rate {}

explore: faq {
  join: faqgroup {
    type: left_outer
    sql_on: ${faq.faqgroup_id} = ${faqgroup.faqgroup_id} ;;
    relationship: many_to_one
  }
}

explore: faq_locale {
  join: faq {
    type: left_outer
    sql_on: ${faq_locale.faqid} = ${faq.faqid} ;;
    relationship: many_to_one
  }

  join: faqgroup {
    type: left_outer
    sql_on: ${faq.faqgroup_id} = ${faqgroup.faqgroup_id} ;;
    relationship: many_to_one
  }
}

explore: faqgroup {}

explore: faqgroup_locale {
  join: faqgroup {
    type: left_outer
    sql_on: ${faqgroup_locale.faqgroup_id} = ${faqgroup.faqgroup_id} ;;
    relationship: many_to_one
  }
}

explore: file_group {}

explore: files {}

explore: files_calendar_xref {
  join: calendar {
    type: left_outer
    sql_on: ${files_calendar_xref.calendar_id} = ${calendar.calendar_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${files_calendar_xref.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }
}

explore: files_catalog_xref {
  join: catalog {
    type: left_outer
    sql_on: ${files_catalog_xref.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${files_catalog_xref.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${catalog.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }
}

explore: files_category_xref {
  join: files {
    type: left_outer
    sql_on: ${files_category_xref.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }
}

explore: files_dx_page_block_xref {
  join: files {
    type: left_outer
    sql_on: ${files_dx_page_block_xref.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }
}

explore: files_file_group_xref {
  join: files {
    type: left_outer
    sql_on: ${files_file_group_xref.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: file_group {
    type: left_outer
    sql_on: ${files_file_group_xref.file_group_id} = ${file_group.file_group_id} ;;
    relationship: many_to_one
  }
}

explore: files_inventory_xref {
  join: inventory {
    type: left_outer
    sql_on: ${files_inventory_xref.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${files_inventory_xref.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${inventory.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${inventory.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }
}

explore: files_locale {
  join: files {
    type: left_outer
    sql_on: ${files_locale.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }
}

explore: files_members_xref {
  join: members {
    type: left_outer
    sql_on: ${files_members_xref.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${files_members_xref.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${members.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }
}

explore: files_xref {
  join: files {
    type: left_outer
    sql_on: ${files_xref.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${files_xref.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: catalog {
    type: left_outer
    sql_on: ${files_xref.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: calendar {
    type: left_outer
    sql_on: ${files_xref.calendar_id} = ${calendar.calendar_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${inventory.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${inventory.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }
}

explore: gift_card_stack {
  join: order_payment {
    type: left_outer
    sql_on: ${gift_card_stack.order_payment_id} = ${order_payment.order_payment_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${order_payment.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${order_payment.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: reason_code {
    type: left_outer
    sql_on: ${order_payment.reason_code_id} = ${reason_code.reason_code_id} ;;
    relationship: many_to_one
  }

  join: order_payment_method {
    type: left_outer
    sql_on: ${order_payment.order_payment_method_id} = ${order_payment_method.order_payment_method_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }
}

explore: gift_certificate_adjustments {
  join: gift_certificate_issued {
    type: left_outer
    sql_on: ${gift_certificate_adjustments.gift_certificate_issued_id} = ${gift_certificate_issued.gift_certificate_issued_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${gift_certificate_adjustments.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: order_line_detail {
    type: left_outer
    sql_on: ${gift_certificate_issued.order_line_detail_id} = ${order_line_detail.order_line_detail_id} ;;
    relationship: many_to_one
  }

  join: order_line {
    type: left_outer
    sql_on: ${order_line_detail.order_line_id} = ${order_line.original_order_line_id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${order_line_detail.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: order_shipping_info {
    type: left_outer
    sql_on: ${order_line_detail.order_shipping_info_id} = ${order_shipping_info.order_shipping_info_id} ;;
    relationship: many_to_one
  }

  join: kit_line {
    type: left_outer
    sql_on: ${order_line_detail.kit_line_id} = ${kit_line.kit_line_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_line_detail.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${order_line.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: catalog {
    type: left_outer
    sql_on: ${order_line.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${order_line.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: reason_code {
    type: left_outer
    sql_on: ${order_line.reason_code_id} = ${reason_code.reason_code_id} ;;
    relationship: many_to_one
  }

  join: disposition_code {
    type: left_outer
    sql_on: ${order_line.disposition_code_id} = ${disposition_code.disposition_code_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }

  join: ship_methods {
    type: left_outer
    sql_on: ${order_shipping_info.ship_method_id} = ${ship_methods.ship_method_id} ;;
    relationship: many_to_one
  }

  join: order_payment {
    type: left_outer
    sql_on: ${order_shipping_info.order_payment_id} = ${order_payment.order_payment_id} ;;
    relationship: many_to_one
  }

  join: order_payment_method {
    type: left_outer
    sql_on: ${order_payment.order_payment_method_id} = ${order_payment_method.order_payment_method_id} ;;
    relationship: many_to_one
  }

  join: kit_header {
    type: left_outer
    sql_on: ${kit_line.kit_header_id} = ${kit_header.kit_header_id} ;;
    relationship: many_to_one
  }

  join: kit_placement {
    type: left_outer
    sql_on: ${kit_line.kit_placement_id} = ${kit_placement.kit_placement_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }
}

explore: gift_certificate_issued {
  join: order_line_detail {
    type: left_outer
    sql_on: ${gift_certificate_issued.order_line_detail_id} = ${order_line_detail.order_line_detail_id} ;;
    relationship: many_to_one
  }

  join: order_line {
    type: left_outer
    sql_on: ${order_line_detail.order_line_id} = ${order_line.original_order_line_id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${order_line_detail.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: order_shipping_info {
    type: left_outer
    sql_on: ${order_line_detail.order_shipping_info_id} = ${order_shipping_info.order_shipping_info_id} ;;
    relationship: many_to_one
  }

  join: kit_line {
    type: left_outer
    sql_on: ${order_line_detail.kit_line_id} = ${kit_line.kit_line_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_line_detail.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${order_line.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: catalog {
    type: left_outer
    sql_on: ${order_line.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${order_line.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: reason_code {
    type: left_outer
    sql_on: ${order_line.reason_code_id} = ${reason_code.reason_code_id} ;;
    relationship: many_to_one
  }

  join: disposition_code {
    type: left_outer
    sql_on: ${order_line.disposition_code_id} = ${disposition_code.disposition_code_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }

  join: ship_methods {
    type: left_outer
    sql_on: ${order_shipping_info.ship_method_id} = ${ship_methods.ship_method_id} ;;
    relationship: many_to_one
  }

  join: order_payment {
    type: left_outer
    sql_on: ${order_shipping_info.order_payment_id} = ${order_payment.order_payment_id} ;;
    relationship: many_to_one
  }

  join: order_payment_method {
    type: left_outer
    sql_on: ${order_payment.order_payment_method_id} = ${order_payment_method.order_payment_method_id} ;;
    relationship: many_to_one
  }

  join: kit_header {
    type: left_outer
    sql_on: ${kit_line.kit_header_id} = ${kit_header.kit_header_id} ;;
    relationship: many_to_one
  }

  join: kit_placement {
    type: left_outer
    sql_on: ${kit_line.kit_placement_id} = ${kit_placement.kit_placement_id} ;;
    relationship: many_to_one
  }
}

explore: gift_certificate_types {}

explore: gift_certificates {
  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }
}

explore: gift_certificates_locale {
  join: gift_certificates {
    type: left_outer
    sql_on: ${gift_certificates_locale.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }
}

explore: group_members_xref {
  join: members {
    type: left_outer
    sql_on: ${group_members_xref.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${group_members_xref.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${members.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }
}

explore: group_types {}

explore: group_types_locale {
  join: group_types {
    type: left_outer
    sql_on: ${group_types_locale.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }
}

explore: groups {
  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${groups.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }
}

explore: groups_locale {
  join: groups {
    type: left_outer
    sql_on: ${groups_locale.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${groups.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }
}

explore: groups_marketing_segment_xref {
  join: groups {
    type: left_outer
    sql_on: ${groups_marketing_segment_xref.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${groups.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }
}

explore: inventory {
  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${inventory.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${inventory.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }
}

explore: inventory_activity {
  join: inventory {
    type: left_outer
    sql_on: ${inventory_activity.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: inventory_provider_xref {
    type: left_outer
    sql_on: ${inventory_activity.inventory_provider_xref_id} = ${inventory_provider_xref.inventory_provider_xref_id} ;;
    relationship: many_to_one
  }

  join: inventory_adjustment_types {
    type: left_outer
    sql_on: ${inventory_activity.inventory_adjustment_type_id} = ${inventory_adjustment_types.inventory_adjustment_type_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${inventory.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${inventory.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${inventory_provider_xref.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }
}

explore: inventory_adjustment_types {}

explore: inventory_balance_request {
  join: inventory {
    type: left_outer
    sql_on: ${inventory_balance_request.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: inventory_provider_xref {
    type: left_outer
    sql_on: ${inventory_balance_request.inventory_provider_xref_id} = ${inventory_provider_xref.inventory_provider_xref_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${inventory.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${inventory.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${inventory_provider_xref.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }
}

explore: inventory_catalog_xref {
  join: catalog {
    type: left_outer
    sql_on: ${inventory_catalog_xref.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${inventory_catalog_xref.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${catalog.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }
}

explore: inventory_in_stock_nofication {
  join: inventory {
    type: left_outer
    sql_on: ${inventory_in_stock_nofication.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: catalog {
    type: left_outer
    sql_on: ${inventory_in_stock_nofication.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${inventory_in_stock_nofication.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${inventory_in_stock_nofication.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${inventory.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${inventory.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }
}

explore: inventory_locale {
  join: inventory {
    type: left_outer
    sql_on: ${inventory_locale.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${inventory.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${inventory.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }
}

explore: inventory_provider_xref {
  join: inventory {
    type: left_outer
    sql_on: ${inventory_provider_xref.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${inventory_provider_xref.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${inventory.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${inventory.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }
}

explore: inventory_size {}

explore: inventory_size_locale {}

explore: inventory_suppliers_xref {
  join: inventory {
    type: left_outer
    sql_on: ${inventory_suppliers_xref.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: suppliers {
    type: left_outer
    sql_on: ${inventory_suppliers_xref.supplier_id} = ${suppliers.supplier_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${inventory.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${inventory.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }
}

explore: inventory_sync_history {
  join: inventory_provider_xref {
    type: left_outer
    sql_on: ${inventory_sync_history.inventory_provider_xref_id} = ${inventory_provider_xref.inventory_provider_xref_id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${inventory_sync_history.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${inventory_sync_history.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${inventory.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${inventory.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }
}

explore: inventory_transaction_log {
  join: inventory {
    type: left_outer
    sql_on: ${inventory_transaction_log.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${inventory_transaction_log.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${inventory.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${inventory.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }
}

explore: ipfilter_rule {}

explore: ipfilter_rule_country_xref {
  join: ipfilter_rule {
    type: left_outer
    sql_on: ${ipfilter_rule_country_xref.ipfilter_rule_id} = ${ipfilter_rule.ipfilter_rule_id} ;;
    relationship: many_to_one
  }
}

explore: ipfilter_rule_ip_xref {
  join: ipfilter_rule {
    type: left_outer
    sql_on: ${ipfilter_rule_ip_xref.ipfilter_rule_id} = ${ipfilter_rule.ipfilter_rule_id} ;;
    relationship: many_to_one
  }
}

explore: issued_gift_card {
  join: order_line_detail {
    type: left_outer
    sql_on: ${issued_gift_card.order_line_detail_id} = ${order_line_detail.order_line_detail_id} ;;
    relationship: many_to_one
  }

  join: order_line {
    type: left_outer
    sql_on: ${order_line_detail.order_line_id} = ${order_line.original_order_line_id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${order_line_detail.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: order_shipping_info {
    type: left_outer
    sql_on: ${order_line_detail.order_shipping_info_id} = ${order_shipping_info.order_shipping_info_id} ;;
    relationship: many_to_one
  }

  join: kit_line {
    type: left_outer
    sql_on: ${order_line_detail.kit_line_id} = ${kit_line.kit_line_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_line_detail.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${order_line.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: catalog {
    type: left_outer
    sql_on: ${order_line.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${order_line.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: reason_code {
    type: left_outer
    sql_on: ${order_line.reason_code_id} = ${reason_code.reason_code_id} ;;
    relationship: many_to_one
  }

  join: disposition_code {
    type: left_outer
    sql_on: ${order_line.disposition_code_id} = ${disposition_code.disposition_code_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }

  join: ship_methods {
    type: left_outer
    sql_on: ${order_shipping_info.ship_method_id} = ${ship_methods.ship_method_id} ;;
    relationship: many_to_one
  }

  join: order_payment {
    type: left_outer
    sql_on: ${order_shipping_info.order_payment_id} = ${order_payment.order_payment_id} ;;
    relationship: many_to_one
  }

  join: order_payment_method {
    type: left_outer
    sql_on: ${order_payment.order_payment_method_id} = ${order_payment_method.order_payment_method_id} ;;
    relationship: many_to_one
  }

  join: kit_header {
    type: left_outer
    sql_on: ${kit_line.kit_header_id} = ${kit_header.kit_header_id} ;;
    relationship: many_to_one
  }

  join: kit_placement {
    type: left_outer
    sql_on: ${kit_line.kit_placement_id} = ${kit_placement.kit_placement_id} ;;
    relationship: many_to_one
  }
}

explore: item_type {}

explore: item_type_locale {
  join: item_type {
    type: left_outer
    sql_on: ${item_type_locale.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }
}

explore: kit_header {
  join: inventory {
    type: left_outer
    sql_on: ${kit_header.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${inventory.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${inventory.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }
}

explore: kit_line {
  join: inventory {
    type: left_outer
    sql_on: ${kit_line.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: kit_header {
    type: left_outer
    sql_on: ${kit_line.kit_header_id} = ${kit_header.kit_header_id} ;;
    relationship: many_to_one
  }

  join: kit_placement {
    type: left_outer
    sql_on: ${kit_line.kit_placement_id} = ${kit_placement.kit_placement_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${inventory.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${inventory.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }
}

explore: kit_placement {}

explore: location {}

explore: location_locale {
  join: location {
    type: left_outer
    sql_on: ${location_locale.location_id} = ${location.location_id} ;;
    relationship: many_to_one
  }
}

explore: logistics {
  join: providers {
    type: left_outer
    sql_on: ${logistics.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${providers.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }
}

explore: manufacturer {
  join: dynamic_record {
    type: left_outer
    sql_on: ${manufacturer.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }
}

explore: manufacturer_locale {
  join: manufacturer {
    type: left_outer
    sql_on: ${manufacturer_locale.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${manufacturer.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }
}

explore: marketing_campaign {
  join: dynamic_record {
    type: left_outer
    sql_on: ${marketing_campaign.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }
}

explore: marketing_campaign_locale {}

explore: marketing_campaign_members_xref {
  join: members {
    type: left_outer
    sql_on: ${marketing_campaign_members_xref.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${members.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }
}

explore: marketing_offer {
  join: order_sources {
    type: left_outer
    sql_on: ${marketing_offer.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${marketing_offer.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }
}

explore: marketing_offer_locale {}

explore: marketing_segment {
  join: dynamic_record {
    type: left_outer
    sql_on: ${marketing_segment.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }
}

explore: marketing_segment_locale {}

explore: marketing_source {
  join: dynamic_record {
    type: left_outer
    sql_on: ${marketing_source.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }
}

explore: marketing_source_locale {
  join: marketing_source {
    type: left_outer
    sql_on: ${marketing_source_locale.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${marketing_source.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }
}

explore: member_affiliate_commission_types_xref {
  join: members {
    type: left_outer
    sql_on: ${member_affiliate_commission_types_xref.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${member_affiliate_commission_types_xref.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${members.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }
}

explore: member_affiliates_xref {
  join: members {
    type: left_outer
    sql_on: ${member_affiliates_xref.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${members.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }
}

explore: member_budget {
  join: affiliate_commission {
    type: left_outer
    sql_on: ${member_budget.affiliate_commission_id} = ${affiliate_commission.affiliate_commission_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${member_budget.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: order_shipments {
    type: left_outer
    sql_on: ${affiliate_commission.order_shipment_id} = ${order_shipments.order_shipment_id} ;;
    relationship: many_to_one
  }

  join: order_line_detail {
    type: left_outer
    sql_on: ${order_shipments.order_line_detail_id} = ${order_line_detail.order_line_detail_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_shipments.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_payment {
    type: left_outer
    sql_on: ${order_shipments.order_payment_id} = ${order_payment.order_payment_id} ;;
    relationship: many_to_one
  }

  join: shipment_cancellation_reasons {
    type: left_outer
    sql_on: ${order_shipments.shipment_cancellation_reasons_id} = ${shipment_cancellation_reasons.shipment_cancellation_reasons_id} ;;
    relationship: many_to_one
  }

  join: shipment_rejection_reasons {
    type: left_outer
    sql_on: ${order_shipments.shipment_rejection_reasons_id} = ${shipment_rejection_reasons.shipment_rejection_reasons_id} ;;
    relationship: many_to_one
  }

  join: order_line {
    type: left_outer
    sql_on: ${order_line_detail.order_line_id} = ${order_line.original_order_line_id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${order_line_detail.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: order_shipping_info {
    type: left_outer
    sql_on: ${order_line_detail.order_shipping_info_id} = ${order_shipping_info.order_shipping_info_id} ;;
    relationship: many_to_one
  }

  join: kit_line {
    type: left_outer
    sql_on: ${order_line_detail.kit_line_id} = ${kit_line.kit_line_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_line_detail.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${order_line.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: catalog {
    type: left_outer
    sql_on: ${order_line.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${order_line.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: reason_code {
    type: left_outer
    sql_on: ${order_line.reason_code_id} = ${reason_code.reason_code_id} ;;
    relationship: many_to_one
  }

  join: disposition_code {
    type: left_outer
    sql_on: ${order_line.disposition_code_id} = ${disposition_code.disposition_code_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }

  join: ship_methods {
    type: left_outer
    sql_on: ${order_shipping_info.ship_method_id} = ${ship_methods.ship_method_id} ;;
    relationship: many_to_one
  }

  join: kit_header {
    type: left_outer
    sql_on: ${kit_line.kit_header_id} = ${kit_header.kit_header_id} ;;
    relationship: many_to_one
  }

  join: kit_placement {
    type: left_outer
    sql_on: ${kit_line.kit_placement_id} = ${kit_placement.kit_placement_id} ;;
    relationship: many_to_one
  }

  join: order_payment_method {
    type: left_outer
    sql_on: ${order_payment.order_payment_method_id} = ${order_payment_method.order_payment_method_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }
}

explore: member_complaint_categories {}

explore: member_complaints {}

explore: member_notes {
  join: members {
    type: left_outer
    sql_on: ${member_notes.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${member_notes.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: member_complaints {
    type: left_outer
    sql_on: ${member_notes.member_complaint_id} = ${member_complaints.member_complaint_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${members.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }
}

explore: member_social_network_x_ref {
  join: members {
    type: left_outer
    sql_on: ${member_social_network_x_ref.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${members.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }
}

explore: member_sources {}

explore: member_type_ship_methods_xref {
  join: member_types {
    type: left_outer
    sql_on: ${member_type_ship_methods_xref.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: ship_methods {
    type: left_outer
    sql_on: ${member_type_ship_methods_xref.ship_method_id} = ${ship_methods.ship_method_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${member_types.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }
}

explore: member_types {
  join: dynamic_record {
    type: left_outer
    sql_on: ${member_types.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }
}

explore: member_types_locale {
  join: member_types {
    type: left_outer
    sql_on: ${member_types_locale.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${member_types.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }
}

explore: member_wish_list {
  join: members {
    type: left_outer
    sql_on: ${member_wish_list.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${members.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }
}

explore: member_wish_list_item {
  join: catalog {
    type: left_outer
    sql_on: ${member_wish_list_item.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${member_wish_list_item.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${member_wish_list_item.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${catalog.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }
}

explore: member_wish_list_share {}

explore: members {
  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${members.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }
}

explore: members_marketing_segment_xref {
  join: members {
    type: left_outer
    sql_on: ${members_marketing_segment_xref.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${members.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }
}

explore: members_password_history {
  join: members {
    type: left_outer
    sql_on: ${members_password_history.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${members.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }
}

explore: members_payment_types_xref {
  join: members {
    type: left_outer
    sql_on: ${members_payment_types_xref.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${members.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }
}

explore: members_registered_product_xref {
  join: members {
    type: left_outer
    sql_on: ${members_registered_product_xref.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: catalog {
    type: left_outer
    sql_on: ${members_registered_product_xref.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${members_registered_product_xref.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: registered_product_sources {
    type: left_outer
    sql_on: ${members_registered_product_xref.registered_product_source_id} = ${registered_product_sources.registered_product_source_id} ;;
    relationship: many_to_one
  }

  join: order_line_detail {
    type: left_outer
    sql_on: ${members_registered_product_xref.order_line_detail_id} = ${order_line_detail.order_line_detail_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }

  join: order_line {
    type: left_outer
    sql_on: ${order_line_detail.order_line_id} = ${order_line.original_order_line_id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${order_line_detail.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: order_shipping_info {
    type: left_outer
    sql_on: ${order_line_detail.order_shipping_info_id} = ${order_shipping_info.order_shipping_info_id} ;;
    relationship: many_to_one
  }

  join: kit_line {
    type: left_outer
    sql_on: ${order_line_detail.kit_line_id} = ${kit_line.kit_line_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${order_line.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: reason_code {
    type: left_outer
    sql_on: ${order_line.reason_code_id} = ${reason_code.reason_code_id} ;;
    relationship: many_to_one
  }

  join: disposition_code {
    type: left_outer
    sql_on: ${order_line.disposition_code_id} = ${disposition_code.disposition_code_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }

  join: ship_methods {
    type: left_outer
    sql_on: ${order_shipping_info.ship_method_id} = ${ship_methods.ship_method_id} ;;
    relationship: many_to_one
  }

  join: order_payment {
    type: left_outer
    sql_on: ${order_shipping_info.order_payment_id} = ${order_payment.order_payment_id} ;;
    relationship: many_to_one
  }

  join: order_payment_method {
    type: left_outer
    sql_on: ${order_payment.order_payment_method_id} = ${order_payment_method.order_payment_method_id} ;;
    relationship: many_to_one
  }

  join: kit_header {
    type: left_outer
    sql_on: ${kit_line.kit_header_id} = ${kit_header.kit_header_id} ;;
    relationship: many_to_one
  }

  join: kit_placement {
    type: left_outer
    sql_on: ${kit_line.kit_placement_id} = ${kit_placement.kit_placement_id} ;;
    relationship: many_to_one
  }
}

explore: members_sales_territories_xref {
  join: members {
    type: left_outer
    sql_on: ${members_sales_territories_xref.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members_sales_territories_xref.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${members.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }
}

explore: members_warranties_xref {
  join: catalog {
    type: left_outer
    sql_on: ${members_warranties_xref.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${catalog.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }
}

explore: message_types_xmlsearch_xref {}

explore: my_test {}

explore: order_address {
  join: order_header {
    type: left_outer
    sql_on: ${order_address.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }
}

explore: order_address_history {
  join: order_address {
    type: left_outer
    sql_on: ${order_address_history.order_address_id} = ${order_address.order_address_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${order_address_history.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }
}

explore: order_address_validation_matches {
  join: order_address {
    type: left_outer
    sql_on: ${order_address_validation_matches.order_address_id} = ${order_address.order_address_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${order_address.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }
}

explore: order_audit {
  join: order_header {
    type: left_outer
    sql_on: ${order_audit.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }
}

explore: order_audit_reference {
  join: order_audit {
    type: left_outer
    sql_on: ${order_audit_reference.order_audit_id} = ${order_audit.order_audit_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${order_audit.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }
}

explore: order_exceptions {
  join: order_header {
    type: left_outer
    sql_on: ${order_exceptions.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: payment_exceptions {
    type: left_outer
    sql_on: ${order_exceptions.payment_exception_id} = ${payment_exceptions.payment_exception_id} ;;
    relationship: many_to_one
  }

  join: order_payment {
    type: left_outer
    sql_on: ${order_exceptions.order_payment_id} = ${order_payment.order_payment_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${order_payment.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: reason_code {
    type: left_outer
    sql_on: ${order_payment.reason_code_id} = ${reason_code.reason_code_id} ;;
    relationship: many_to_one
  }

  join: order_payment_method {
    type: left_outer
    sql_on: ${order_payment.order_payment_method_id} = ${order_payment_method.order_payment_method_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }
}

explore: order_header {
  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }
}

explore: order_header_promotion {
  join: order_header {
    type: left_outer
    sql_on: ${order_header_promotion.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }
}

explore: order_invoice {
  join: order_address {
    type: left_outer
    sql_on: ${order_invoice.order_address_id} = ${order_address.order_address_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${order_address.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }
}

explore: order_line {
  join: order_header {
    type: left_outer
    sql_on: ${order_line.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${order_line.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: catalog {
    type: left_outer
    sql_on: ${order_line.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${order_line.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: reason_code {
    type: left_outer
    sql_on: ${order_line.reason_code_id} = ${reason_code.reason_code_id} ;;
    relationship: many_to_one
  }

  join: disposition_code {
    type: left_outer
    sql_on: ${order_line.disposition_code_id} = ${disposition_code.disposition_code_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_line.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${inventory.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }
}

explore: order_line_detail {
  join: order_line {
    type: left_outer
    sql_on: ${order_line_detail.order_line_id} = ${order_line.original_order_line_id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${order_line_detail.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: order_shipping_info {
    type: left_outer
    sql_on: ${order_line_detail.order_shipping_info_id} = ${order_shipping_info.order_shipping_info_id} ;;
    relationship: many_to_one
  }

  join: kit_line {
    type: left_outer
    sql_on: ${order_line_detail.kit_line_id} = ${kit_line.kit_line_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_line_detail.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${order_line.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: catalog {
    type: left_outer
    sql_on: ${order_line.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${order_line.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: reason_code {
    type: left_outer
    sql_on: ${order_line.reason_code_id} = ${reason_code.reason_code_id} ;;
    relationship: many_to_one
  }

  join: disposition_code {
    type: left_outer
    sql_on: ${order_line.disposition_code_id} = ${disposition_code.disposition_code_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }

  join: ship_methods {
    type: left_outer
    sql_on: ${order_shipping_info.ship_method_id} = ${ship_methods.ship_method_id} ;;
    relationship: many_to_one
  }

  join: order_payment {
    type: left_outer
    sql_on: ${order_shipping_info.order_payment_id} = ${order_payment.order_payment_id} ;;
    relationship: many_to_one
  }

  join: order_payment_method {
    type: left_outer
    sql_on: ${order_payment.order_payment_method_id} = ${order_payment_method.order_payment_method_id} ;;
    relationship: many_to_one
  }

  join: kit_header {
    type: left_outer
    sql_on: ${kit_line.kit_header_id} = ${kit_header.kit_header_id} ;;
    relationship: many_to_one
  }

  join: kit_placement {
    type: left_outer
    sql_on: ${kit_line.kit_placement_id} = ${kit_placement.kit_placement_id} ;;
    relationship: many_to_one
  }
}

explore: order_line_detail_gift_certificate_xref {
  join: order_line_detail {
    type: left_outer
    sql_on: ${order_line_detail_gift_certificate_xref.order_line_detail_id} = ${order_line_detail.order_line_detail_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${order_line_detail_gift_certificate_xref.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: order_line {
    type: left_outer
    sql_on: ${order_line_detail.order_line_id} = ${order_line.original_order_line_id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${order_line_detail.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: order_shipping_info {
    type: left_outer
    sql_on: ${order_line_detail.order_shipping_info_id} = ${order_shipping_info.order_shipping_info_id} ;;
    relationship: many_to_one
  }

  join: kit_line {
    type: left_outer
    sql_on: ${order_line_detail.kit_line_id} = ${kit_line.kit_line_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_line_detail.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${order_line.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: catalog {
    type: left_outer
    sql_on: ${order_line.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${order_line.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: reason_code {
    type: left_outer
    sql_on: ${order_line.reason_code_id} = ${reason_code.reason_code_id} ;;
    relationship: many_to_one
  }

  join: disposition_code {
    type: left_outer
    sql_on: ${order_line.disposition_code_id} = ${disposition_code.disposition_code_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }

  join: ship_methods {
    type: left_outer
    sql_on: ${order_shipping_info.ship_method_id} = ${ship_methods.ship_method_id} ;;
    relationship: many_to_one
  }

  join: order_payment {
    type: left_outer
    sql_on: ${order_shipping_info.order_payment_id} = ${order_payment.order_payment_id} ;;
    relationship: many_to_one
  }

  join: order_payment_method {
    type: left_outer
    sql_on: ${order_payment.order_payment_method_id} = ${order_payment_method.order_payment_method_id} ;;
    relationship: many_to_one
  }

  join: kit_header {
    type: left_outer
    sql_on: ${kit_line.kit_header_id} = ${kit_header.kit_header_id} ;;
    relationship: many_to_one
  }

  join: kit_placement {
    type: left_outer
    sql_on: ${kit_line.kit_placement_id} = ${kit_placement.kit_placement_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }
}

explore: order_line_detail_history {
  join: order_line_detail {
    type: left_outer
    sql_on: ${order_line_detail_history.order_line_detail_id} = ${order_line_detail.order_line_detail_id} ;;
    relationship: many_to_one
  }

  join: order_line {
    type: left_outer
    sql_on: ${order_line_detail_history.order_line_id} = ${order_line.original_order_line_id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${order_line_detail_history.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: order_shipping_info {
    type: left_outer
    sql_on: ${order_line_detail_history.order_shipping_info_id} = ${order_shipping_info.order_shipping_info_id} ;;
    relationship: many_to_one
  }

  join: kit_line {
    type: left_outer
    sql_on: ${order_line_detail_history.kit_line_id} = ${kit_line.kit_line_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_line_detail_history.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${order_line.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: catalog {
    type: left_outer
    sql_on: ${order_line.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${order_line.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: reason_code {
    type: left_outer
    sql_on: ${order_line.reason_code_id} = ${reason_code.reason_code_id} ;;
    relationship: many_to_one
  }

  join: disposition_code {
    type: left_outer
    sql_on: ${order_line.disposition_code_id} = ${disposition_code.disposition_code_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }

  join: ship_methods {
    type: left_outer
    sql_on: ${order_shipping_info.ship_method_id} = ${ship_methods.ship_method_id} ;;
    relationship: many_to_one
  }

  join: order_payment {
    type: left_outer
    sql_on: ${order_shipping_info.order_payment_id} = ${order_payment.order_payment_id} ;;
    relationship: many_to_one
  }

  join: order_payment_method {
    type: left_outer
    sql_on: ${order_payment.order_payment_method_id} = ${order_payment_method.order_payment_method_id} ;;
    relationship: many_to_one
  }

  join: kit_header {
    type: left_outer
    sql_on: ${kit_line.kit_header_id} = ${kit_header.kit_header_id} ;;
    relationship: many_to_one
  }

  join: kit_placement {
    type: left_outer
    sql_on: ${kit_line.kit_placement_id} = ${kit_placement.kit_placement_id} ;;
    relationship: many_to_one
  }
}

explore: order_notes {
  join: order_header {
    type: left_outer
    sql_on: ${order_notes.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: asnheader {
    type: left_outer
    sql_on: ${order_notes.asnheader_id} = ${asnheader.asnheader_id} ;;
    relationship: many_to_one
  }

  join: asnline {
    type: left_outer
    sql_on: ${order_notes.asnline_id} = ${asnline.asnline_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: purchase_order_header {
    type: left_outer
    sql_on: ${asnheader.purchase_order_header_id} = ${purchase_order_header.purchase_order_header_id} ;;
    relationship: many_to_one
  }

  join: suppliers {
    type: left_outer
    sql_on: ${purchase_order_header.supplier_id} = ${suppliers.supplier_id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${asnline.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${inventory.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }
}

explore: order_payment {
  join: order_header {
    type: left_outer
    sql_on: ${order_payment.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${order_payment.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: reason_code {
    type: left_outer
    sql_on: ${order_payment.reason_code_id} = ${reason_code.reason_code_id} ;;
    relationship: many_to_one
  }

  join: order_payment_method {
    type: left_outer
    sql_on: ${order_payment.order_payment_method_id} = ${order_payment_method.order_payment_method_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }
}

explore: order_payment_method {
  join: order_header {
    type: left_outer
    sql_on: ${order_payment_method.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }
}

explore: order_shipments {
  join: order_line_detail {
    type: left_outer
    sql_on: ${order_shipments.order_line_detail_id} = ${order_line_detail.order_line_detail_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_shipments.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_payment {
    type: left_outer
    sql_on: ${order_shipments.order_payment_id} = ${order_payment.order_payment_id} ;;
    relationship: many_to_one
  }

  join: shipment_cancellation_reasons {
    type: left_outer
    sql_on: ${order_shipments.shipment_cancellation_reasons_id} = ${shipment_cancellation_reasons.shipment_cancellation_reasons_id} ;;
    relationship: many_to_one
  }

  join: shipment_rejection_reasons {
    type: left_outer
    sql_on: ${order_shipments.shipment_rejection_reasons_id} = ${shipment_rejection_reasons.shipment_rejection_reasons_id} ;;
    relationship: many_to_one
  }

  join: order_line {
    type: left_outer
    sql_on: ${order_line_detail.order_line_id} = ${order_line.original_order_line_id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${order_line_detail.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: order_shipping_info {
    type: left_outer
    sql_on: ${order_line_detail.order_shipping_info_id} = ${order_shipping_info.order_shipping_info_id} ;;
    relationship: many_to_one
  }

  join: kit_line {
    type: left_outer
    sql_on: ${order_line_detail.kit_line_id} = ${kit_line.kit_line_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_line_detail.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${order_line.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: catalog {
    type: left_outer
    sql_on: ${order_line.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${order_line.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: reason_code {
    type: left_outer
    sql_on: ${order_line.reason_code_id} = ${reason_code.reason_code_id} ;;
    relationship: many_to_one
  }

  join: disposition_code {
    type: left_outer
    sql_on: ${order_line.disposition_code_id} = ${disposition_code.disposition_code_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }

  join: ship_methods {
    type: left_outer
    sql_on: ${order_shipping_info.ship_method_id} = ${ship_methods.ship_method_id} ;;
    relationship: many_to_one
  }

  join: kit_header {
    type: left_outer
    sql_on: ${kit_line.kit_header_id} = ${kit_header.kit_header_id} ;;
    relationship: many_to_one
  }

  join: kit_placement {
    type: left_outer
    sql_on: ${kit_line.kit_placement_id} = ${kit_placement.kit_placement_id} ;;
    relationship: many_to_one
  }

  join: order_payment_method {
    type: left_outer
    sql_on: ${order_payment.order_payment_method_id} = ${order_payment_method.order_payment_method_id} ;;
    relationship: many_to_one
  }
}

explore: order_shipments_history {
  join: order_shipments {
    type: left_outer
    sql_on: ${order_shipments_history.order_shipment_id} = ${order_shipments.order_shipment_id} ;;
    relationship: many_to_one
  }

  join: order_line_detail {
    type: left_outer
    sql_on: ${order_shipments_history.order_line_detail_id} = ${order_line_detail.order_line_detail_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_shipments_history.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_payment {
    type: left_outer
    sql_on: ${order_shipments.order_payment_id} = ${order_payment.order_payment_id} ;;
    relationship: many_to_one
  }

  join: shipment_cancellation_reasons {
    type: left_outer
    sql_on: ${order_shipments.shipment_cancellation_reasons_id} = ${shipment_cancellation_reasons.shipment_cancellation_reasons_id} ;;
    relationship: many_to_one
  }

  join: shipment_rejection_reasons {
    type: left_outer
    sql_on: ${order_shipments.shipment_rejection_reasons_id} = ${shipment_rejection_reasons.shipment_rejection_reasons_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${order_payment.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${order_payment.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: reason_code {
    type: left_outer
    sql_on: ${order_payment.reason_code_id} = ${reason_code.reason_code_id} ;;
    relationship: many_to_one
  }

  join: order_payment_method {
    type: left_outer
    sql_on: ${order_payment.order_payment_method_id} = ${order_payment_method.order_payment_method_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }

  join: order_line {
    type: left_outer
    sql_on: ${order_line_detail.order_line_id} = ${order_line.original_order_line_id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${order_line_detail.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: order_shipping_info {
    type: left_outer
    sql_on: ${order_line_detail.order_shipping_info_id} = ${order_shipping_info.order_shipping_info_id} ;;
    relationship: many_to_one
  }

  join: kit_line {
    type: left_outer
    sql_on: ${order_line_detail.kit_line_id} = ${kit_line.kit_line_id} ;;
    relationship: many_to_one
  }

  join: catalog {
    type: left_outer
    sql_on: ${order_line.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: disposition_code {
    type: left_outer
    sql_on: ${order_line.disposition_code_id} = ${disposition_code.disposition_code_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }

  join: ship_methods {
    type: left_outer
    sql_on: ${order_shipping_info.ship_method_id} = ${ship_methods.ship_method_id} ;;
    relationship: many_to_one
  }

  join: kit_header {
    type: left_outer
    sql_on: ${kit_line.kit_header_id} = ${kit_header.kit_header_id} ;;
    relationship: many_to_one
  }

  join: kit_placement {
    type: left_outer
    sql_on: ${kit_line.kit_placement_id} = ${kit_placement.kit_placement_id} ;;
    relationship: many_to_one
  }
}

explore: order_shipments_lot_serial_xref {
  join: order_shipments {
    type: left_outer
    sql_on: ${order_shipments_lot_serial_xref.order_shipment_id} = ${order_shipments.order_shipment_id} ;;
    relationship: many_to_one
  }

  join: order_line_detail {
    type: left_outer
    sql_on: ${order_shipments.order_line_detail_id} = ${order_line_detail.order_line_detail_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_shipments.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_payment {
    type: left_outer
    sql_on: ${order_shipments.order_payment_id} = ${order_payment.order_payment_id} ;;
    relationship: many_to_one
  }

  join: shipment_cancellation_reasons {
    type: left_outer
    sql_on: ${order_shipments.shipment_cancellation_reasons_id} = ${shipment_cancellation_reasons.shipment_cancellation_reasons_id} ;;
    relationship: many_to_one
  }

  join: shipment_rejection_reasons {
    type: left_outer
    sql_on: ${order_shipments.shipment_rejection_reasons_id} = ${shipment_rejection_reasons.shipment_rejection_reasons_id} ;;
    relationship: many_to_one
  }

  join: order_line {
    type: left_outer
    sql_on: ${order_line_detail.order_line_id} = ${order_line.original_order_line_id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${order_line_detail.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: order_shipping_info {
    type: left_outer
    sql_on: ${order_line_detail.order_shipping_info_id} = ${order_shipping_info.order_shipping_info_id} ;;
    relationship: many_to_one
  }

  join: kit_line {
    type: left_outer
    sql_on: ${order_line_detail.kit_line_id} = ${kit_line.kit_line_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_line_detail.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${order_line.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: catalog {
    type: left_outer
    sql_on: ${order_line.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${order_line.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: reason_code {
    type: left_outer
    sql_on: ${order_line.reason_code_id} = ${reason_code.reason_code_id} ;;
    relationship: many_to_one
  }

  join: disposition_code {
    type: left_outer
    sql_on: ${order_line.disposition_code_id} = ${disposition_code.disposition_code_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }

  join: ship_methods {
    type: left_outer
    sql_on: ${order_shipping_info.ship_method_id} = ${ship_methods.ship_method_id} ;;
    relationship: many_to_one
  }

  join: kit_header {
    type: left_outer
    sql_on: ${kit_line.kit_header_id} = ${kit_header.kit_header_id} ;;
    relationship: many_to_one
  }

  join: kit_placement {
    type: left_outer
    sql_on: ${kit_line.kit_placement_id} = ${kit_placement.kit_placement_id} ;;
    relationship: many_to_one
  }

  join: order_payment_method {
    type: left_outer
    sql_on: ${order_payment.order_payment_method_id} = ${order_payment_method.order_payment_method_id} ;;
    relationship: many_to_one
  }
}

explore: order_shipments_order_payment_xref {
  join: order_shipments {
    type: left_outer
    sql_on: ${order_shipments_order_payment_xref.order_shipment_id} = ${order_shipments.order_shipment_id} ;;
    relationship: many_to_one
  }

  join: order_payment {
    type: left_outer
    sql_on: ${order_shipments_order_payment_xref.order_payment_id} = ${order_payment.order_payment_id} ;;
    relationship: many_to_one
  }

  join: order_line_detail {
    type: left_outer
    sql_on: ${order_shipments.order_line_detail_id} = ${order_line_detail.order_line_detail_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_shipments.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: shipment_cancellation_reasons {
    type: left_outer
    sql_on: ${order_shipments.shipment_cancellation_reasons_id} = ${shipment_cancellation_reasons.shipment_cancellation_reasons_id} ;;
    relationship: many_to_one
  }

  join: shipment_rejection_reasons {
    type: left_outer
    sql_on: ${order_shipments.shipment_rejection_reasons_id} = ${shipment_rejection_reasons.shipment_rejection_reasons_id} ;;
    relationship: many_to_one
  }

  join: order_line {
    type: left_outer
    sql_on: ${order_line_detail.order_line_id} = ${order_line.original_order_line_id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${order_line_detail.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: order_shipping_info {
    type: left_outer
    sql_on: ${order_line_detail.order_shipping_info_id} = ${order_shipping_info.order_shipping_info_id} ;;
    relationship: many_to_one
  }

  join: kit_line {
    type: left_outer
    sql_on: ${order_line_detail.kit_line_id} = ${kit_line.kit_line_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_line_detail.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${order_line.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: catalog {
    type: left_outer
    sql_on: ${order_line.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${order_line.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: reason_code {
    type: left_outer
    sql_on: ${order_line.reason_code_id} = ${reason_code.reason_code_id} ;;
    relationship: many_to_one
  }

  join: disposition_code {
    type: left_outer
    sql_on: ${order_line.disposition_code_id} = ${disposition_code.disposition_code_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }

  join: ship_methods {
    type: left_outer
    sql_on: ${order_shipping_info.ship_method_id} = ${ship_methods.ship_method_id} ;;
    relationship: many_to_one
  }

  join: kit_header {
    type: left_outer
    sql_on: ${kit_line.kit_header_id} = ${kit_header.kit_header_id} ;;
    relationship: many_to_one
  }

  join: kit_placement {
    type: left_outer
    sql_on: ${kit_line.kit_placement_id} = ${kit_placement.kit_placement_id} ;;
    relationship: many_to_one
  }

  join: order_payment_method {
    type: left_outer
    sql_on: ${order_payment.order_payment_method_id} = ${order_payment_method.order_payment_method_id} ;;
    relationship: many_to_one
  }
}

explore: order_shipments_status_history {}

explore: order_shipping_info {
  join: order_header {
    type: left_outer
    sql_on: ${order_shipping_info.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: ship_methods {
    type: left_outer
    sql_on: ${order_shipping_info.ship_method_id} = ${ship_methods.ship_method_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_shipping_info.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_payment {
    type: left_outer
    sql_on: ${order_shipping_info.order_payment_id} = ${order_payment.order_payment_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${order_payment.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: reason_code {
    type: left_outer
    sql_on: ${order_payment.reason_code_id} = ${reason_code.reason_code_id} ;;
    relationship: many_to_one
  }

  join: order_payment_method {
    type: left_outer
    sql_on: ${order_payment.order_payment_method_id} = ${order_payment_method.order_payment_method_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }
}

explore: order_shipping_info_history {
  join: order_shipping_info {
    type: left_outer
    sql_on: ${order_shipping_info_history.order_shipping_info_id} = ${order_shipping_info.order_shipping_info_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${order_shipping_info_history.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: ship_methods {
    type: left_outer
    sql_on: ${order_shipping_info_history.ship_method_id} = ${ship_methods.ship_method_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_shipping_info_history.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_payment {
    type: left_outer
    sql_on: ${order_shipping_info.order_payment_id} = ${order_payment.order_payment_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${order_payment.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: reason_code {
    type: left_outer
    sql_on: ${order_payment.reason_code_id} = ${reason_code.reason_code_id} ;;
    relationship: many_to_one
  }

  join: order_payment_method {
    type: left_outer
    sql_on: ${order_payment.order_payment_method_id} = ${order_payment_method.order_payment_method_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }
}

explore: order_shipping_info_order_payment_xref {
  join: order_shipping_info {
    type: left_outer
    sql_on: ${order_shipping_info_order_payment_xref.order_shipping_info_id} = ${order_shipping_info.order_shipping_info_id} ;;
    relationship: many_to_one
  }

  join: order_payment {
    type: left_outer
    sql_on: ${order_shipping_info_order_payment_xref.order_payment_id} = ${order_payment.order_payment_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${order_shipping_info.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: ship_methods {
    type: left_outer
    sql_on: ${order_shipping_info.ship_method_id} = ${ship_methods.ship_method_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_shipping_info.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${order_payment.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: reason_code {
    type: left_outer
    sql_on: ${order_payment.reason_code_id} = ${reason_code.reason_code_id} ;;
    relationship: many_to_one
  }

  join: order_payment_method {
    type: left_outer
    sql_on: ${order_payment.order_payment_method_id} = ${order_payment_method.order_payment_method_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }
}

explore: order_sources {}

explore: order_tax_cache {
  join: order_header {
    type: left_outer
    sql_on: ${order_tax_cache.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }
}

explore: order_tax_detail {
  join: order_header {
    type: left_outer
    sql_on: ${order_tax_detail.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }
}

explore: order_types {}

explore: outgoing_message_control {}

explore: package {
  join: tracking {
    type: left_outer
    sql_on: ${package.tracking_id} = ${tracking.tracking_id} ;;
    relationship: many_to_one
  }

  join: order_shipments {
    type: left_outer
    sql_on: ${package.order_shipment_id} = ${order_shipments.order_shipment_id} ;;
    relationship: many_to_one
  }

  join: order_line_detail {
    type: left_outer
    sql_on: ${package.order_line_detail_id} = ${order_line_detail.order_line_detail_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${tracking.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: order_payment {
    type: left_outer
    sql_on: ${order_shipments.order_payment_id} = ${order_payment.order_payment_id} ;;
    relationship: many_to_one
  }

  join: shipment_cancellation_reasons {
    type: left_outer
    sql_on: ${order_shipments.shipment_cancellation_reasons_id} = ${shipment_cancellation_reasons.shipment_cancellation_reasons_id} ;;
    relationship: many_to_one
  }

  join: shipment_rejection_reasons {
    type: left_outer
    sql_on: ${order_shipments.shipment_rejection_reasons_id} = ${shipment_rejection_reasons.shipment_rejection_reasons_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${order_payment.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: reason_code {
    type: left_outer
    sql_on: ${order_payment.reason_code_id} = ${reason_code.reason_code_id} ;;
    relationship: many_to_one
  }

  join: order_payment_method {
    type: left_outer
    sql_on: ${order_payment.order_payment_method_id} = ${order_payment_method.order_payment_method_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }

  join: order_line {
    type: left_outer
    sql_on: ${order_line_detail.order_line_id} = ${order_line.original_order_line_id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${order_line_detail.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: order_shipping_info {
    type: left_outer
    sql_on: ${order_line_detail.order_shipping_info_id} = ${order_shipping_info.order_shipping_info_id} ;;
    relationship: many_to_one
  }

  join: kit_line {
    type: left_outer
    sql_on: ${order_line_detail.kit_line_id} = ${kit_line.kit_line_id} ;;
    relationship: many_to_one
  }

  join: catalog {
    type: left_outer
    sql_on: ${order_line.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: disposition_code {
    type: left_outer
    sql_on: ${order_line.disposition_code_id} = ${disposition_code.disposition_code_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }

  join: ship_methods {
    type: left_outer
    sql_on: ${order_shipping_info.ship_method_id} = ${ship_methods.ship_method_id} ;;
    relationship: many_to_one
  }

  join: kit_header {
    type: left_outer
    sql_on: ${kit_line.kit_header_id} = ${kit_header.kit_header_id} ;;
    relationship: many_to_one
  }

  join: kit_placement {
    type: left_outer
    sql_on: ${kit_line.kit_placement_id} = ${kit_placement.kit_placement_id} ;;
    relationship: many_to_one
  }
}

explore: payment_exceptions {}

explore: payment_exceptions_locale {
  join: payment_exceptions {
    type: left_outer
    sql_on: ${payment_exceptions_locale.payment_exception_id} = ${payment_exceptions.payment_exception_id} ;;
    relationship: many_to_one
  }
}

explore: payment_info {
  join: members {
    type: left_outer
    sql_on: ${payment_info.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${members.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }
}

explore: portals {
  join: ipfilter_rule {
    type: left_outer
    sql_on: ${portals.ipfilter_rule_id} = ${ipfilter_rule.ipfilter_rule_id} ;;
    relationship: many_to_one
  }
}

explore: price_list_catalog_xref {
  join: price_lists {
    type: left_outer
    sql_on: ${price_list_catalog_xref.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: catalog {
    type: left_outer
    sql_on: ${price_list_catalog_xref.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${catalog.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }
}

explore: price_lists {}

explore: provider_carrier_services {
  join: providers {
    type: left_outer
    sql_on: ${provider_carrier_services.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${providers.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }
}

explore: provider_closed_dates {
  join: providers {
    type: left_outer
    sql_on: ${provider_closed_dates.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${providers.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }
}

explore: provider_daily_schedule {
  join: providers {
    type: left_outer
    sql_on: ${provider_daily_schedule.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${providers.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }
}

explore: provider_default_countries_xref {
  join: providers {
    type: left_outer
    sql_on: ${provider_default_countries_xref.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${providers.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }
}

explore: provider_default_state_prov_xref {
  join: providers {
    type: left_outer
    sql_on: ${provider_default_state_prov_xref.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${providers.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }
}

explore: provider_optimization_audit {
  join: order_shipping_info {
    type: left_outer
    sql_on: ${provider_optimization_audit.order_shipping_info_id} = ${order_shipping_info.order_shipping_info_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${provider_optimization_audit.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${order_shipping_info.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: ship_methods {
    type: left_outer
    sql_on: ${order_shipping_info.ship_method_id} = ${ship_methods.ship_method_id} ;;
    relationship: many_to_one
  }

  join: order_payment {
    type: left_outer
    sql_on: ${order_shipping_info.order_payment_id} = ${order_payment.order_payment_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${order_payment.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: reason_code {
    type: left_outer
    sql_on: ${order_payment.reason_code_id} = ${reason_code.reason_code_id} ;;
    relationship: many_to_one
  }

  join: order_payment_method {
    type: left_outer
    sql_on: ${order_payment.order_payment_method_id} = ${order_payment_method.order_payment_method_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }
}

explore: provider_parameter {
  join: providers {
    type: left_outer
    sql_on: ${provider_parameter.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${providers.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }
}

explore: provider_provider_type {
  join: providers {
    type: left_outer
    sql_on: ${provider_provider_type.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${providers.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }
}

explore: provider_service_xref {
  join: providers {
    type: left_outer
    sql_on: ${provider_service_xref.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: services {
    type: left_outer
    sql_on: ${provider_service_xref.service_id} = ${services.service_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${providers.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }
}

explore: provider_ship_method_time_in_transit {
  join: providers {
    type: left_outer
    sql_on: ${provider_ship_method_time_in_transit.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: ship_methods {
    type: left_outer
    sql_on: ${provider_ship_method_time_in_transit.ship_method_id} = ${ship_methods.ship_method_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${providers.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }
}

explore: provider_transit_zones {
  join: providers {
    type: left_outer
    sql_on: ${provider_transit_zones.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${providers.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }
}

explore: providers {
  join: dynamic_record {
    type: left_outer
    sql_on: ${providers.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }
}

explore: purchase_order_header {
  join: suppliers {
    type: left_outer
    sql_on: ${purchase_order_header.supplier_id} = ${suppliers.supplier_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${suppliers.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }
}

explore: purchase_order_line {
  join: purchase_order_header {
    type: left_outer
    sql_on: ${purchase_order_line.purchase_order_header_id} = ${purchase_order_header.purchase_order_header_id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${purchase_order_line.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${purchase_order_line.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: dynamic_field {
    type: left_outer
    sql_on: ${purchase_order_line.dynamic_field_id} = ${dynamic_field.dynamic_field_id} ;;
    relationship: many_to_one
  }

  join: suppliers {
    type: left_outer
    sql_on: ${purchase_order_header.supplier_id} = ${suppliers.supplier_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${suppliers.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }

  join: dynamic_field_layout {
    type: left_outer
    sql_on: ${dynamic_field.dynamic_field_layout_id} = ${dynamic_field_layout.dynamic_field_layout_id} ;;
    relationship: many_to_one
  }
}

explore: purchase_order_line_detail {
  join: purchase_order_line {
    type: left_outer
    sql_on: ${purchase_order_line_detail.purchase_order_line_id} = ${purchase_order_line.purchase_order_line_id} ;;
    relationship: many_to_one
  }

  join: dynamic_field {
    type: left_outer
    sql_on: ${purchase_order_line_detail.dynamic_field_id} = ${dynamic_field.dynamic_field_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${purchase_order_line_detail.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: purchase_order_header {
    type: left_outer
    sql_on: ${purchase_order_line.purchase_order_header_id} = ${purchase_order_header.purchase_order_header_id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${purchase_order_line.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${purchase_order_line.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: suppliers {
    type: left_outer
    sql_on: ${purchase_order_header.supplier_id} = ${suppliers.supplier_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${suppliers.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }

  join: dynamic_field_layout {
    type: left_outer
    sql_on: ${dynamic_field.dynamic_field_layout_id} = ${dynamic_field_layout.dynamic_field_layout_id} ;;
    relationship: many_to_one
  }
}

explore: quantity_reservation_history {
  join: inventory {
    type: left_outer
    sql_on: ${quantity_reservation_history.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${quantity_reservation_history.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_line_detail {
    type: left_outer
    sql_on: ${quantity_reservation_history.order_line_detail_id} = ${order_line_detail.order_line_detail_id} ;;
    relationship: many_to_one
  }

  join: order_shipments {
    type: left_outer
    sql_on: ${quantity_reservation_history.order_shipment_id} = ${order_shipments.order_shipment_id} ;;
    relationship: many_to_one
  }

  join: order_shipping_info {
    type: left_outer
    sql_on: ${quantity_reservation_history.order_shipping_info_id} = ${order_shipping_info.order_shipping_info_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${inventory.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${inventory.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }

  join: order_line {
    type: left_outer
    sql_on: ${order_line_detail.order_line_id} = ${order_line.original_order_line_id} ;;
    relationship: many_to_one
  }

  join: kit_line {
    type: left_outer
    sql_on: ${order_line_detail.kit_line_id} = ${kit_line.kit_line_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${order_line.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: catalog {
    type: left_outer
    sql_on: ${order_line.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${order_line.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: reason_code {
    type: left_outer
    sql_on: ${order_line.reason_code_id} = ${reason_code.reason_code_id} ;;
    relationship: many_to_one
  }

  join: disposition_code {
    type: left_outer
    sql_on: ${order_line.disposition_code_id} = ${disposition_code.disposition_code_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }

  join: kit_header {
    type: left_outer
    sql_on: ${kit_line.kit_header_id} = ${kit_header.kit_header_id} ;;
    relationship: many_to_one
  }

  join: kit_placement {
    type: left_outer
    sql_on: ${kit_line.kit_placement_id} = ${kit_placement.kit_placement_id} ;;
    relationship: many_to_one
  }

  join: order_payment {
    type: left_outer
    sql_on: ${order_shipments.order_payment_id} = ${order_payment.order_payment_id} ;;
    relationship: many_to_one
  }

  join: shipment_cancellation_reasons {
    type: left_outer
    sql_on: ${order_shipments.shipment_cancellation_reasons_id} = ${shipment_cancellation_reasons.shipment_cancellation_reasons_id} ;;
    relationship: many_to_one
  }

  join: shipment_rejection_reasons {
    type: left_outer
    sql_on: ${order_shipments.shipment_rejection_reasons_id} = ${shipment_rejection_reasons.shipment_rejection_reasons_id} ;;
    relationship: many_to_one
  }

  join: order_payment_method {
    type: left_outer
    sql_on: ${order_payment.order_payment_method_id} = ${order_payment_method.order_payment_method_id} ;;
    relationship: many_to_one
  }

  join: ship_methods {
    type: left_outer
    sql_on: ${order_shipping_info.ship_method_id} = ${ship_methods.ship_method_id} ;;
    relationship: many_to_one
  }
}

explore: reason_code {}

explore: reason_code_locale {
  join: reason_code {
    type: left_outer
    sql_on: ${reason_code_locale.reason_code_id} = ${reason_code.reason_code_id} ;;
    relationship: many_to_one
  }
}

explore: reassignment_rules {
  join: address_types {
    type: left_outer
    sql_on: ${reassignment_rules.address_type_id} = ${address_types.address_type_id} ;;
    relationship: many_to_one
  }
}

explore: registered_product_sources {}

explore: return_order_order_xref {
  join: order_header {
    type: left_outer
    sql_on: ${return_order_order_xref.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }
}

explore: rssfeed_groups {}

explore: rssfeeds {
  join: rssfeed_groups {
    type: left_outer
    sql_on: ${rssfeeds.rssfeed_group_id} = ${rssfeed_groups.rssfeed_group_id} ;;
    relationship: many_to_one
  }
}

explore: sales_relationships {}

explore: sales_relationships_sales_territories_xref {
  join: sales_relationships {
    type: left_outer
    sql_on: ${sales_relationships_sales_territories_xref.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }
}

explore: sales_territories {
  join: distribution_channels {
    type: left_outer
    sql_on: ${sales_territories.distribution_channel_id} = ${distribution_channels.distribution_channel_id} ;;
    relationship: many_to_one
  }
}

explore: search_tracking {
  join: members {
    type: left_outer
    sql_on: ${search_tracking.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${search_tracking.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${members.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }
}

explore: selling_rule_execution_group {}

explore: selling_rule_set {}

explore: selling_rules_asmheader_xref {
  join: asmheader {
    type: left_outer
    sql_on: ${selling_rules_asmheader_xref.asmheader_id} = ${asmheader.asmheader_id} ;;
    relationship: many_to_one
  }
}

explore: selling_rules_catalog_xref {
  join: catalog {
    type: left_outer
    sql_on: ${selling_rules_catalog_xref.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${catalog.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }
}

explore: selling_rules_category_xref {}

explore: selling_rules_header {
  join: selling_rule_set {
    type: left_outer
    sql_on: ${selling_rules_header.selling_rule_set_id} = ${selling_rule_set.selling_rule_set_id} ;;
    relationship: many_to_one
  }

  join: dynamic_field_layout {
    type: left_outer
    sql_on: ${selling_rules_header.dynamic_field_layout_id} = ${dynamic_field_layout.dynamic_field_layout_id} ;;
    relationship: many_to_one
  }

  join: selling_rule_execution_group {
    type: left_outer
    sql_on: ${selling_rules_header.selling_rule_execution_group_id} = ${selling_rule_execution_group.selling_rule_execution_group_id} ;;
    relationship: many_to_one
  }
}

explore: selling_rules_line {}

explore: selling_rules_values_xref {
  join: catalog {
    type: left_outer
    sql_on: ${selling_rules_values_xref.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${catalog.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }
}

explore: service_codes {}

explore: service_order_diagnostic_code_xref {
  join: order_header {
    type: left_outer
    sql_on: ${service_order_diagnostic_code_xref.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: diagnostic_codes {
    type: left_outer
    sql_on: ${service_order_diagnostic_code_xref.diagnostic_code_id} = ${diagnostic_codes.diagnostic_code_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }
}

explore: service_order_header {
  join: order_header {
    type: left_outer
    sql_on: ${service_order_header.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: catalog {
    type: left_outer
    sql_on: ${service_order_header.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${service_order_header.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: service_order_status {
    type: left_outer
    sql_on: ${service_order_header.service_order_status_id} = ${service_order_status.service_order_status_id} ;;
    relationship: many_to_one
  }

  join: warranty_types {
    type: left_outer
    sql_on: ${service_order_header.warranty_type_id} = ${warranty_types.warranty_type_id} ;;
    relationship: many_to_one
  }

  join: service_order_invoice_type {
    type: left_outer
    sql_on: ${service_order_header.service_order_invoice_type_id} = ${service_order_invoice_type.service_order_invoice_type_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }
}

explore: service_order_invoice_type {}

explore: service_order_service_codes_xref {
  join: order_header {
    type: left_outer
    sql_on: ${service_order_service_codes_xref.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: service_codes {
    type: left_outer
    sql_on: ${service_order_service_codes_xref.service_code_id} = ${service_codes.service_code_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }
}

explore: service_order_service_parts_xref {
  join: order_header {
    type: left_outer
    sql_on: ${service_order_service_parts_xref.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: service_parts {
    type: left_outer
    sql_on: ${service_order_service_parts_xref.service_part_id} = ${service_parts.service_part_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }
}

explore: service_order_status {}

explore: service_orders_xref {
  join: service_order_header {
    type: left_outer
    sql_on: ${service_orders_xref.service_order_header_id} = ${service_order_header.service_order_header_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${service_order_header.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: catalog {
    type: left_outer
    sql_on: ${service_order_header.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${service_order_header.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: service_order_status {
    type: left_outer
    sql_on: ${service_order_header.service_order_status_id} = ${service_order_status.service_order_status_id} ;;
    relationship: many_to_one
  }

  join: warranty_types {
    type: left_outer
    sql_on: ${service_order_header.warranty_type_id} = ${warranty_types.warranty_type_id} ;;
    relationship: many_to_one
  }

  join: service_order_invoice_type {
    type: left_outer
    sql_on: ${service_order_header.service_order_invoice_type_id} = ${service_order_invoice_type.service_order_invoice_type_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }
}

explore: service_orders_xreftype {}

explore: service_parts {}

explore: service_request {
  join: members {
    type: left_outer
    sql_on: ${service_request.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${service_request.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: service_request_status {
    type: left_outer
    sql_on: ${service_request.service_request_status_id} = ${service_request_status.service_request_status_id} ;;
    relationship: many_to_one
  }

  join: service_request_types {
    type: left_outer
    sql_on: ${service_request.service_request_type_id} = ${service_request_types.service_request_type_id} ;;
    relationship: many_to_one
  }

  join: catalog {
    type: left_outer
    sql_on: ${service_request.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${service_request.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${members.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }
}

explore: service_request_status {}

explore: service_request_types {}

explore: services {}

explore: ship_methods {
  join: dynamic_record {
    type: left_outer
    sql_on: ${ship_methods.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }
}

explore: ship_methods_locale {
  join: ship_methods {
    type: left_outer
    sql_on: ${ship_methods_locale.ship_method_id} = ${ship_methods.ship_method_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${ship_methods.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }
}

explore: ship_station_receiving {
  join: asnreceipt {
    type: left_outer
    sql_on: ${ship_station_receiving.asnreceipt_id} = ${asnreceipt.asnreceipt_id} ;;
    relationship: many_to_one
  }

  join: asnheader {
    type: left_outer
    sql_on: ${asnreceipt.asnheader_id} = ${asnheader.asnheader_id} ;;
    relationship: many_to_one
  }

  join: asnline {
    type: left_outer
    sql_on: ${asnreceipt.asnline_id} = ${asnline.asnline_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${asnheader.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${asnheader.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${asnheader.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: purchase_order_header {
    type: left_outer
    sql_on: ${asnheader.purchase_order_header_id} = ${purchase_order_header.purchase_order_header_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: suppliers {
    type: left_outer
    sql_on: ${purchase_order_header.supplier_id} = ${suppliers.supplier_id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${asnline.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${inventory.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }
}

explore: ship_station_receiving_location_xref {}

explore: shipment_cancellation_reasons {}

explore: shipment_cancellation_reasons_locale {
  join: shipment_cancellation_reasons {
    type: left_outer
    sql_on: ${shipment_cancellation_reasons_locale.shipment_cancellation_reasons_id} = ${shipment_cancellation_reasons.shipment_cancellation_reasons_id} ;;
    relationship: many_to_one
  }
}

explore: shipment_rejection_history {
  join: order_shipments {
    type: left_outer
    sql_on: ${shipment_rejection_history.order_shipment_id} = ${order_shipments.order_shipment_id} ;;
    relationship: many_to_one
  }

  join: order_line_detail {
    type: left_outer
    sql_on: ${order_shipments.order_line_detail_id} = ${order_line_detail.order_line_detail_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_shipments.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_payment {
    type: left_outer
    sql_on: ${order_shipments.order_payment_id} = ${order_payment.order_payment_id} ;;
    relationship: many_to_one
  }

  join: shipment_cancellation_reasons {
    type: left_outer
    sql_on: ${order_shipments.shipment_cancellation_reasons_id} = ${shipment_cancellation_reasons.shipment_cancellation_reasons_id} ;;
    relationship: many_to_one
  }

  join: shipment_rejection_reasons {
    type: left_outer
    sql_on: ${order_shipments.shipment_rejection_reasons_id} = ${shipment_rejection_reasons.shipment_rejection_reasons_id} ;;
    relationship: many_to_one
  }

  join: order_line {
    type: left_outer
    sql_on: ${order_line_detail.order_line_id} = ${order_line.original_order_line_id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${order_line_detail.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: order_shipping_info {
    type: left_outer
    sql_on: ${order_line_detail.order_shipping_info_id} = ${order_shipping_info.order_shipping_info_id} ;;
    relationship: many_to_one
  }

  join: kit_line {
    type: left_outer
    sql_on: ${order_line_detail.kit_line_id} = ${kit_line.kit_line_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_line_detail.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${order_line.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: catalog {
    type: left_outer
    sql_on: ${order_line.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${order_line.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: reason_code {
    type: left_outer
    sql_on: ${order_line.reason_code_id} = ${reason_code.reason_code_id} ;;
    relationship: many_to_one
  }

  join: disposition_code {
    type: left_outer
    sql_on: ${order_line.disposition_code_id} = ${disposition_code.disposition_code_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }

  join: ship_methods {
    type: left_outer
    sql_on: ${order_shipping_info.ship_method_id} = ${ship_methods.ship_method_id} ;;
    relationship: many_to_one
  }

  join: kit_header {
    type: left_outer
    sql_on: ${kit_line.kit_header_id} = ${kit_header.kit_header_id} ;;
    relationship: many_to_one
  }

  join: kit_placement {
    type: left_outer
    sql_on: ${kit_line.kit_placement_id} = ${kit_placement.kit_placement_id} ;;
    relationship: many_to_one
  }

  join: order_payment_method {
    type: left_outer
    sql_on: ${order_payment.order_payment_method_id} = ${order_payment_method.order_payment_method_id} ;;
    relationship: many_to_one
  }
}

explore: shipment_rejection_reasons {}

explore: shipment_rejection_reasons_locale {
  join: shipment_rejection_reasons {
    type: left_outer
    sql_on: ${shipment_rejection_reasons_locale.shipment_rejection_reasons_id} = ${shipment_rejection_reasons.shipment_rejection_reasons_id} ;;
    relationship: many_to_one
  }
}

explore: shipping_handling {
  join: member_types {
    type: left_outer
    sql_on: ${shipping_handling.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: ship_methods {
    type: left_outer
    sql_on: ${shipping_handling.ship_method_id} = ${ship_methods.ship_method_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${member_types.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }
}

explore: sku_revision_xref {}

explore: source {}

explore: status_lock {}

explore: style {}

explore: style_locale {
  join: style {
    type: left_outer
    sql_on: ${style_locale.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }
}

explore: suppliers {
  join: dynamic_record {
    type: left_outer
    sql_on: ${suppliers.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }
}

explore: survey {}

explore: survey_answers {
  join: dynamic_field_layout {
    type: left_outer
    sql_on: ${survey_answers.dynamic_field_layout_id} = ${dynamic_field_layout.dynamic_field_layout_id} ;;
    relationship: many_to_one
  }

  join: survey_rule {
    type: left_outer
    sql_on: ${survey_answers.survey_rule_id} = ${survey_rule.survey_rule_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${survey_answers.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: survey {
    type: left_outer
    sql_on: ${survey_answers.survey_id} = ${survey.survey_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${members.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }
}

explore: survey_questions {
  join: survey {
    type: left_outer
    sql_on: ${survey_questions.survey_id} = ${survey.survey_id} ;;
    relationship: many_to_one
  }

  join: survey_rule {
    type: left_outer
    sql_on: ${survey_questions.survey_rule_id} = ${survey_rule.survey_rule_id} ;;
    relationship: many_to_one
  }

  join: dynamic_field_layout {
    type: left_outer
    sql_on: ${survey_questions.dynamic_field_layout_id} = ${dynamic_field_layout.dynamic_field_layout_id} ;;
    relationship: many_to_one
  }
}

explore: survey_rule {
  join: survey {
    type: left_outer
    sql_on: ${survey_rule.survey_id} = ${survey.survey_id} ;;
    relationship: many_to_one
  }
}

explore: survey_rule_value {
  join: survey_rule {
    type: left_outer
    sql_on: ${survey_rule_value.survey_rule_id} = ${survey_rule.survey_rule_id} ;;
    relationship: many_to_one
  }

  join: survey {
    type: left_outer
    sql_on: ${survey_rule.survey_id} = ${survey.survey_id} ;;
    relationship: many_to_one
  }
}

explore: sysdiagrams {}

explore: tax_override_states {}

explore: tracking {
  join: order_header {
    type: left_outer
    sql_on: ${tracking.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }
}

explore: tracking_history {
  join: tracking {
    type: left_outer
    sql_on: ${tracking_history.tracking_id} = ${tracking.tracking_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${tracking_history.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }
}

explore: uom {
}

explore: uom_locale {
  join: uom {
    type: left_outer
    sql_on: ${uom_locale.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }
}

explore: vw_autoship_order_total {
  join: autoship_order_header {
    type: left_outer
    sql_on: ${vw_autoship_order_total.autoship_order_header_id} = ${autoship_order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${autoship_order_header.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${autoship_order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: autoship_address {
    type: left_outer
    sql_on: ${autoship_order_header.autoship_address_id} = ${autoship_address.autoship_address_id} ;;
    relationship: many_to_one
  }

  join: autoship_payment_info {
    type: left_outer
    sql_on: ${autoship_order_header.autoship_payment_info_id} = ${autoship_payment_info.autoship_payment_info_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }
}

explore: vw_catalog_bundle_inventory {
  join: catalog {
    type: left_outer
    sql_on: ${vw_catalog_bundle_inventory.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${vw_catalog_bundle_inventory.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${vw_catalog_bundle_inventory.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: bundle_header {
    type: left_outer
    sql_on: ${vw_catalog_bundle_inventory.bundle_header_id} = ${bundle_header.bundle_header_id} ;;
    relationship: many_to_one
  }

  join: bundle_line {
    type: left_outer
    sql_on: ${vw_catalog_bundle_inventory.bundle_line_id} = ${bundle_line.bundle_line_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${catalog.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }
}

explore: vw_catalog_global_atp {
  join: catalog {
    type: left_outer
    sql_on: ${vw_catalog_global_atp.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${catalog.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }
}

explore: vw_controller_get_promotions {}

explore: vw_controller_get_sales_orders {
  join: order_header {
    type: left_outer
    sql_on: ${vw_controller_get_sales_orders.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }
}

explore: vw_exchange_rate_current {}

explore: vw_extended_properties {}

explore: vw_get_communication_defaults {
  join: communications {
    type: left_outer
    sql_on: ${vw_get_communication_defaults.communications_id} = ${communications.communications_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${communications.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${communications.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${communications.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }
}

explore: vw_inventory_global_atp {
  join: inventory {
    type: left_outer
    sql_on: ${vw_inventory_global_atp.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${inventory.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${inventory.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }
}

explore: vw_inventory_provider_atp {
  join: inventory {
    type: left_outer
    sql_on: ${vw_inventory_provider_atp.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${vw_inventory_provider_atp.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${inventory.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${inventory.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }
}

explore: vw_inventory_provider_sku {
  join: inventory {
    type: left_outer
    sql_on: ${vw_inventory_provider_sku.inventoryid} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${vw_inventory_provider_sku.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${inventory.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${inventory.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }
}

explore: vw_order_line_detail_tax {
  join: order_tax_detail {
    type: left_outer
    sql_on: ${vw_order_line_detail_tax.order_tax_detail_id} = ${order_tax_detail.order_tax_detail_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${vw_order_line_detail_tax.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: order_line_detail {
    type: left_outer
    sql_on: ${vw_order_line_detail_tax.order_line_detail_id} = ${order_line_detail.order_line_detail_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: order_line {
    type: left_outer
    sql_on: ${order_line_detail.order_line_id} = ${order_line.original_order_line_id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${order_line_detail.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: order_shipping_info {
    type: left_outer
    sql_on: ${order_line_detail.order_shipping_info_id} = ${order_shipping_info.order_shipping_info_id} ;;
    relationship: many_to_one
  }

  join: kit_line {
    type: left_outer
    sql_on: ${order_line_detail.kit_line_id} = ${kit_line.kit_line_id} ;;
    relationship: many_to_one
  }

  join: catalog {
    type: left_outer
    sql_on: ${order_line.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: reason_code {
    type: left_outer
    sql_on: ${order_line.reason_code_id} = ${reason_code.reason_code_id} ;;
    relationship: many_to_one
  }

  join: disposition_code {
    type: left_outer
    sql_on: ${order_line.disposition_code_id} = ${disposition_code.disposition_code_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }

  join: ship_methods {
    type: left_outer
    sql_on: ${order_shipping_info.ship_method_id} = ${ship_methods.ship_method_id} ;;
    relationship: many_to_one
  }

  join: order_payment {
    type: left_outer
    sql_on: ${order_shipping_info.order_payment_id} = ${order_payment.order_payment_id} ;;
    relationship: many_to_one
  }

  join: order_payment_method {
    type: left_outer
    sql_on: ${order_payment.order_payment_method_id} = ${order_payment_method.order_payment_method_id} ;;
    relationship: many_to_one
  }

  join: kit_header {
    type: left_outer
    sql_on: ${kit_line.kit_header_id} = ${kit_header.kit_header_id} ;;
    relationship: many_to_one
  }

  join: kit_placement {
    type: left_outer
    sql_on: ${kit_line.kit_placement_id} = ${kit_placement.kit_placement_id} ;;
    relationship: many_to_one
  }
}

explore: vw_order_line_status {
  join: order_line {
    type: left_outer
    sql_on: ${vw_order_line_status.order_line_id} = ${order_line.original_order_line_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${order_line.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${order_line.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: catalog {
    type: left_outer
    sql_on: ${order_line.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${order_line.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: reason_code {
    type: left_outer
    sql_on: ${order_line.reason_code_id} = ${reason_code.reason_code_id} ;;
    relationship: many_to_one
  }

  join: disposition_code {
    type: left_outer
    sql_on: ${order_line.disposition_code_id} = ${disposition_code.disposition_code_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_line.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${inventory.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }
}

explore: vw_order_shipping_info_tax {
  join: order_tax_detail {
    type: left_outer
    sql_on: ${vw_order_shipping_info_tax.order_tax_detail_id} = ${order_tax_detail.order_tax_detail_id} ;;
    relationship: many_to_one
  }

  join: order_header {
    type: left_outer
    sql_on: ${vw_order_shipping_info_tax.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: order_shipping_info {
    type: left_outer
    sql_on: ${vw_order_shipping_info_tax.order_shipping_info_id} = ${order_shipping_info.order_shipping_info_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: ship_methods {
    type: left_outer
    sql_on: ${order_shipping_info.ship_method_id} = ${ship_methods.ship_method_id} ;;
    relationship: many_to_one
  }

  join: order_payment {
    type: left_outer
    sql_on: ${order_shipping_info.order_payment_id} = ${order_payment.order_payment_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${order_payment.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: reason_code {
    type: left_outer
    sql_on: ${order_payment.reason_code_id} = ${reason_code.reason_code_id} ;;
    relationship: many_to_one
  }

  join: order_payment_method {
    type: left_outer
    sql_on: ${order_payment.order_payment_method_id} = ${order_payment_method.order_payment_method_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }
}

explore: vw_order_status {
  join: order_header {
    type: left_outer
    sql_on: ${vw_order_status.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }
}

explore: vw_order_total {
  join: order_header {
    type: left_outer
    sql_on: ${vw_order_total.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }
}

explore: vw_order_total_converted {
  join: order_header {
    type: left_outer
    sql_on: ${vw_order_total_converted.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }
}

explore: vw_order_total_order_line {
  join: order_header {
    type: left_outer
    sql_on: ${vw_order_total_order_line.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: order_line {
    type: left_outer
    sql_on: ${vw_order_total_order_line.order_line_id} = ${order_line.original_order_line_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${order_line.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: catalog {
    type: left_outer
    sql_on: ${order_line.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: reason_code {
    type: left_outer
    sql_on: ${order_line.reason_code_id} = ${reason_code.reason_code_id} ;;
    relationship: many_to_one
  }

  join: disposition_code {
    type: left_outer
    sql_on: ${order_line.disposition_code_id} = ${disposition_code.disposition_code_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${inventory.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }
}

explore: vw_order_total_order_line_detail {
  join: order_header {
    type: left_outer
    sql_on: ${vw_order_total_order_line_detail.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: order_line {
    type: left_outer
    sql_on: ${vw_order_total_order_line_detail.order_line_id} = ${order_line.original_order_line_id} ;;
    relationship: many_to_one
  }

  join: order_line_detail {
    type: left_outer
    sql_on: ${vw_order_total_order_line_detail.order_line_detail_id} = ${order_line_detail.order_line_detail_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${order_line.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: catalog {
    type: left_outer
    sql_on: ${order_line.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: reason_code {
    type: left_outer
    sql_on: ${order_line.reason_code_id} = ${reason_code.reason_code_id} ;;
    relationship: many_to_one
  }

  join: disposition_code {
    type: left_outer
    sql_on: ${order_line.disposition_code_id} = ${disposition_code.disposition_code_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${inventory.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }

  join: order_shipping_info {
    type: left_outer
    sql_on: ${order_line_detail.order_shipping_info_id} = ${order_shipping_info.order_shipping_info_id} ;;
    relationship: many_to_one
  }

  join: kit_line {
    type: left_outer
    sql_on: ${order_line_detail.kit_line_id} = ${kit_line.kit_line_id} ;;
    relationship: many_to_one
  }

  join: ship_methods {
    type: left_outer
    sql_on: ${order_shipping_info.ship_method_id} = ${ship_methods.ship_method_id} ;;
    relationship: many_to_one
  }

  join: order_payment {
    type: left_outer
    sql_on: ${order_shipping_info.order_payment_id} = ${order_payment.order_payment_id} ;;
    relationship: many_to_one
  }

  join: order_payment_method {
    type: left_outer
    sql_on: ${order_payment.order_payment_method_id} = ${order_payment_method.order_payment_method_id} ;;
    relationship: many_to_one
  }

  join: kit_header {
    type: left_outer
    sql_on: ${kit_line.kit_header_id} = ${kit_header.kit_header_id} ;;
    relationship: many_to_one
  }

  join: kit_placement {
    type: left_outer
    sql_on: ${kit_line.kit_placement_id} = ${kit_placement.kit_placement_id} ;;
    relationship: many_to_one
  }
}

explore: vw_order_total_order_shipping_info {
  join: order_header {
    type: left_outer
    sql_on: ${vw_order_total_order_shipping_info.order_header_id} = ${order_header.autoship_order_header_id} ;;
    relationship: many_to_one
  }

  join: members {
    type: left_outer
    sql_on: ${order_header.member_id} = ${members.member_id} ;;
    relationship: many_to_one
  }

  join: distributions {
    type: left_outer
    sql_on: ${order_header.distribution_id} = ${distributions.distribution_id} ;;
    relationship: many_to_one
  }

  join: providers {
    type: left_outer
    sql_on: ${order_header.provider_id} = ${providers.backup_provider_id} ;;
    relationship: many_to_one
  }

  join: order_types {
    type: left_outer
    sql_on: ${order_header.order_type_id} = ${order_types.order_type_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${order_header.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: source {
    type: left_outer
    sql_on: ${order_header.source_id} = ${source.source_id} ;;
    relationship: many_to_one
  }

  join: order_sources {
    type: left_outer
    sql_on: ${order_header.order_source_id} = ${order_sources.order_source_id} ;;
    relationship: many_to_one
  }

  join: billing_codes {
    type: left_outer
    sql_on: ${order_header.billing_code_id} = ${billing_codes.billing_code_id} ;;
    relationship: many_to_one
  }

  join: marketing_source {
    type: left_outer
    sql_on: ${order_header.marketing_source_id} = ${marketing_source.marketing_source_id} ;;
    relationship: many_to_one
  }

  join: groups {
    type: left_outer
    sql_on: ${order_header.group_id} = ${groups.group_id} ;;
    relationship: many_to_one
  }

  join: budget_center {
    type: left_outer
    sql_on: ${order_header.budget_center_id} = ${budget_center.budget_center_id} ;;
    relationship: many_to_one
  }

  join: blanket_order_header {
    type: left_outer
    sql_on: ${order_header.blanket_order_header_id} = ${blanket_order_header.blanket_order_header_id} ;;
    relationship: many_to_one
  }

  join: price_lists {
    type: left_outer
    sql_on: ${members.price_list_id} = ${price_lists.price_list_id} ;;
    relationship: many_to_one
  }

  join: member_types {
    type: left_outer
    sql_on: ${members.member_type_id} = ${member_types.member_type_id} ;;
    relationship: many_to_one
  }

  join: sales_relationships {
    type: left_outer
    sql_on: ${members.sales_relationship_id} = ${sales_relationships.sales_relationship_id} ;;
    relationship: many_to_one
  }

  join: member_sources {
    type: left_outer
    sql_on: ${members.member_source_id} = ${member_sources.member_source_id} ;;
    relationship: many_to_one
  }

  join: affiliate_types {
    type: left_outer
    sql_on: ${members.affiliate_type_id} = ${affiliate_types.affiliate_type_id} ;;
    relationship: many_to_one
  }

  join: group_types {
    type: left_outer
    sql_on: ${groups.group_type_id} = ${group_types.group_type_id} ;;
    relationship: many_to_one
  }
}

explore: vw_product {
  join: catalog {
    type: left_outer
    sql_on: ${vw_product.catalog_id} = ${catalog.catalog_id} ;;
    relationship: many_to_one
  }

  join: bundle_header {
    type: left_outer
    sql_on: ${vw_product.bundle_header_id} = ${bundle_header.bundle_header_id} ;;
    relationship: many_to_one
  }

  join: bundle_line {
    type: left_outer
    sql_on: ${vw_product.bundle_line_id} = ${bundle_line.bundle_line_id} ;;
    relationship: many_to_one
  }

  join: item_type {
    type: left_outer
    sql_on: ${catalog.item_type_id} = ${item_type.item_type_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${catalog.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${catalog.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: gift_certificates {
    type: left_outer
    sql_on: ${catalog.gift_certificate_id} = ${gift_certificates.gift_certificate_id} ;;
    relationship: many_to_one
  }

  join: affiliate_commission_types {
    type: left_outer
    sql_on: ${catalog.affiliate_commission_type_id} = ${affiliate_commission_types.affiliate_commission_type_id} ;;
    relationship: many_to_one
  }

  join: catalog_tax_class {
    type: left_outer
    sql_on: ${catalog.catalog_tax_class_id} = ${catalog_tax_class.catalog_tax_class_id} ;;
    relationship: many_to_one
  }

  join: gift_certificate_types {
    type: left_outer
    sql_on: ${gift_certificates.gift_certificate_type_id} = ${gift_certificate_types.gift_certificate_type_id} ;;
    relationship: many_to_one
  }
}

explore: vw_used_in_kit {
  join: inventory {
    type: left_outer
    sql_on: ${vw_used_in_kit.inventoryid} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: manufacturer {
    type: left_outer
    sql_on: ${inventory.manufacturer_id} = ${manufacturer.manufacturer_id} ;;
    relationship: many_to_one
  }

  join: uom {
    type: left_outer
    sql_on: ${inventory.uomid} = ${uom.base_uomid} ;;
    relationship: many_to_one
  }

  join: color {
    type: left_outer
    sql_on: ${inventory.color_id} = ${color.color_id} ;;
    relationship: many_to_one
  }

  join: style {
    type: left_outer
    sql_on: ${inventory.style_id} = ${style.style_id} ;;
    relationship: many_to_one
  }

  join: dpodtemplate {
    type: left_outer
    sql_on: ${inventory.dpodtemplate_id} = ${dpodtemplate.dpodtemplate_id} ;;
    relationship: many_to_one
  }

  join: dynamic_record {
    type: left_outer
    sql_on: ${inventory.dynamic_record_id} = ${dynamic_record.dynamic_record_id} ;;
    relationship: many_to_one
  }

  join: files {
    type: left_outer
    sql_on: ${color.file_id} = ${files.file_id} ;;
    relationship: many_to_one
  }

  join: color_group {
    type: left_outer
    sql_on: ${color.color_group_id} = ${color_group.color_group_id} ;;
    relationship: many_to_one
  }
}

explore: warranties {
  join: warranty_types {
    type: left_outer
    sql_on: ${warranties.warranty_type_id} = ${warranty_types.warranty_type_id} ;;
    relationship: many_to_one
  }

  join: warranty_coverages {
    type: left_outer
    sql_on: ${warranties.warranty_coverage_id} = ${warranty_coverages.warranty_coverage_id} ;;
    relationship: many_to_one
  }
}

explore: warranties_locale {}

explore: warranty_coverages {}

explore: warranty_coverages_locale {
  join: warranty_coverages {
    type: left_outer
    sql_on: ${warranty_coverages_locale.warranty_coverage_id} = ${warranty_coverages.warranty_coverage_id} ;;
    relationship: many_to_one
  }
}

explore: warranty_types {}
