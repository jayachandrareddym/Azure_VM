terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.91.0"
    }
  }
}

provider "azurerm" {
    subscription_id = "d27e7e46-ee4b-4636-a893-80884653852d"
    client_id = "ca2129a7-26c7-4b22-b0ed-3852fef37e74"
    client_secret = "8a59cc04-9494-473c-b528-c2f5d45664d5"
    tenant_id = "b41b72d0-4e9f-4c26-8a69-f949f367c91d"
    features {}
}
