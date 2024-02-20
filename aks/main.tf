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

#create aks
resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_name
  location            = var.location
  resource_group_name = var.rg_name
  dns_prefix          = var.aks_dns_prefix

  default_node_pool {
    name       = var.aks_node_pool_name
    node_count = var.aks_node_count
    vm_size    = var.vm_size
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "dev"
  }
}

#attach to acr
resource "azurerm_role_assignment" "ra" {
  principal_id                     = azurerm_kubernetes_cluster.aks.kubelet_identity[0].object_id
  role_definition_name             = var.acr_definition_name
  scope                            = var.acr_id
  skip_service_principal_aad_check = true
}