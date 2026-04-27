variable "resource_group_name" {
  description = "RG name"
  type        = string
  default = "demo-rg"
}

variable "location" {
  description = "Azure location"
  type        = string
  default = "Central India"
}

# Virtual Network variables
variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
  default     = "demo-vnet"
}

variable "vnet_address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
  default     = "demo-subnet"
}

variable "subnet_address_prefixes" {
  description = "Address prefixes for the subnet"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "public_ip_name" {
  description = "Name of the public IP"
  type        = string
  default     = "demo-pip"
}

# NSG variables
variable "nsg_name" {
  description = "Name of the network security group"
  type        = string
  default     = "demo-nsg"
}

# VM variables
variable "vm_name" {
  description = "Name of the virtual machine"
  type        = string
  default     = "demo-vm"
}

variable "vm_size" {
  description = "Size of the virtual machine"
  type        = string
  default     = "Standard_DS1_v2"
}

variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
  default     = "adminuser"
}

variable "admin_password" {
  description = "Admin password for the VM"
  type        = string
  default     = "P@ssw0rd123!"
  sensitive   = true
}

# VM additional variables
variable "sku" {
  description = "SKU for the VM image"
  type        = string
  default     = "22_04-lts"
}

variable "offer" {
  description = "Offer for the VM image"
  type        = string
  default     = "0001-com-ubuntu-server-jammy"
}

variable "storage_account_type" {
  description = "Storage account type for VM OS disk"
  type        = string
  default     = "Standard_LRS"
}

# Storage variables
variable "storage_account_name" {
  description = "Name of the storage account"
  type        = string
  default     = "storagedikshasaccount"
}

variable "storage_container_name" {
  description = "Name of the storage container"
  type        = string
  default     = "demo-container"
}

# Storage additional variables
variable "blob_name" {
  description = "Name of the blob file"
  type        = string
  default     = "demodikshablob"
}

variable "account_tier" {
  description = "Account tier for storage account"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Account replication type for storage account"
  type        = string
  default     = "LRS"
}

# Monitor variables
variable "log_analytics_workspace_name" {
  description = "Name of the Log Analytics workspace"
  type        = string
  default     = "demo-law"
}

# Monitor additional variables
variable "action_group_name" {
  description = "Name of the action group"
  type        = string
  default     = "demo-action-group"
}

variable "alert_name" {
  description = "Name of the metric alert"
  type        = string
  default     = "high-cpu-alert"
}

variable "alert_email" {
  description = "Email address for alerts"
  type        = string
  default     = "dikshaturkat2022@gmail.com"
}

variable "law_sku" {
  description = "SKU for Log Analytics Workspace"
  type        = string
  default     = "PerGB2018"
}

variable "retention_in_days" {
  description = "Retention in days for Log Analytics"
  type        = number
  default     = 30
}

variable "short_name" {
  description = "Short name for action group"
  type        = string
  default     = "demoshort"
}

variable "threshold" {
  description = "Threshold for CPU alert"
  type        = number
  default     = 50
}

variable "frequency" {
  description = "Frequency for alert evaluation"
  type        = string
  default     = "PT1M"
}

variable "window_size" {
  description = "Window size for alert"
  type        = string
  default     = "PT5M"
}

variable "severity" {
  description = "Severity level for alert"
  type        = number
  default     = 3
}

# Application Gateway variables
variable "app_gateway_name" {
  description = "Name of the Application Gateway"
  type        = string
  default     = "demo-appgw"
}

variable "app_gateway_sku_name" {
  description = "SKU name for the Application Gateway"
  type        = string
  default     = "Standard_v2"
}

variable "app_gateway_sku_tier" {
  description = "SKU tier for the Application Gateway"
  type        = string
  default     = "Standard_v2"
}

variable "app_gateway_capacity" {
  description = "Capacity for the Application Gateway"
  type        = number
  default     = 2
}

variable "app_gateway_subnet_name" {
  description = "Name of the subnet for Application Gateway"
  type        = string
  default     = "appgw-subnet"
}

variable "app_gateway_subnet_address_prefixes" {
  description = "Address prefixes for the Application Gateway subnet"
  type        = list(string)
  default     = ["10.0.2.0/24"]
}

variable "app_gateway_public_ip_name" {
  description = "Name of the public IP for Application Gateway"
  type        = string
  default     = "appgw-pip"
}