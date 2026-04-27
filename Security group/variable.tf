variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "nsg_name" {
  description = "Name of the network security group"
  type        = string
  default     = "demo-nsg"
}