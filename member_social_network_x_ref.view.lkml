view: member_social_network_x_ref {
  sql_table_name: dbo.Member_SocialNetwork_xRef ;;

  dimension: member_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.memberID ;;
  }

  dimension: social_network_id {
    type: number
    sql: ${TABLE}.socialNetworkID ;;
  }

  dimension: social_network_user_id {
    type: string
    sql: ${TABLE}.socialNetworkUserID ;;
  }

  measure: count {
    type: count
    drill_fields: [members.member_id, members.username]
  }
}
