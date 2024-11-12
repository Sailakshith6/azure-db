output "mysql_server_name" {
  description = "The name of the MySQL server"
  value       = azurerm_mysql_flexible_server.example.name
}

output "mysql_database_name" {
  description = "The name of the MySQL database"
  value       = azurerm_mysql_flexible_database.example.name
}

output "mysql_server_fqdn" {
  description = "The FQDN of the MySQL server"
  value       = azurerm_mysql_flexible_server.example.fqdn
}
