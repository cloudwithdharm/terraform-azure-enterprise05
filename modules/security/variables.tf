
variable "rg_name" {
  description = "Existing Resource Group name"
}

variable "location" {}

variable "key_vault_name" {
  description = "Globally unique Key Vault name"
}

variable "identity_name" {
  description = "User-assigned Managed Identity name"
}
