locals {
  env = "prod"
  default_tags = {
    env                = local.env
    systemNumber       = "55493"
    billingDescription = "ProdApp"
    billingContact     = "nils.storli@posten.no"
    billingUnit        = "109457"
    creationSource     = "terraform"
  }
  region = "norwayeast"
}

terraform {
  backend "azurerm" {
    subscription_id      = "b3186383-92f4-48a7-a098-71fa1b8ef720" // ProdApp-55493
    resource_group_name  = "terraform-rg"
    storage_account_name = "btfprodapp"
    container_name       = "tfstate"
    key                  = "prod/resource-groups.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.20.0"
    }
  }
  required_version = "1.2.8"
}

provider "azurerm" {
  subscription_id = "b3186383-92f4-48a7-a098-71fa1b8ef720" //  ProdApp-55493
  features {}
}
