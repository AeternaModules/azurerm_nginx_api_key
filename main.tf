data "azurerm_key_vault_secret" "secret_text" {
  for_each     = { for k, v in var.nginx_api_keys : k => v if v.secret_text_key_vault_id != null && v.secret_text_key_vault_secret_name != null }
  name         = each.value.secret_text_key_vault_secret_name
  key_vault_id = each.value.secret_text_key_vault_id
}
resource "azurerm_nginx_api_key" "nginx_api_keys" {
  for_each = var.nginx_api_keys

  end_date_time       = each.value.end_date_time
  name                = each.value.name
  nginx_deployment_id = each.value.nginx_deployment_id
  secret_text         = each.value.secret_text != null ? each.value.secret_text : try(data.azurerm_key_vault_secret.secret_text[each.key].value, null)
}

