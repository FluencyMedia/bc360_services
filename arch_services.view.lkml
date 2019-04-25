view: arch_services {
  sql_table_name: arch_services.arch_services_live ;;


  ########## METADATA { ##########

  dimension: row_num {
    hidden: yes
    type: number
    sql: ${TABLE}.row_num ;;
  }

  ########## METADATA } ##########



  ########## DIMENSIONS { ##########

  dimension: medium {
    view_label: "3. Channel"
    label: "Medium"
    description: "Digital Channel Used"

    type: string
    sql: ${TABLE}.medium ;;
  }

  dimension: account {
    view_label: "1. Client/Account"
    label: "Channel Account"
    description: "ID For Respective 'Channel' Account (Adwords, Display, etc.)"

    drill_fields: []

    type: string
    sql: ${TABLE}.account ;;
  }

  dimension: campaign {
    view_label: "3. Channel"
    group_label: "Campaign Architecture"
    label: "Campaign"
    description: "Campaign Within Digital Channel"

    type: string
    sql: ${TABLE}.campaign ;;
  }

  dimension: campaign_group {
    view_label: "3. Channel"
    group_label: "Campaign Architecture"
    label: "Campaign Group"
    description: "Campaign Group Within Digital Channel"

    type: string
    sql: ${TABLE}.campaign_group ;;
  }

  dimension: campaign_region {
    view_label: "3. Channel"
    group_label: "Campaign Geography"
    label: "Region"

    type: string
    sql: ${TABLE}.campaign_region ;;
  }

  dimension: campaign_tier_base {
    view_label: "Z - Metadata"
    group_label: "Metrics - Base Values"
    label: "Campaign Tier*"

    type: string
    sql: ${TABLE}.campaign_tier ;;
  }

  dimension: campaign_tier {
    view_label: "3. Channel"
    label: "Campaign Tier"

    type: string

    case: {
      when: {
        sql: ${campaign_tier_base} = 'S&C' ;;
        label: "S&C"
      }
      when: {
        sql: ${campaign_tier_base} = 'T&P' ;;
        label: "T&P"
      }
      when: {
        sql: ${campaign_tier_base} = 'P&F' ;;
        label: "P&F"
      }
      when: {
        sql: ${campaign_tier_base} = 'Brand' ;;
        label: "Brand"
      }
      when: {
        sql: ${campaign_tier_base} = 'Competitor' ;;
        label: "Competitor"
      }
      when: {
        sql: ${campaign_tier_base} IN ('General', 'Varied') ;;
        label: "General"
      }
      when: {
        sql: ${campaign_tier_base} IS null ;;
        label: "NA"
      }
      else: "Other"
    }

  }

  dimension: campaign_location {
    view_label: "3. Channel"
    group_label: "Campaign Geography"
    label: "Campaign Location"

    type: string

    sql: ${TABLE}.campaign_location ;;
  }

  dimension: adgroup {
    view_label: "3. Channel"
    group_label: "Campaign Architecture"
    label: "Ad Group"
    description: "Adgroup Within Digital Channel"

    type: string
    sql: ${TABLE}.adgroup ;;
  }

  dimension: service_line {
    view_label: "2. Services"
    label: "Service Line"
    description: "Service Line"

    type: string
    sql: ${TABLE}.service_line ;;
  }

  dimension: program {
    view_label: "2. Services"
    label: "Program"
    description: "Service Line Program"

    type: string
    sql: ${TABLE}.program ;;
  }

  dimension: service_line_code {
    view_label: "2. Services"
    group_label: "Service Architecture"
    label: "Service Line Code"
    description: "Service Line Code"

    type: string
    sql: ${TABLE}.service_line_code ;;
  }

  dimension: service_offering {
    view_label: "2. Services"
    group_label: "Service Architecture"
    label: "Service Offering"
    description: "Service Line Offering"

    type: string
    sql: ${TABLE}.service_offering ;;
  }

  dimension: service_detail {
    view_label: "2. Services"
    group_label: "Service Architecture"
    label: "Service Detail"
    description: "Service Detail"

    type: string
    sql: ${TABLE}.service_detail ;;
  }

  dimension: agency {
    view_label: "1. Client/Account"
    label: "Agency"
    description: "Agency Managing Any Given Campaign"

    type: string
    sql: ${TABLE}.agency ;;
  }

  ########## DIMENSIONS } ##########

}
