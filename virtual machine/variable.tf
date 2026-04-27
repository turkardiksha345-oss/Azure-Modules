variable "vm_name" {
  description = "Name of the virtual machine"
  type        = string
}

variable "vm_size" {
  type = string
}

variable "admin_username" {
  type = string
}

variable "admin_password" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "network_interface_id" {
  type = string
}

variable "sku" {
  type = string
}

variable "offer" {
  type = string
}

variable "storage_account_type" {
  type = string
}