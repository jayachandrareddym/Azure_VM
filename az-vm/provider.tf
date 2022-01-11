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
    client_id = "36046737-0667-406b-be84-b5025b531df5"
    client_secret = "omY7Q~f3vw1HiY~1sQGNCviiuVW0CbbTOvyLp"
    tenant_id = "b41b72d0-4e9f-4c26-8a69-f949f367c91d"
    features {}
}
