variable "location" {
  description = "The Azure region where resources will be created"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "example-rg"
}

variable "mysql_admin_username" {
  description = "The administrator username for the MySQL server"
  type        = string
  default     = "mysqladmin"
}

variable "mysql_admin_password" {
  description = "The administrator password for the MySQL server"
  type        = string
  sensitive   = true
  default     = "P@ssw0rd1234"
}

variable "random_string_length" {
  description = "Length of the random string appended to resource names"
  type        = number
  default     = 8
}
