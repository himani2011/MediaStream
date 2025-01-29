terraform {
    # Uncomment this to get it running in the CD pipeline.
         backend "azurerm" {
        resource_group_name  = "mediastream-terraform"
        storage_account_name = "mediastreamterraform"
        container_name       = "terraform-state"
        key                  = "terraform.tfstate"
    }
}