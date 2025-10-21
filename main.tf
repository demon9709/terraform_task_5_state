terraform {
  required_version = ">= 1.8.4"
  backend "local" {
    path = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}
