variable "subscription_id" {
  description = "The subscription ID for the Azure account."
  type        = string
}

variable "client_id" {
  description = "The client ID for Azure authentication."
  type        = string
}

variable "client_secret" {
  description = "The client secret for Azure authentication."
  type        = string
  sensitive   = true  # Mark as sensitive to avoid displaying in logs
}

variable "tenant_id" {
  description = "The tenant ID for the Azure account."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the Azure resource group."
  type        = string
}

variable "location" {
  description = "The Azure location for resources."
  type        = string
}

variable "mysql_admin_username" {
  description = "The administrator username for the MySQL server"
  type        = string
}

variable "mysql_admin_password" {
  description = "The administrator password for the MySQL server"
  type        = string
  sensitive   = true
}

variable "random_string_length" {
  description = "Length of the random string appended to resource names"
  type        = number
  default     = 8
}
