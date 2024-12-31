data "azurerm_ssh_public_key" "sshkey" {
  name                = var.key_name
  resource_group_name = var.resource_gn
}

resource "azurerm_virtual_machine" "testvm" {
  name                  = var.vm_name
  location              = var.location
  resource_group_name   = var.resource_gn
  vm_size               = var.size
  network_interface_ids = [var.nic_id]
  delete_os_disk_on_termination = true

  storage_image_reference {
    publisher = var.image["publisher"]
    offer     = var.image["offer"]
    sku       = var.image["sku"]
    version   = var.image["version"]
  }
  storage_os_disk {
    name              = var.os_disk["name"]
    caching           = var.os_disk["caching"]
    create_option     = var.os_disk["create_option"]
    managed_disk_type = var.os_disk["managed_disk_type"]
  }
  

  os_profile {
    computer_name  = var.username
    admin_username = var.username
    # admin_password = "Password1234!"
    
  }
  os_profile_linux_config {
    disable_password_authentication = true
    ssh_keys {
      path = "/home/${var.username}/.ssh/authorized_keys"
      key_data = data.azurerm_ssh_public_key.sshkey.public_key
    }
  }

  tags = var.tags
}