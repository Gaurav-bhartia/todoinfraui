terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "probook"
    storage_account_name = "nexgenstg1234"
    container_name = "gennexcontainer"
    key = "gennex.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "9ae44b4d-7967-4561-84e0-066ac02817fd"
}
