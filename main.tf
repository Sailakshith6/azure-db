resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_mysql_server" "example" {
  name                = "mysql-${random_string.mysql_name.result}"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  administrator_login = var.mysql_admin_username
  administrator_password = var.mysql_admin_password
  version             = "8.0"

  sku_name = "B_Gen5_1"
  storage_mb = 5120
  backup_retention_days = 7
  geo_redundant_backup_enabled = false

  tags = {
    environment = "production"
  }
}

resource "azurerm_mysql_database" "example" {
  name                = "db-${random_string.mysql_name.result}"
  resource_group_name = azurerm_resource_group.example.name
  server_name         = azurerm_mysql_server.example.name
}

resource "azurerm_mysql_firewall_rule" "example" {
  name                = "example-firewall-rule"
  resource_group_name = azurerm_resource_group.example.name
  server_name         = azurerm_mysql_server.example.name
  start_ip_address    = "0.0.0.0"
  end_ip_address      = "255.255.255.255"
}
