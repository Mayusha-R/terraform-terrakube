terraform {
  cloud {
    organization = "Examples"
    hostname = "terrakube-ui.minikube.net"

    workspaces {
      name = "terraform-terrakube"
    }
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.2.0"
    }
  }
  
}

provider "azurerm" {
  features {}

  # subscription_id = "664b6097-19f2-42a3-be95-a4a6b4069f6b"
  skip_provider_registration = true
}