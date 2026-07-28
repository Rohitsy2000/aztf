terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = ">=4.81.0"
    }
    random = {
        source = "hashicorp/random"
        version = ">3.0.0"
    }
  }
}
provider "azurerm" {
  features { 
  }
}
provider "random" {
}
terraform {
  backend "azurerm" {
    use_azuread_auth = true
    resource_group_name = "st-rg"
    storage_account_name = "stgtfrsqasahghhjhkh"
    container_name = "dev"
    key = "dev.terraform.tfstate"
  }
}