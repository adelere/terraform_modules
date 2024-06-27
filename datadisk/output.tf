output "resource_group_id" {
  description = "The ID of the created resource group"
  value       = azurerm_resource_group.example.id
}

output "virtual_network_id" {
  description = "The ID of the created virtual network"
  value       = azurerm_virtual_network.main.id
}

output "subnet_id" {
  description = "The ID of the created subnet"
  value       = azurerm_subnet.internal.id
}

output "virtual_machine_id" {
  description = "The ID of the created virtual machine"
  value       = azurerm_virtual_machine.example.id
}
output "data_disk_id" {
  description = "The ID of the data disk attached to the virtual machine"
  value       = azurerm_managed_disk.example.id
}
output "data_disk_attachment_id" {
  description = "The ID of the data disk attachment for the virtual machine"
  value       = azurerm_virtual_machine_data_disk_attachment.example.id
}