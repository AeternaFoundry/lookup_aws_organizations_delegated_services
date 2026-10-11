data "aws_organizations_delegated_services" "organizations_delegated_services_lookup" {
  for_each = var.organizations_delegated_services_lookup

  account_id = each.value.account_id
}

