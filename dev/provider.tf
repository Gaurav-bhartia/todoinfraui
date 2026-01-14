terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }
  backend "azurerm" {
    resource_group_name = " "
    storage_account_name = " "
    container_name = " "
    key = " "
  }
}

provider "azurerm" {
  features {}
  subscription_id = "9ae44b4d-7967-4561-84e0-066ac02817fd"
}
