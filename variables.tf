variable "ipv4_address" {
  type = string
}

variable "ipv4_mask" {
  type    = number
  default = 24
}

variable "ipv4_gw" {
  type    = string
  default = "172.16.204.1"
}

variable "computer_name" {
  type = string
}

variable "vmName" {
  type = string
}

variable "vmFolder" {
  type = string
}

variable "vmTemplate" {
  type = string
}

variable "vsphereUser" {
  type = string
}

variable "vspherePass" {
  type = string
}

variable "vsphereAddr" {
  type = string
}