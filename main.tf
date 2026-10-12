resource "tfe_project" "projects" {
  for_each = var.projects

  name                           = each.value.name
  auto_destroy_activity_duration = each.value.auto_destroy_activity_duration
  description                    = each.value.description
  ignore_additional_tags         = each.value.ignore_additional_tags
  organization                   = each.value.organization
  tags                           = each.value.tags
}

