output "organizations_delegated_services_lookup_id" {
  description = "Map of id values across all organizations_delegated_services_lookup, keyed the same as var.organizations_delegated_services_lookup"
  value       = { for k, v in data.aws_organizations_delegated_services.organizations_delegated_services_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "organizations_delegated_services_lookup_account_id" {
  description = "Map of account_id values across all organizations_delegated_services_lookup, keyed the same as var.organizations_delegated_services_lookup"
  value       = { for k, v in data.aws_organizations_delegated_services.organizations_delegated_services_lookup : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "organizations_delegated_services_lookup_delegated_services" {
  description = "Map of delegated_services values across all organizations_delegated_services_lookup, keyed the same as var.organizations_delegated_services_lookup"
  value       = { for k, v in data.aws_organizations_delegated_services.organizations_delegated_services_lookup : k => v.delegated_services if v.delegated_services != null && length(v.delegated_services) > 0 }
}

