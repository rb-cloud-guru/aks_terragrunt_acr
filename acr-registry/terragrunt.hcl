# root to main folder
include {
    path = find_in_parent_folders()
}

#current path
terraform {
    source = "../acr-registry"
}

#dependencies
dependencies {
    paths = ["../resource-group"]
}
