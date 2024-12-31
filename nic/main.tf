resource "azurerm_network_interface" "main_nic" {
  name                = var.nic_name
  location            = var.location
  resource_group_name = var.resource_gn

  ip_configuration {
    name                          = var.primary_ipconfig_name
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = var.primary_privateip_type
    public_ip_address_id          = azurerm_public_ip.main_public_ip.id
  }
  tags = var.tags
}

resource "azurerm_public_ip" "main_public_ip" {
  name                = var.public_ip_name
  resource_group_name = var.resource_gn
  location            = var.location
  allocation_method   = var.public_ip_allocation_method
  tags = var.tags
}