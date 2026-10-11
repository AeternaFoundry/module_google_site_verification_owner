resource "google_site_verification_owner" "site_verification_owners" {
  for_each = var.site_verification_owners

  email           = each.value.email
  web_resource_id = each.value.web_resource_id
  deletion_policy = each.value.deletion_policy

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

