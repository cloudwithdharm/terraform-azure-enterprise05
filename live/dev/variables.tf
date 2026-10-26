variable "rg" {}

variable "vnet_name" {
  default = "vnet-dev"
}

variable "vnet_address_space" {
  type    = list(string)
  default = ["10.0.0.0/16"]
}

variable "frontend_subnet" {
  default = "10.0.1.0/24"
}

variable "backend_subnet" {
  default = "10.0.2.0/24"
}

variable "database_subnet" {
  default = "10.0.3.0/24"
}

variable "key_vault_name" {
}

variable "identity_name" {
  default = "id-devops-dev"
}

variable "vm_names" {
  default = ["vm-dev-01", "vm-dev-02"]
}

variable "vm_size" {
  default = "Standard_B2ts_v2"
}

variable "admin_username" {
  default = "azureuser"
}

variable "admin_ssh_public_key_path" {
  description = "Path to the local SSH public key"
  default     = "~/.ssh/id_rsa.pub"
}

variable "postgresql_server_name" {
  description = "Globally unique PostgreSQL server name"
}

variable "postgresql_database_name" {
  default = "appdb"
}

variable "postgresql_admin_username" {
  default = "pgadminuser"
}

variable "postgresql_admin_password" {
  description = "PostgreSQL administrator password"
  sensitive   = true
}
