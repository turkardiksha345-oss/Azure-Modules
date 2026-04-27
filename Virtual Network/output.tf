# Virtual Network
output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}

# Subnet
output "subnet_name" {
  value = azurerm_subnet.subnet.name
}
# VNet ID
output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}

# Subnet ID
output "subnet_id" {
  value = azurerm_subnet.subnet.id
}

# Application Gateway Subnet ID
output "appgw_subnet_id" {
  value = azurerm_subnet.appgw_subnet.id
}

# Network Interface ID
output "nic_id" {
  value = azurerm_network_interface.nic.id
}

# Public IP Address
output "public_ip_address" {
  value = azurerm_public_ip.pip.ip_address
}

# Application Gateway Public IP ID
output "appgw_public_ip_id" {
  value = azurerm_public_ip.appgw_pip.id
}
