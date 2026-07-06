output "nginx_api_keys" {
  description = "All nginx_api_key resources"
  value       = azurerm_nginx_api_key.nginx_api_keys
  sensitive   = true
}
output "nginx_api_keys_end_date_time" {
  description = "List of end_date_time values across all nginx_api_keys"
  value       = [for k, v in azurerm_nginx_api_key.nginx_api_keys : v.end_date_time]
}
output "nginx_api_keys_hint" {
  description = "List of hint values across all nginx_api_keys"
  value       = [for k, v in azurerm_nginx_api_key.nginx_api_keys : v.hint]
}
output "nginx_api_keys_name" {
  description = "List of name values across all nginx_api_keys"
  value       = [for k, v in azurerm_nginx_api_key.nginx_api_keys : v.name]
}
output "nginx_api_keys_nginx_deployment_id" {
  description = "List of nginx_deployment_id values across all nginx_api_keys"
  value       = [for k, v in azurerm_nginx_api_key.nginx_api_keys : v.nginx_deployment_id]
}
output "nginx_api_keys_secret_text" {
  description = "List of secret_text values across all nginx_api_keys"
  value       = [for k, v in azurerm_nginx_api_key.nginx_api_keys : v.secret_text]
  sensitive   = true
}

