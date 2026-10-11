data "openstack_identity_project_ids_v3" "identity_project_ids_v3_lookup" {
  for_each = var.identity_project_ids_v3_lookup

  domain_id  = each.value.domain_id
  enabled    = each.value.enabled
  is_domain  = each.value.is_domain
  name       = each.value.name
  name_regex = each.value.name_regex
  parent_id  = each.value.parent_id
  region     = each.value.region
  tags       = each.value.tags
}

