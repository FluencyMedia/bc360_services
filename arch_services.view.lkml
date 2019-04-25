view: arch_services {
  sql_table_name: arch_services.arch_services ;;


  ########## METADATA { ##########

  dimension: row_num {
    hidden: yes
    type: number
    sql: ${TABLE}.row_num ;;
  }

  ########## METADATA } ##########



  ########## DIMENSIONS { ##########

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

  ########## DIMENSIONS } ##########

}
