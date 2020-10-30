view: arch_services {
  label: "Service Architecture"

  sql_table_name: arch_services.arch_services ;;


  ########## DIMENSIONS { ##########

    dimension: client_id {
      view_label: "               Services"
      label: "Client ID [Services]"

      type: string
      sql: ${TABLE}.client_id ;;
    }

    dimension: service_line {
      view_label: "               Services"
      label: "Service Line"
      description: "Service Line"

      type: string
      sql: ${TABLE}.service_line ;;
    }

    dimension: program {
      view_label: "               Services"
      label: "Program"
      description: "Service Line Program"

      type: string
      sql: ${TABLE}.program ;;
    }

    dimension: service_line_code {
      view_label: "               Services"
      group_label: "Service Architecture"
      label: "Service Line Code"
      description: "Service Line Code"

      primary_key: yes

      type: string
      sql: ${TABLE}.service_line_code ;;
    }

  ########## DIMENSIONS } ##########

}
