output "resource_group_name" {
  description = "The name of the resource group"
  value       = azurerm_resource_group.example.name
}

output "resource_group_location" {
  description = "The location of the resource group"
  value       = azurerm_resource_group.example.location
}

output "virtual_network_id" {
  description = "The ID of the virtual network"
  value       = azurerm_virtual_network.example.id
}

output "virtual_network_address_space" {
  description = "The address space of the virtual network"
  value       = azurerm_virtual_network.example.address_space
}

output "service_subnet_id" {
  description = "The ID of the service subnet"
  value       = azurerm_subnet.service.id
}

output "service_subnet_address_prefixes" {
  description = "The address prefixes of the service subnet"
  value       = azurerm_subnet.service.address_prefixes
}

output "endpoint_subnet_id" {
  description = "The ID of the endpoint subnet"
  value       = azurerm_subnet.endpoint.id
}

output "endpoint_subnet_address_prefixes" {
  description = "The address prefixes of the endpoint subnet"
  value       = azurerm_subnet.endpoint.address_prefixes
}

output "public_ip_id" {
  description = "The ID of the public IP"
  value       = azurerm_public_ip.example.id
}

output "public_ip_address" {
  description = "The IP address of the public IP"
  value       = azurerm_public_ip.example.ip_address
}

output "load_balancer_id" {
  description = "The ID of the load balancer"
  value       = azurerm_lb.example.id
}

output "private_link_service_id" {
  description = "The ID of the private link service"
  value       = azurerm_private_link_service.example.id
}

output "private_endpoint_id" {
  description = "The ID of the private endpoint"
  value       = azurerm_private_endpoint.example.id
}
