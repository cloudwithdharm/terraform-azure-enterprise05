resource "azurerm_resource_group" "main" {
  for_each = var.rg
  name     = each.value.name
  location = each.value.location
}

# Network Module

module "network" {
  source = "../../modules/network"

  rg_name            = azurerm_resource_group.main["dev"].name
  location           = azurerm_resource_group.main["dev"].location
  vnet_name          = var.vnet_name
  vnet_address_space = var.vnet_address_space
  frontend_subnet    = var.frontend_subnet
  backend_subnet     = var.backend_subnet
  database_subnet    = var.database_subnet
}

# Security Module

module "security" {
  source = "../../modules/security"

  rg_name        = azurerm_resource_group.main["dev"].name
  location       = azurerm_resource_group.main["dev"].location
  key_vault_name = var.key_vault_name
  identity_name  = var.identity_name
}

# Compute Module

module "compute" {
  source = "../../modules/compute"

  rg_name      = azurerm_resource_group.main["dev"].name
  location     = azurerm_resource_group.main["dev"].location
  vm_subnet_id = module.network.backend_subnet_id

  vm_names             = var.vm_names
  vm_size              = var.vm_size
  admin_username       = var.admin_username
  admin_ssh_public_key = file(pathexpand(var.admin_ssh_public_key_path))
  managed_identity_id  = module.security.managed_identity_id
}

# PostgreSQL Module

module "postgresql" {
  source = "../../modules/postgresql"

  rg_name  = azurerm_resource_group.main["dev"].name
  location = azurerm_resource_group.main["dev"].location

  server_name   = var.postgresql_server_name
  database_name = var.postgresql_database_name

  admin_username = var.postgresql_admin_username
  admin_password = var.postgresql_admin_password

  database_subnet_id  = module.network.database_subnet_id
  private_dns_zone_id = module.network.postgresql_private_dns_zone_id
}