output "virtual_network_id" {
  description = "ID of the created virtual network"
  value       = azurerm_virtual_network.example.id
}
output "virtual_network_name" {
  description = "Name of the created virtual network"
  value       = azurerm_virtual_network.example.name
}
output "virtual_network_location" {
  description = "Location of the created virtual network"
  value       = azurerm_virtual_network.example.location
}
