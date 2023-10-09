terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  backend "azurerm" {
    # Details configured by GitHub Actions
    use_azuread_auth = true
    use_oidc         = true
  }
}