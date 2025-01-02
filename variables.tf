variable "location" {
  type = string
}
variable "resource_gn" {
  type = string
}
variable "vm_size" {
  type = string
}
variable "key_name" {
  type = string
}
variable "username" {
  type = string
}
variable "vm_image" {
  type = map(string)
}
variable "vm_os_disk" {
  type = map(string)
}
variable "primary_ipconfig_name" {
  type = string
}
variable "primary_privateip_type" {
  type = string
}
variable "public_ip_allocation_method" {
  type = string
}
variable "nic_name" {
  type = string
}
variable "public_ip_name" {
  type = string
}
variable "nsg_name" {
  type = string
}
# variable "storage_name" {
#   type = string
# }
# variable "storage_container_name" {
#   type = string
# }
variable "vm_name" {
  type = string
}
variable "vnet_name" {
  type = string
}
variable "subnet_name" {
  type = string
}
# variable "vnet_cidr_block" {
#   type = string
# }
# variable "vnet_subnet_cidr_block" {
#   type = string
# }