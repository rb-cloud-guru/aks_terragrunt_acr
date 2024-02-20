#region
variable location {
    description = "Location"
}

#rg name
variable rg_name {
    description = "Resource Group Name"
}

#aks name
variable aks_name {
    description = "aks name"
}

#dns prefix
variable aks_dns_prefix {
    description = "aks dns prefix"
}

#node pool name
variable aks_node_pool_name {
    description = "aks node pool name"
}

#node count
variable aks_node_count {
    description = "aks node count"
}

#vm size
variable vm_size {
    description = "vm size"
}

#acr definition
variable acr_definition_name {
    description = "acr role definition"
}

#acr id to be outputed
variable acr_id {
    description = "acr id"
}