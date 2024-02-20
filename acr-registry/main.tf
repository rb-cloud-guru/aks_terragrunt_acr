#tf required when you use Terragrunt
terraform {
  backend "azurerm" {}
}

#resource provider also required
provider "azurerm" {
	features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

#create acr Container registery
resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  location            = var.location
  resource_group_name = var.rg_name
  sku                 = var.acr_sku 
  admin_enabled       = true 
}


