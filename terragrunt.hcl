#backend
remote_state {
    backend = "azurerm"
    config = {
        resource_group_name = "tfstorage"
        storage_account_name = "terraformrocks"
        container_name = "tfstatedev"
        key = "${path_relative_to_include()}/terraform.tfstate"
    }
}

#var
inputs = {
    location = "eastus"
    rg_name = "azurefunc"
    acr_sku = "Basic"
    acr_name = "privatereg76"
    aks_name = "aksiscool"
    aks_dns_prefix = "tonton2"
    aks_node_pool_name = "nodepomia"
    aks_node_count = 1
    vm_size = "Standard_D2s_v3"
    acr_definition_name = "AcrPull"
 }

