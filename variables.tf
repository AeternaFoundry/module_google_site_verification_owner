variable "site_verification_owners" {
  description = <<EOT
Map of site_verification_owners, attributes below
Required:
    - email
    - web_resource_id
Optional:
    - deletion_policy
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    email           = string
    web_resource_id = string
    deletion_policy = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}

