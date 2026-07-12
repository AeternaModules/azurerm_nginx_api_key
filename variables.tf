variable "nginx_api_keys" {
  description = <<EOT
Map of nginx_api_keys, attributes below
Required:
    - end_date_time
    - name
    - nginx_deployment_id
    - secret_text
    - secret_text_key_vault_id (alternative to secret_text - read from Key Vault instead)
    - secret_text_key_vault_secret_name (alternative to secret_text - read from Key Vault instead)
EOT

  type = map(object({
    end_date_time                     = string
    name                              = string
    nginx_deployment_id               = string
    secret_text                       = string
    secret_text_key_vault_id          = optional(string)
    secret_text_key_vault_secret_name = optional(string)
  }))
}

