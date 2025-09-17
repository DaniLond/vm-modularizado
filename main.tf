provider "azurerm" {
  features {}
  subscription_id = "027c217f-9523-4190-aa01-bbf4fed9f5f7"
}

module "rg" {
  source   = "./modules/resource_group"
  prefix   = var.prefix
  location = var.location
}

module "network" {
  source              = "./modules/network"
  prefix              = var.prefix
  location            = module.rg.location
  resource_group_name = module.rg.name
}

module "compute" {
  source              = "./modules/compute"
  prefix              = var.prefix
  location            = module.rg.location
  resource_group_name = module.rg.name
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  nic_id              = module.network.nic_id
}