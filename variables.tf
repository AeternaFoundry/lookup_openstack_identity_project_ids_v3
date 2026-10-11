variable "identity_project_ids_v3_lookup" {
  description = <<EOT
Map of identity_project_ids_v3_lookup, attributes below
Optional:
    - domain_id
    - enabled
    - is_domain
    - name
    - name_regex
    - parent_id
    - region
    - tags
EOT

  type = map(object({
    domain_id  = optional(string)
    enabled    = optional(bool)
    is_domain  = optional(bool)
    name       = optional(string)
    name_regex = optional(string)
    parent_id  = optional(string)
    region     = optional(string)
    tags       = optional(set(string))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

