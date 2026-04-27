provider "azurerm" {
  features {}
}

module "rg" {
  source = "./Resource group"

    resource_group_name = var.resource_group_name
    location            = var.location
}

module "nsg" {
  source = "./Security group"

  resource_group_name = module.rg.rg_name
  location            = module.rg.rg_location
  nsg_name            = var.nsg_name
}

module "vnet" {
  source = "./Virtual Network"

  resource_group_name               = module.rg.rg_name
  location                          = module.rg.rg_location
  nsg_id                            = module.nsg.nsg_id
  vnet_name                         = var.vnet_name
  vnet_address_space                = var.vnet_address_space
  subnet_name                       = var.subnet_name
  subnet_address_prefixes           = var.subnet_address_prefixes
  public_ip_name                    = var.public_ip_name
  app_gateway_subnet_name           = var.app_gateway_subnet_name
  app_gateway_subnet_address_prefixes = var.app_gateway_subnet_address_prefixes
  app_gateway_public_ip_name        = var.app_gateway_public_ip_name
}

module "app_gateway" {
  source = "./Azure Application Gateway"

  app_gateway_name       = var.app_gateway_name
  resource_group_name    = module.rg.rg_name
  location               = module.rg.rg_location
  app_gateway_sku_name   = var.app_gateway_sku_name
  app_gateway_sku_tier   = var.app_gateway_sku_tier
  app_gateway_capacity   = var.app_gateway_capacity
  app_gateway_subnet_id  = module.vnet.appgw_subnet_id
  app_gateway_public_ip_id = module.vnet.appgw_public_ip_id
}

module "vm" {
  source = "./virtual machine"

  resource_group_name   = module.rg.rg_name
  location              = module.rg.rg_location
  network_interface_id  = module.vnet.nic_id
  vm_name               = var.vm_name
  vm_size               = var.vm_size
  admin_username        = var.admin_username
  admin_password        = var.admin_password
  sku                   = var.sku
  offer                 = var.offer
  storage_account_type  = var.storage_account_type
}

module "storage" {
  source = "./Blob Storage"

  resource_group_name      = module.rg.rg_name
  location                 = module.rg.rg_location
  storage_account_name     = var.storage_account_name
  container_name           = var.storage_container_name
  blob_name                = var.blob_name
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}

module "monitor" {
  source = "./Azure Monitor"
 
  resource_group_name         = module.rg.rg_name
  location                    = module.rg.rg_location
  vm_id                       = module.vm.vm_id
  log_analytics_workspace_name = var.log_analytics_workspace_name
  action_group_name           = var.action_group_name
  alert_name                  = var.alert_name
  alert_email                 = var.alert_email
  sku                         = var.law_sku
  retention_in_days           = var.retention_in_days
  short_name                  = var.short_name
  threshold                   = var.threshold
  frequency                   = var.frequency
  window_size                 = var.window_size
  severity                    = var.severity
}