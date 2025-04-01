terraform {
  required_version = "~> 1.5"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.117.1"
    }
  }

  # Backend configuration
  backend "azurerm" {
    storage_account_name = "samagithubactions"
    container_name       = "tfstate"
    key                  = "prod.app.tfstate"
    resource_group_name  = "sama-githubactions-rg"  # Add this line
    use_oidc             = true  # Enable OIDC authentication
  }
}
