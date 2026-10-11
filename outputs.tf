output "site_verification_owners_id" {
  description = "Map of id values across all site_verification_owners, keyed the same as var.site_verification_owners except keys with no id are omitted"
  value       = { for k, v in google_site_verification_owner.site_verification_owners : k => v.id if v.id != null && length(v.id) > 0 }
}
output "site_verification_owners_deletion_policy" {
  description = "Map of deletion_policy values across all site_verification_owners, keyed the same as var.site_verification_owners except keys with no deletion_policy are omitted"
  value       = { for k, v in google_site_verification_owner.site_verification_owners : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "site_verification_owners_email" {
  description = "Map of email values across all site_verification_owners, keyed the same as var.site_verification_owners except keys with no email are omitted"
  value       = { for k, v in google_site_verification_owner.site_verification_owners : k => v.email if v.email != null && length(v.email) > 0 }
}
output "site_verification_owners_web_resource_id" {
  description = "Map of web_resource_id values across all site_verification_owners, keyed the same as var.site_verification_owners except keys with no web_resource_id are omitted"
  value       = { for k, v in google_site_verification_owner.site_verification_owners : k => v.web_resource_id if v.web_resource_id != null && length(v.web_resource_id) > 0 }
}

