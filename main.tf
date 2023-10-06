terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.75.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "91ee7caf-72a4-4c37-bc95-e981da791015"
  client_id       = "b063fa2e-50fb-48e1-aa76-494a13f737ba"
  client_secret   = "qil8Q~61VbTG3osx.K28XaYy.BUOP5Em3.mQ0cX4"
  tenant_id       = "65182fb0-1b7a-4e10-b0a9-b2ea05982468"
  features {

  }
}

resource "azurerm_resource_group" "app-grep" {
  name     = "app-grep"
  location = "North Europe"

}

resource "azurerm_storage_account" "storage_account" {
  name                     = "storageaccountname90311"
  resource_group_name      = "app-grep"
  location                 = "North Europe"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }

}