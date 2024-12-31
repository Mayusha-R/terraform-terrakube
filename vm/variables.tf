variable "location" {
    type = string
}
variable "resource_gn" {
    type = string
}
variable "vm_name" {
    type = string
}
variable "key_name" {
    type = string
}
variable "username" {
    type = string
}
variable "nic_id" {
    type = string
}
variable "size" {
    type = string
}
variable "tags" {}
variable "image" {
    type = map(string)
}
variable "os_disk" {
    type = map(string)
}