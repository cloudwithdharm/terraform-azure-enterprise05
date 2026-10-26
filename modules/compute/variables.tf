
variable "rg_name" {
  description = "Resource group name"
}

variable "location" {
  description = "Azure region"
}

variable "vm_subnet_id" {
  description = "Subnet ID for virtual machines"
}

variable "vm_names" {
  description = "Names of virtual machines"
  default     = ["vm-dev-01", "vm-dev-02"]
}

variable "vm_size" {
  description = "Azure VM SKU"
  default     = "Standard_B2ts_v2"
}

variable "admin_username" {
  description = "Linux administrator username"
  default     = "azureuser"
}

variable "admin_ssh_public_key" {
  description = "Public SSH key content"
  sensitive   = true
}

variable "managed_identity_id" {
  description = "Optional user-assigned managed identity ID"
  default     = null
}
