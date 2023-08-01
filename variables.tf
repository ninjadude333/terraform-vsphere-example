variable "ipv4_address" {
  type        = string
  description = "IP adress to be configured on the VM"
}

variable "ipv4_mask" {
  type        = number
  default     = 24
  description = "IP mask class to be configured on the VM"
}

variable "ipv4_gw" {
  type        = string
  description = "Default Gateway address to be configured on the VM"
}

variable "dns_server_list" {
  type        = list(string)
  description = "DNS Server list to be configured on new VM"
}

variable "computer_name" {
  type        = string
  description = "Computer name to be configured on the VM"
}

variable "vmName" {
  type        = string
  description = "VM name for the VM object to be deployed"
}

variable "vmFolder" {
  type        = string
  description = "Folder in Vsphere to deploy the VM, and fetch template from"
}

variable "vmTemplate" {
  type        = string
  description = "VM Template Name"
}

variable "vsphereUser" {
  type        = string
  description = "Vsphere user name for vshpere login"
}

variable "vspherePass" {
  type        = string
  description = "Vsphere password for vsphere login"
}

variable "vsphereAddr" {
  type        = string
  description = "url/address of vsphere server"
}