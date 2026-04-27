variable "log_analytics_workspace_name" {
  description = "Name of the Log Analytics workspace"
  type        = string
}

variable "action_group_name" {
  description = "Name of the action group"
  type        = string
}

variable "alert_name" {
  description = "Name of the metric alert"
  type        = string
}

variable "alert_email" {
  description = "Email address for alerts"
  type        = string
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "vm_id" {
  type = string
}

variable "sku" {
  description = "SKU for Log Analytics Workspace"
  type        = string
}

variable "retention_in_days" {
  description = "Retention in days for Log Analytics"
  type        = number
}

variable "short_name" {
  description = "Short name for action group"
  type        = string
}

variable "threshold" {
  description = "Threshold for CPU alert"
  type        = number
}

variable "frequency" {
  description = "Frequency for alert evaluation"
  type        = string
}

variable "window_size" {
  description = "Window size for alert"
  type        = string
}

variable "severity" {
  description = "Severity level for alert"
  type        = number
}

