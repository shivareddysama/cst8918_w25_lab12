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
# Create a Virtual Network
resource "azurerm_virtual_network" "vnet" {
  name                = "example-vnet"
  location            = "Canada Central"
  resource_group_name = azurerm_resource_group.app_rg.name
  address_space       = ["10.0.0.0/16"]
}

# Create a Subnet within the Virtual Network
resource "azurerm_subnet" "subnet" {
  name                 = "example-subnet"
  resource_group_name  = azurerm_resource_group.app_rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}
