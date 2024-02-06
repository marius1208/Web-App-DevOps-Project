terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}


provider "azurerm" {
  features {}
  client_id       = var.client_id
  client_secret   = var.client_secret
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
}

module "networking-module" {
  source = "./networking-module" # Path to your module directory
  public_address = var.public_address
  resource_group_name = "aks-resources"

}

module "aks-cluster-module" {
  source = "./aks-cluster-module" # Path to your module directory
  aks_cluster_name = "Test"
  cluster_location = "UK South"
  dns_prefix = "my-aks-prefix"
  kubernetes_version = "1.26.6"
  service_principal_client_id = var.client_id
  service_principal_client_secret = var.client_secret
  resource_group_name = module.networking-module.networking_resource_group_name

}