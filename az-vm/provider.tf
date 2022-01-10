terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.0" # Optional but recommended in productions
    }
  }
 backend "azurerm" {
    resource_group_name   = "AksTerraform-RG"
    storage_account_name  = "jayaaksterraform"
    container_name        = "tfstate"
    key                   = "terraform-dev.tfstate"
  }
}
provider "azurerm" {
  version = "2.0.0"
features {}
}