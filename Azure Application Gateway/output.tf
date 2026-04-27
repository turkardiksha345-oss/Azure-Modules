output "app_gateway_id" {
  value = azurerm_application_gateway.appgw.id
}

output "app_gateway_name" {
  value = azurerm_application_gateway.appgw.name
}

output "app_gateway_public_ip" {
  value = azurerm_application_gateway.appgw.frontend_ip_configuration[0].public_ip_address_id
}