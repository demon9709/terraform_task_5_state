terraform {
  required_version = ">= 1.8.4"

  backend "azurerm" {
    resource_group_name   = "tfstate"
    storage_account_name  = "myteststoragefortr"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"
    use_oidc              = true
  }
}

provider "azurerm" {
  features {}
  use_oidc = true
}
