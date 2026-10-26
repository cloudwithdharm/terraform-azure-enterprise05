
output "vm_ids" {
  description = "IDs of the Linux virtual machines"
  value = {
    for name, vm in azurerm_linux_virtual_machine.main :
    name => vm.id
  }
}

output "vm_private_ips" {
  description = "Private IP addresses of the virtual machines"
  value = {
    for name, nic in azurerm_network_interface.main :
    name => nic.private_ip_address
  }
}

output "nic_ids" {
  description = "Network interface IDs"
  value = {
    for name, nic in azurerm_network_interface.main :
    name => nic.id
  }
}
