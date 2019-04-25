view: arch_campaigns {
  sql_table_name: arch_campaigns.arch_campaigns ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}.account_id ;;
  }

  dimension: agency {
    type: string
    sql: ${TABLE}.agency ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: campaign_uid {
    type: number
    value_format_name: id
    sql: ${TABLE}.campaign_uid ;;
  }

  dimension_group: last_updated {
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
    sql: ${TABLE}.last_updated ;;
  }

  dimension: organization_id {
    type: string
    sql: ${TABLE}.organization_id ;;
  }

  dimension: row_num {
    type: number
    sql: ${TABLE}.row_num ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
