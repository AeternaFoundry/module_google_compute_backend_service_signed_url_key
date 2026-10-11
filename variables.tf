variable "compute_backend_service_signed_url_keys" {
  description = <<EOT
Map of compute_backend_service_signed_url_keys, attributes below
Required:
    - backend_service
    - key_value
    - name
Optional:
    - deletion_policy
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    backend_service = string
    key_value       = string
    name            = string
    deletion_policy = optional(string)
    project         = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

