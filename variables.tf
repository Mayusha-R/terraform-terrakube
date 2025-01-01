variable "location" {
  type = string
  default = "southeastasia"
}
variable "resource_gn" {
  type = string
  default = "sa1_test_eic_MayushaRathod"
}
variable "vm_size" {
  type = string
  default = "Standard_B1s"
}
variable "key_name" {
  type = string
  default = "mayusha-ssh-key"
}
variable "username" {
  type = string
  default = "azureuser"
}
variable "vm_image" {
  type = map(string)
  default = {
    "publisher" = "Canonical"
    "offer" = "0001-com-ubuntu-server-jammy"
    "sku"       = "22_04-lts"
    "version"   = "latest"
  }
}
variable "vm_os_disk" {
  type = map(string)
  default = {
    "name"              = "terraform-vm-disk"
    "caching"           = "ReadWrite"
    "create_option"     = "FromImage"
    "managed_disk_type" = "Standard_LRS"
  }
}
variable "primary_ipconfig_name" {
  type = string
  default = "ipconfig"
}
variable "primary_privateip_type" {
  type = string
  default = "Dynamic"
}
variable "public_ip_allocation_method" {
  type = string
  default = "Static"
}
variable "vnet_cidr_block" {
  type = string
  default = "10.0.0.0/16"
}
variable "vnet_subnet_cidr_block" {
  type = string
  default = "10.0.2.0/24"
}
variable "nic_name" {
  type = string
  default = "teraform-nic"
}
variable "public_ip_name" {
  type = string
  default = "terraform-publicip"
}
variable "nsg_name" {
  type = string
  default = "terraform-nsg"
}
variable "storage_name" {
  type = string
  default = "terraformstorage000"
}
variable "storage_container_name" {
  type = string
  default = "ip-upload"
}
variable "vm_name" {
  type = string
  default = "terraform-vm"
}
variable "vnet_name" {
  type = string
  default = "terrafom-vnet"
}
