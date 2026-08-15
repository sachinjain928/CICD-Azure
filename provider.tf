terraform {
  required_providers {
    azurerm = {

      source  = "hashicorp/azurerm"
      version = "~> 5.1.0"

    }

  }

  backend "azurerm" {
    resource_group_name  = "kml_rg_main-a8bfa261f7de4372"
    storage_account_name = "sjfirststorageaccount8"
    container_name       = "sachin-container3"
    key                  = "terraform.tfstate"
  }



}

provider "azurerm" {

  features {}
  resource_provider_registrations = "none"

}



