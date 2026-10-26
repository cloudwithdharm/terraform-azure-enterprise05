output "rg" {
  description = "Resource groups created by the root module"

  value = {
    for key, rg in azurerm_resource_group.main :
    key => rg.name
  }
}

output "vnet_id" {
  description = "Virtual network ID"
  value       = module.network.vnet_id
}

output "frontend_subnet_id" {
  description = "Frontend subnet ID"
  value       = module.network.frontend_subnet_id
}

output "backend_subnet_id" {
  description = "Backend subnet ID"
  value       = module.network.backend_subnet_id
}

output "database_subnet_id" {
  description = "Database subnet ID"
  value       = module.network.database_subnet_id
}

output "vm_ids" {
  description = "IDs of deployed virtual machines"
  value       = module.compute.vm_ids
}

output "vm_private_ips" {
  description = "Private IPs of virtual machines"
  value       = module.compute.vm_private_ips
}

output "key_vault_id" {
  description = "Key Vault resource ID"
  value       = module.security.key_vault_id
}

output "managed_identity_id" {
  description = "User-assigned managed identity ID"
  value       = module.security.managed_identity_id
}

output "postgresql_server_name" {
  description = "PostgreSQL Flexible Server name"
  value       = module.postgresql.postgresql_server_name
}

output "postgresql_fqdn" {
  description = "Private PostgreSQL server hostname"
  value       = module.postgresql.postgresql_fqdn
}

output "postgresql_database_name" {
  description = "Application database name"
  value       = module.postgresql.postgresql_database_name
}
