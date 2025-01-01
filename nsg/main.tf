# resource "null_resource" "my_ip" {
#   provisioner "local-exec" {
#     command = "export TF_VAR_my_public_ip=$(curl ipinfo.io/ip)"
#   }
# }
# data "http" "ip" {
#   url = "https://ipv4.icanhazip.com"
# }

resource "azurerm_network_security_group" "main_nsg" {
  name                = var.nsg_name
  location            = var.location
  resource_group_name = var.resource_gn

  security_rule {
    name                       = "AllowSSHFromMyIPInbound"
    priority                   = 300
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "14.97.73.248/29"
    destination_address_prefix = "*"
  }
  tags = var.tags
}

resource "azurerm_network_interface_security_group_association" "main_nsg_nic_associate" {
  network_interface_id      = var.nic_id
  network_security_group_id = azurerm_network_security_group.main_nsg.id
}