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
    client_id = "47e4b92f-ae57-4fc6-b9a5-67157c74d2b9"
    client_secret = "995bf691-5939-4f94-bccf-abff1694992e"
    tenant_id = "b41b72d0-4e9f-4c26-8a69-f949f367c91d"
    features {}
}
