
resource "azurerm_postgresql_flexible_server" "main" {
  name                = var.server_name
  resource_group_name = var.rg_name
  location            = var.location

  version    = "16"
  sku_name   = var.vm_size
  storage_mb = 32768

  administrator_login    = var.admin_username
  administrator_password = var.admin_password

  delegated_subnet_id           = var.database_subnet_id
  private_dns_zone_id           = var.private_dns_zone_id
  public_network_access_enabled = false

  backup_retention_days        = 7
  geo_redundant_backup_enabled = false

  authentication {
    password_auth_enabled         = true
    active_directory_auth_enabled = false
  }
}

resource "azurerm_postgresql_flexible_server_database" "main" {
  name      = var.database_name
  server_id = azurerm_postgresql_flexible_server.main.id

  charset   = "UTF8"
  collation = "en_US.utf8"
}
