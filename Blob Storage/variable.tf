variable "storage_account_name" {
  description = "Name of the storage account"
  type        = string
}

variable "container_name" {
  description = "Name of the storage container"
  type        = string
}

variable "blob_name" {
  description = "Name of the blob file"
  type        = string
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "account_tier" {
  description = "Account tier for storage account"
  type        = string
}

variable "account_replication_type" {
  description = "Account replication type for storage account"
  type        = string
}

