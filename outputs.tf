output "projects_id" {
  description = "Map of id values across all projects, keyed the same as var.projects except keys with no id are omitted"
  value       = { for k, v in tfe_project.projects : k => v.id if v.id != null && length(v.id) > 0 }
}
output "projects_auto_destroy_activity_duration" {
  description = "Map of auto_destroy_activity_duration values across all projects, keyed the same as var.projects except keys with no auto_destroy_activity_duration are omitted"
  value       = { for k, v in tfe_project.projects : k => v.auto_destroy_activity_duration if v.auto_destroy_activity_duration != null && length(v.auto_destroy_activity_duration) > 0 }
}
output "projects_description" {
  description = "Map of description values across all projects, keyed the same as var.projects except keys with no description are omitted"
  value       = { for k, v in tfe_project.projects : k => v.description if v.description != null && length(v.description) > 0 }
}
output "projects_ignore_additional_tags" {
  description = "Map of ignore_additional_tags values across all projects, keyed the same as var.projects except keys with no ignore_additional_tags are omitted"
  value       = { for k, v in tfe_project.projects : k => v.ignore_additional_tags if v.ignore_additional_tags != null }
}
output "projects_name" {
  description = "Map of name values across all projects, keyed the same as var.projects except keys with no name are omitted"
  value       = { for k, v in tfe_project.projects : k => v.name if v.name != null && length(v.name) > 0 }
}
output "projects_organization" {
  description = "Map of organization values across all projects, keyed the same as var.projects except keys with no organization are omitted"
  value       = { for k, v in tfe_project.projects : k => v.organization if v.organization != null && length(v.organization) > 0 }
}
output "projects_tags" {
  description = "Map of tags values across all projects, keyed the same as var.projects except keys with no tags are omitted"
  value       = { for k, v in tfe_project.projects : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

