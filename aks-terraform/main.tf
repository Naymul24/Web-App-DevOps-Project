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
  subscription_id = "148be6f4-2480-48a8-9977-4d2ce0812c4c"
  tenant_id       = "47d4542c-f112-47f4-92c7-a838d8a5e8ef"
} 

module "networking" {
  source = "./networking-module"
  resource_group_name = "networking-resource-group"
  location           = "UK South"
  vnet_address_space = ["10.0.0.0/16"]
}

module "aks_cluster" {
  source = "./aks-cluster-module"
  aks_cluster_name           = "terraform-aks-cluster"
  cluster_location           = "UK South"
  dns_prefix                 = "terraform-aks-cluster"
  kubernetes_version         = "1.27.7" 
  client_id = var.client_id
  client_secret = var.client_secret

  resource_group_name         = module.networking.networking_resource_group_name
  vnet_id                     = module.networking.vnet_id
  control_plane_subnet_id     = module.networking.control_plane_subnet_id
  worker_node_subnet_id       = module.networking.worker_node_subnet_id
}