
output "log_analytics_id" {
  value = azurerm_log_analytics_workspace.log_analytics_workspace.id
}
output "log_analytics_workspace_id" {
  value = azurerm_log_analytics_workspace.log_analytics_workspace.workspace_id
}
output "primary_shared_key" {
  value = azurerm_log_analytics_workspace.log_analytics_workspace.primary_shared_key
}
output "secondary_shared_key" {
  value = azurerm_log_analytics_workspace.log_analytics_workspace.secondary_shared_key
}