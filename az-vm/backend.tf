# Configure the Azure Provider
terraform {
 backend "azurerm" {
    resource_group_name   = "AksTerraform-RG"
    storage_account_name  = "jayaaksterraform"
    container_name        = "tfstate"
    key                   = "terraform-dev.tfstate"
  }
}
