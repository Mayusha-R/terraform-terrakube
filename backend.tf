terraform {
  backend "azurerm" {
    resource_group_name  = "sa1_test_eic_MayushaRathod"
    storage_account_name = "terrakubestate"
    container_name       = "tfstate"
    key                  = "terraform_state.tfstate"
  }
}