connection: "bc360_main"

include: "//bc360_admin/bc360_triggers.lkml"

include: "*.view.lkml"

label: "BC360 - Admin"

explore: arch_services_admin {
  label: "Service Architecture [ADMIN]"
}
