
#root location
include {
    path = find_in_parent_folders()
}

#currentpath
terraform {
    source = "../resource-group"
}
