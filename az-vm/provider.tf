terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.91.0"
    }
  }
}

provider "azurerm" {
    subscription_id = ""
    client_id = ""
    client_secret = ""
    tenant_id = ""  
    features {}
}
