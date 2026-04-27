variable "app_gateway_name" {
  description = "Name of the Application Gateway"
  type        = string
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "app_gateway_sku_name" {
  description = "SKU name for the Application Gateway"
  type        = string
}

variable "app_gateway_sku_tier" {
  description = "SKU tier for the Application Gateway"
  type        = string
}

variable "app_gateway_capacity" {
  description = "Capacity for the Application Gateway"
  type        = number
}

variable "app_gateway_subnet_id" {
  description = "Subnet ID for the Application Gateway"
  type        = string
}

variable "app_gateway_public_ip_id" {
  description = "Public IP ID for the Application Gateway"
  type        = string
}

variable "backend_address_pool_name" {
  description = "Name of the backend address pool"
  type        = string
  default     = "backend-pool"
}

variable "frontend_port_name" {
  description = "Name of the frontend port"
  type        = string
  default     = "frontend-port"
}

variable "frontend_port" {
  description = "Port number for frontend"
  type        = number
  default     = 80
}

variable "frontend_ip_configuration_name" {
  description = "Name of the frontend IP configuration"
  type        = string
  default     = "frontend-ip-config"
}

variable "http_setting_name" {
  description = "Name of the HTTP setting"
  type        = string
  default     = "http-setting"
}

variable "listener_name" {
  description = "Name of the listener"
  type        = string
  default     = "listener"
}

variable "request_routing_rule_name" {
  description = "Name of the request routing rule"
  type        = string
  default     = "routing-rule"
}