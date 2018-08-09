view: email_settings {
  sql_table_name: dbo.EmailSettings ;;

  dimension: email_settings_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.EmailSettingsId ;;
  }

  dimension: chart_style {
    type: number
    sql: ${TABLE}.ChartStyle ;;
  }

  dimension: email_format_id {
    type: number
    sql: ${TABLE}.EmailFormatId ;;
  }

  dimension: email_idlink_added {
    type: string
    sql: ${TABLE}.EmailIDLinkAdded ;;
  }

  dimension: email_list_fail_email {
    type: string
    sql: ${TABLE}.EmailListFailEmail ;;
  }

  dimension: email_list_from_email {
    type: string
    sql: ${TABLE}.EmailListFromEmail ;;
  }

  dimension: email_list_global_footer {
    type: string
    sql: ${TABLE}.EmailListGlobalFooter ;;
  }

  dimension: email_list_global_footer_html {
    type: string
    sql: ${TABLE}.EmailListGlobalFooterHTML ;;
  }

  dimension: email_list_global_header {
    type: string
    sql: ${TABLE}.EmailListGlobalHeader ;;
  }

  dimension: email_list_global_header_html {
    type: string
    sql: ${TABLE}.EmailListGlobalHeaderHTML ;;
  }

  dimension: email_list_poplogin {
    type: string
    sql: ${TABLE}.EmailListPOPLogin ;;
  }

  dimension: email_list_poppassword {
    type: string
    sql: ${TABLE}.EmailListPOPPassword ;;
  }

  dimension: email_list_popserver {
    type: string
    sql: ${TABLE}.EmailListPOPServer ;;
  }

  dimension: email_list_reply_to_email {
    type: string
    sql: ${TABLE}.EmailListReplyToEmail ;;
  }

  dimension: email_list_smtplogin {
    type: string
    sql: ${TABLE}.EmailListSMTPLogin ;;
  }

  dimension: email_list_smtppassword {
    type: string
    sql: ${TABLE}.EmailListSMTPPassword ;;
  }

  dimension: email_list_smtpserver {
    type: string
    sql: ${TABLE}.EmailListSMTPServer ;;
  }

  dimension: email_personalization {
    type: string
    sql: ${TABLE}.EmailPersonalization ;;
  }

  dimension: email_settings_code {
    type: string
    sql: ${TABLE}.EmailSettingsCode ;;
  }

  dimension: email_settings_name {
    type: string
    sql: ${TABLE}.EmailSettingsName ;;
  }

  dimension: enable_image_tracking {
    type: string
    sql: ${TABLE}.EnableImageTracking ;;
  }

  dimension: enable_unsubscribe_link {
    type: string
    sql: ${TABLE}.EnableUnsubscribeLink ;;
  }

  dimension: friendly_from {
    type: string
    sql: ${TABLE}.FriendlyFrom ;;
  }

  dimension: ftpdirectory {
    type: string
    sql: ${TABLE}.FTPDirectory ;;
  }

  dimension: ftppassword {
    type: string
    sql: ${TABLE}.FTPPassword ;;
  }

  dimension: ftpport {
    type: string
    sql: ${TABLE}.FTPPort ;;
  }

  dimension: ftpurl {
    type: string
    sql: ${TABLE}.FTPURL ;;
  }

  dimension: ftpusername {
    type: string
    sql: ${TABLE}.FTPUsername ;;
  }

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
  }

  dimension: log_successful_broadcasts {
    type: string
    sql: ${TABLE}.LogSuccessfulBroadcasts ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectID ;;
  }

  dimension: site_server_address {
    type: string
    sql: ${TABLE}.SiteServerAddress ;;
  }

  dimension: unsubscribe_footer {
    type: string
    sql: ${TABLE}.UnsubscribeFooter ;;
  }

  dimension: unsubscribe_header {
    type: string
    sql: ${TABLE}.UnsubscribeHeader ;;
  }

  dimension: unsubscribe_redirect_url {
    type: string
    sql: ${TABLE}.UnsubscribeRedirectURL ;;
  }

  dimension: web_version_link {
    type: string
    sql: ${TABLE}.WebVersionLink ;;
  }

  dimension: web_version_link_text {
    type: string
    sql: ${TABLE}.WebVersionLinkText ;;
  }

  measure: count {
    type: count
    drill_fields: [email_settings_id, email_settings_name, ftpusername, email_bounce_log.count]
  }
}
