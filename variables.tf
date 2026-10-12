variable "projects" {
  description = <<EOT
Map of projects, attributes below
Required:
    - name
Optional:
    - auto_destroy_activity_duration
    - description
    - ignore_additional_tags
    - organization
    - tags
EOT

  type = map(object({
    name                           = string
    auto_destroy_activity_duration = optional(string)
    description                    = optional(string)
    ignore_additional_tags         = optional(bool)
    organization                   = optional(string)
    tags                           = optional(map(string))
  }))
}

