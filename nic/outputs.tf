output "nic_id" {
  value = azurerm_network_interface.main_nic.id
}
output "public_ip" {
  value = azurerm_public_ip.main_public_ip.ip_address
}