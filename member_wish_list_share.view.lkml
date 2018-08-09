view: member_wish_list_share {
  sql_table_name: dbo.MemberWishListShare ;;

  dimension: access_key {
    type: string
    sql: ${TABLE}.AccessKey ;;
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

  dimension: views {
    type: number
    sql: ${TABLE}.Views ;;
  }

  dimension: wish_list_id {
    type: number
    sql: ${TABLE}.WishListId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
