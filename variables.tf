variable "organizations_delegated_services_lookup" {
  description = <<EOT
Map of organizations_delegated_services_lookup, attributes below
Required:
    - account_id
EOT

  type = map(object({
    account_id = string
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

