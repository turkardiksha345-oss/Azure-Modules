variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
}

variable "vnet_address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
}

variable "subnet_address_prefixes" {
  description = "Address prefixes for the subnet"
  type        = list(string)
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
}

variable "public_ip_name" {
  description = "Name of the public IP"
  type        = string
}

variable "app_gateway_subnet_name" {
  description = "Name of the subnet for Application Gateway"
  type        = string
}

variable "app_gateway_subnet_address_prefixes" {
  description = "Address prefixes for the Application Gateway subnet"
  type        = list(string)
}

variable "app_gateway_public_ip_name" {
  description = "Name of the public IP for Application Gateway"
  type        = string
  default     = "appgw-pip"
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "nsg_id" {
  type = string
}