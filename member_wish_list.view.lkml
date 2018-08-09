view: member_wish_list {
  sql_table_name: dbo.MemberWishList ;;

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

  dimension: member_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MemberId ;;
  }

  dimension: wish_list_id {
    type: number
    sql: ${TABLE}.WishListId ;;
  }

  dimension: wish_list_name {
    type: string
    sql: ${TABLE}.WishListName ;;
  }

  measure: count {
    type: count
    drill_fields: [wish_list_name, members.member_id, members.username]
  }
}
