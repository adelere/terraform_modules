output "resource_group_id" {
  value = azurerm_resource_group.example.id
}

output "virtual_network_id" {
  value = azurerm_virtual_network.example.id
}

output "subnet_service_id" {
  value = azurerm_subnet.service.id
}

output "subnet_endpoint_id" {
  value = azurerm_subnet.endpoint.id
}

output "public_ip_id" {
  value = azurerm_public_ip.example.id
}

output "lb_id" {
  value = azurerm_lb.example.id
}

output "private_link_service_id" {
  value = azurerm_private_link_service.example.id
}

output "private_endpoint_id" {
  value = azurerm_private_endpoint.example.id
}
