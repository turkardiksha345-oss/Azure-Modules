output "rg_name" {
  value = module.rg.rg_name
}

output "rg_location" {
  value = module.rg.rg_location
}

output "nsg_id" {
  value = module.nsg.nsg_id
}

output "vnet_id" {
  value = module.vnet.vnet_id
}

output "subnet_id" {
  value = module.vnet.subnet_id
}

output "appgw_subnet_id" {
  value = module.vnet.appgw_subnet_id
}

output "nic_id" {
  value = module.vnet.nic_id
}

output "public_ip_address" {
  value = module.vnet.public_ip_address
}

output "vm_id" {
  value = module.vm.vm_id
}

output "storage_account_name" {
  value = module.storage.storage_account_name
}

output "log_analytics_workspace_id" {
  value = module.monitor.log_analytics_workspace_id
}

output "app_gateway_id" {
  value = module.app_gateway.app_gateway_id
}