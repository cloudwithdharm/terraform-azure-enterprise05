
variable "rg_name" {
  description = "Existing Resource Group name"
}

variable "location" {}

variable "vnet_name" {
  description = "Virtual Network name"
}

variable "vnet_address_space" {
  description = "Virtual Network address space"
  default     = ["10.0.0.0/16"]
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
