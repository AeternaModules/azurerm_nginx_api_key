output "nginx_api_keys_end_date_time" {
  description = "Map of end_date_time values across all nginx_api_keys, keyed the same as var.nginx_api_keys"
  value       = { for k, v in azurerm_nginx_api_key.nginx_api_keys : k => v.end_date_time }
}
output "nginx_api_keys_hint" {
  description = "Map of hint values across all nginx_api_keys, keyed the same as var.nginx_api_keys"
  value       = { for k, v in azurerm_nginx_api_key.nginx_api_keys : k => v.hint }
}
output "nginx_api_keys_name" {
  description = "Map of name values across all nginx_api_keys, keyed the same as var.nginx_api_keys"
  value       = { for k, v in azurerm_nginx_api_key.nginx_api_keys : k => v.name }
}
output "nginx_api_keys_nginx_deployment_id" {
  description = "Map of nginx_deployment_id values across all nginx_api_keys, keyed the same as var.nginx_api_keys"
  value       = { for k, v in azurerm_nginx_api_key.nginx_api_keys : k => v.nginx_deployment_id }
}
output "nginx_api_keys_secret_text" {
  description = "Map of secret_text values across all nginx_api_keys, keyed the same as var.nginx_api_keys"
  value       = { for k, v in azurerm_nginx_api_key.nginx_api_keys : k => v.secret_text }
  sensitive   = true
}

