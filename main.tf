data "azurerm_resource_group" "example" {
  name = var.resource_group_name
}

resource "azurerm_mysql_flexible_server" "example" {
  name                   = "mysql-${random_string.mysql_name.result}"
  resource_group_name    = var.resource_group_name
  location               = var.location
  administrator_login = var.mysql_admin_username
  administrator_password = var.mysql_admin_password
  version = var.mysql_version
  sku_name = var.sku_name
}

resource "azurerm_mysql_flexible_database" "example" {
  name                = "db-${random_string.mysql_name.result}"
  resource_group_name =  var.resource_group_name
  server_name         = azurerm_mysql_flexible_server.example.name
  charset             = "utf8"
  collation           = "utf8_unicode_ci"
}
