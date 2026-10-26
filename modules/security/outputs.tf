
output "key_vault_id" {
  value       = azurerm_key_vault.main.id
}

output "key_vault_uri" {
  value       = azurerm_key_vault.main.vault_uri
}

output "managed_identity_id" {
  value       = azurerm_user_assigned_identity.main.id
}

output "managed_identity_client_id" {
  value       = azurerm_user_assigned_identity.main.client_id
}

output "managed_identity_principal_id" {
  value       = azurerm_user_assigned_identity.main.principal_id
}
