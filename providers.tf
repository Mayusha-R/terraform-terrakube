terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.2.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "sa1_test_eic_MayushaRathod"  
    storage_account_name = "terrakubestate"                      
    container_name       = "tfstate"                       
    key                  = "terraform.tfstate"        
  }

}

provider "azurerm" {
  features {}
  resource_provider_registrations = "none"
}