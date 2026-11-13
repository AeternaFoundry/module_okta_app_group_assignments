output "app_group_assignments_id" {
  description = "Map of id values across all app_group_assignments, keyed the same as var.app_group_assignments"
  value       = { for k, v in okta_app_group_assignments.app_group_assignments : k => v.id }
}
output "app_group_assignments_app_id" {
  description = "Map of app_id values across all app_group_assignments, keyed the same as var.app_group_assignments"
  value       = { for k, v in okta_app_group_assignments.app_group_assignments : k => v.app_id }
}
output "app_group_assignments_group" {
  description = "Map of group values across all app_group_assignments, keyed the same as var.app_group_assignments"
  value       = { for k, v in okta_app_group_assignments.app_group_assignments : k => v.group }
}

