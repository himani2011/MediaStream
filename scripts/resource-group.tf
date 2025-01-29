resource "azurerm_resource_group" "mediaStream" {
  name     = var.app_name
  location = var.location
}
