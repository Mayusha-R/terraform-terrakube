resource "azurerm_virtual_network" "main_vnet" {
  name                = var.vnet_name
  resource_group_name = var.resource_gn
  location            = var.location
  address_space       = [var.vnet_cidr_block] 
  tags = var.tags
}
resource "azurerm_subnet" "internal" {
  name                 = "${var.vnet_name}-internal"
  resource_group_name  = var.resource_gn
  virtual_network_name = azurerm_virtual_network.main_vnet.name
  address_prefixes     = [var.vnet_subnet_cidr_block]
}