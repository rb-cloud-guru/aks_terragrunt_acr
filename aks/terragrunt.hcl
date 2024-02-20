#path to root folder
include {
    path = find_in_parent_folders() 
}

#current location
terraform {
    source = "../aks"
}

#dependencies
dependencies {
    paths = ["../resource-group", "../acr-registry"]
}

#dependency 
dependency "acr-registry" {
    config_path = "../acr-registry"
    skip_outputs = false 
    mock_outputs = {
        acr_id = "/subscriptions/235"
    }
}   

#inputs
inputs = {
    acr_id = dependency.acr-registry.outputs.acr_id
}
