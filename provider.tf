terraform {
  required_providers {
    azurerm = {

      source  = "hashicorp/azurerm"
      version = "~> 4.0"

    }

  }

  backend "azurerm" {
    resource_group_name  = "kml_rg_main-e0d8cc8ff06a4b07"
    storage_account_name = "sjfirststorageaccount2"
    container_name       = "sachin-container1"
    key                  = "terraform.tfstate"
  }



}

provider "azurerm" {

  features {}
  resource_provider_registrations = "none"

}



