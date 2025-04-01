provider "azurerm" {
  features {}
  use_oidc = true  # Enable OIDC authentication
}

resource "azurerm_resource_group" "app_rg" {
  name     = "sama-a12-rg"
  location = "Canada Central"
}

output "resource_group_name" {
  value = azurerm_resource_group.app_rg.name
}
