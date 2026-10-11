output "app_group_assignments_id" {
  description = "Map of id values across all app_group_assignments, keyed the same as var.app_group_assignments except keys with no id are omitted"
  value       = { for k, v in okta_app_group_assignments.app_group_assignments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "app_group_assignments_app_id" {
  description = "Map of app_id values across all app_group_assignments, keyed the same as var.app_group_assignments except keys with no app_id are omitted"
  value       = { for k, v in okta_app_group_assignments.app_group_assignments : k => v.app_id if v.app_id != null && length(v.app_id) > 0 }
}
output "app_group_assignments_group" {
  description = "Map of group values across all app_group_assignments, keyed the same as var.app_group_assignments except keys with no group are omitted"
  value       = { for k, v in okta_app_group_assignments.app_group_assignments : k => v.group if v.group != null && length(v.group) > 0 }
}

