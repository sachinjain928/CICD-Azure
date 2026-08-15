terraform {
  required_providers {
    azurerm = {

      source  = "hashicorp/azurerm"
      version = "~> 5.1.0"

    }

  }

  backend "azurerm" {
    resource_group_name  = "kml_rg_main-56c0d75070cb4c3d"
    storage_account_name = "sjfirststorageaccount8"
    container_name       = "sachin-container3"
    key                  = "terraform.tfstate1"
  }



}

provider "azurerm" {

  features {}
  resource_provider_registrations = "none"

}



