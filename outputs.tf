output "environment" {
  description = "The environment for the deployment"
  value       = var.environment
}

output "location" {
  description = "The Azure region where the resource group is deployed"
  value       = azurerm_resource_group.main.location
}

output "name_prefix" {
  description = "The prefix used for naming resources"
  value       = local.name_prefix
}

output "project_name" {
  description = "The name of the project"
  value       = var.project_name
}

output "rg_id" {
  description = "The ID of the main Azure Resource Group"
  value       = azurerm_resource_group.main.id
}

output "rg_name" {
  description = "The name of the main Azure Resource Group"
  value       = azurerm_resource_group.main.name
}

output "environment_canonical" {
  value = local.env_standard_suffix
}
