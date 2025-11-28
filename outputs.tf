output "rg_name" {
  value = azurerm_resource_group.main.name
}

output "location" {
  value = azurerm_resource_group.main.location
}

output "rg_id" {
  value = azurerm_resource_group.main.id
}

output "project_name" {
  value = var.project_name
}

output "environment" {
  value = var.environment
}
