
data "azurerm_client_config" "current" {}

# Azure Key Vault

resource "azurerm_key_vault" "main" {
  name                = var.key_vault_name
  location            = var.location
  resource_group_name = var.rg_name
  tenant_id           = data.azurerm_client_config.current.tenant_id
  sku_name            = "standard"

  rbac_authorization_enabled   = true
  soft_delete_retention_days   = 90
  purge_protection_enabled     = false
  public_network_access_enabled = true
}

# User-assigned Managed Identity

resource "azurerm_user_assigned_identity" "main" {
  name                = var.identity_name
  location            = var.location
  resource_group_name = var.rg_name
}

# Allow this identity to read Key Vault secrets

resource "azurerm_role_assignment" "key_vault_secrets_user" {
  scope                = azurerm_key_vault.main.id
  role_definition_name = "Key Vault Secrets User"
  principal_id         = azurerm_user_assigned_identity.main.principal_id
  principal_type       = "ServicePrincipal"
}
