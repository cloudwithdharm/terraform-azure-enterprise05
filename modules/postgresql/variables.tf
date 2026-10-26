
variable "rg_name" {
  description = "Resource group name"
}

variable "location" {
  description = "Azure region"
}

variable "server_name" {
  description = "Globally unique PostgreSQL server name"
}

variable "database_name" {
  description = "Application database name"
  default     = "appdb"
}

variable "admin_username" {
  description = "PostgreSQL administrator username"
}

variable "admin_password" {
  description = "PostgreSQL administrator password"
  sensitive   = true
}

variable "database_subnet_id" {
  description = "Delegated PostgreSQL subnet ID"
}

variable "private_dns_zone_id" {
  description = "Private DNS zone resource ID"
}

variable "vm_size" {
  description = "PostgreSQL compute SKU"
  default     = "B_Standard_B1ms"
}
