view: vw_extended_properties {
  sql_table_name: dbo.VwExtendedProperties ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: class {
    type: number
    sql: ${TABLE}.class ;;
  }

  dimension: class_desc {
    type: string
    sql: ${TABLE}.class_desc ;;
  }

  dimension: major_id {
    type: number
    sql: ${TABLE}.major_id ;;
  }

  dimension: minor_id {
    type: number
    sql: ${TABLE}.minor_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
