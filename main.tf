locals {
  common_tags = {
    ResourceOwner = "Mayusha"
    BusinessUnit  = "einfochips"
    ProjectName   = "learning and practice"
  }
}

# module "vnet" {
#   source                 = "./vnet"
#   location               = var.location
#   resource_gn            = var.resource_gn
#   vnet_name              = var.vnet_name
#   vnet_cidr_block        = var.vnet_cidr_block
#   vnet_subnet_cidr_block = var.vnet_subnet_cidr_block
#   tags                   = local.common_tags
# }

module "nic" {
  source                      = "./nic"
  location                    = var.location
  resource_gn                 = var.resource_gn
  nic_name                    = var.nic_name
  public_ip_name              = var.public_ip_name
  vnet_name                   = var.vnet_name
  subnet_name                 = var.subnet_name
  primary_ipconfig_name       = var.primary_ipconfig_name
  primary_privateip_type      = var.primary_privateip_type
  public_ip_allocation_method = var.public_ip_allocation_method
  tags                        = local.common_tags
}

module "nsg" {
  source      = "./nsg"
  location    = var.location
  resource_gn = var.resource_gn
  nsg_name    = var.nsg_name
  nic_id      = module.nic.nic_id
  tags        = local.common_tags
}

module "vm" {
  source      = "./vm"
  location    = var.location
  resource_gn = var.resource_gn
  vm_name     = var.vm_name
  nic_id      = module.nic.nic_id
  size        = var.vm_size
  key_name    = var.key_name
  username    = var.username
  image       = var.vm_image
  os_disk     = var.vm_os_disk
  tags        = local.common_tags
}

# module "storage" {
#   source                 = "./storage"
#   location               = var.location
#   resource_gn            = var.resource_gn
#   storage_name           = var.storage_name
#   storage_container_name = var.storage_container_name
#   public_ip              = module.nic.public_ip
#   tags                   = local.common_tags
# }
