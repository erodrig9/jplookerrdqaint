view: email_groups_members {
  sql_table_name: dbo.EmailGroupsMembers ;;

  dimension: email_groups_members_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.EmailGroupsMembersID ;;
  }

  dimension: cities {
    type: string
    sql: ${TABLE}.Cities ;;
  }

  dimension: common_query {
    type: string
    sql: ${TABLE}.CommonQuery ;;
  }

  dimension: countries {
    type: string
    sql: ${TABLE}.Countries ;;
  }

  dimension: email_group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.EmailGroupId ;;
  }

  dimension: groups {
    type: string
    sql: ${TABLE}.Groups ;;
  }

  dimension: measure {
    type: string
    sql: ${TABLE}.Measure ;;
  }

  dimension: member_types {
    type: string
    sql: ${TABLE}.MemberTypes ;;
  }

  dimension: offset {
    type: number
    sql: ${TABLE}.Offset ;;
  }

  dimension: organizations {
    type: string
    sql: ${TABLE}.Organizations ;;
  }

  dimension: state_provs {
    type: string
    sql: ${TABLE}.StateProvs ;;
  }

  measure: count {
    type: count
    drill_fields: [email_groups_members_id, email_groups.email_group_id, email_groups.group_name]
  }
}
