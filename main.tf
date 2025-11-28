resource "azurerm_resource_group" "main" {
  name     = "terraform-state-rg"
  location = var.location
}
