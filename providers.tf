terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.2.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "sa1_test_eic_MayushaRathod"
    storage_account_name = "terrakubestate"
    container_name       = "tfstate"
    key                  = "terraform_state.tfstate"
  }
  
}

provider "azurerm" {
  features {}

  # subscription_id = "664b6097-19f2-42a3-be95-a4a6b4069f6b"
  skip_provider_registration = true
}