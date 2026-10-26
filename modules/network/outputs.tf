
output "vnet_id" {
  description = "Virtual Network ID"
  value       = azurerm_virtual_network.vnet.id
}

output "frontend_subnet_id" {
  value = azurerm_subnet.frontend.id
}

output "backend_subnet_id" {
  value = azurerm_subnet.backend.id
}

output "database_subnet_id" {
  value = azurerm_subnet.database.id
}

output "frontend_nsg_id" {
  value = azurerm_network_security_group.frontend.id
}

output "backend_nsg_id" {
  value = azurerm_network_security_group.backend.id
}

output "database_nsg_id" {
  value = azurerm_network_security_group.database.id
}

output "postgresql_private_dns_zone_id" {
  value       = azurerm_private_dns_zone.postgresql.id
}