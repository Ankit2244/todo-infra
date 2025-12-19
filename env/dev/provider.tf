terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.55.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "backend-rg"
    storage_account_name = "backendstrg"
    container_name       = "strg"
    key                  = "strg.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "fa3325aa-2291-472e-9d80-68f554038ffc"
  #  tenant_id = "1449fb85-6c94-4b5d-bcf2-9410cee07ba5"
  #  client_id = "f819692e-a3ac-4a00-9436-688f6ea99999"
  #  client_secret =  "2dea7166-3d96-4740-b679-b6af49d08b6e"
}


