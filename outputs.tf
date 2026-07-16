output "nginx_api_keys_id" {
  description = "Map of id values across all nginx_api_keys, keyed the same as var.nginx_api_keys"
  value       = { for k, v in azurerm_nginx_api_key.nginx_api_keys : k => v.id if v.id != null && length(v.id) > 0 }
}
output "nginx_api_keys_end_date_time" {
  description = "Map of end_date_time values across all nginx_api_keys, keyed the same as var.nginx_api_keys"
  value       = { for k, v in azurerm_nginx_api_key.nginx_api_keys : k => v.end_date_time if v.end_date_time != null && length(v.end_date_time) > 0 }
}
output "nginx_api_keys_hint" {
  description = "Map of hint values across all nginx_api_keys, keyed the same as var.nginx_api_keys"
  value       = { for k, v in azurerm_nginx_api_key.nginx_api_keys : k => v.hint if v.hint != null && length(v.hint) > 0 }
}
output "nginx_api_keys_name" {
  description = "Map of name values across all nginx_api_keys, keyed the same as var.nginx_api_keys"
  value       = { for k, v in azurerm_nginx_api_key.nginx_api_keys : k => v.name if v.name != null && length(v.name) > 0 }
}
output "nginx_api_keys_nginx_deployment_id" {
  description = "Map of nginx_deployment_id values across all nginx_api_keys, keyed the same as var.nginx_api_keys"
  value       = { for k, v in azurerm_nginx_api_key.nginx_api_keys : k => v.nginx_deployment_id if v.nginx_deployment_id != null && length(v.nginx_deployment_id) > 0 }
}
output "nginx_api_keys_secret_text" {
  description = "Map of secret_text values across all nginx_api_keys, keyed the same as var.nginx_api_keys"
  value       = { for k, v in azurerm_nginx_api_key.nginx_api_keys : k => v.secret_text if v.secret_text != null && length(v.secret_text) > 0 }
  sensitive   = true
}

