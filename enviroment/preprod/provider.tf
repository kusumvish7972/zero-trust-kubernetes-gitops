terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.1.0"

    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "671a7c03-6175-4e7c-84d2-dbb791d4c47a"
}