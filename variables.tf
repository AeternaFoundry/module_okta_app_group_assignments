variable "app_group_assignments" {
  description = <<EOT
Map of app_group_assignments, attributes below
Required:
    - app_id
Optional:
    - group (block):
        - id (required)
        - priority (optional)
        - profile (optional)
    - timeouts (block):
        - create (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    app_id = string
    group = optional(list(object({
      id       = string
      priority = optional(number)
      profile  = optional(string)
    })))
    timeouts = optional(object({
      create = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

