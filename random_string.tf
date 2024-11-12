resource "random_string" "mysql_name" {
  length  = var.random_string_length
  special = false
  upper   = false
  lower   = true
  numeric  = true
}
