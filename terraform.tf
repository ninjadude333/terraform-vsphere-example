provider "vsphere" {
  user                 = var.vsphereUser
  password             = var.vspherePass
  vsphere_server       = var.vsphereAddr
  allow_unverified_ssl = true
}

data "vsphere_datacenter" "datacenter" {
  name = "Main"
}

data "vsphere_datastore" "datastore" {
  name          = "LAB-V3-vSANDatastore"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_compute_cluster" "cluster" {
  name          = "LAB-V3"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_resource_pool" "pool" {
  name          = "PreSales"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_network" "network" {
  name          = "DavidG-Overlay-204"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

# data "vsphere_folder" "parent" {
#   path          = "${data.vsphere_datacenter.datacenter.name}/${data.vsphere_datastore.datastore.name}/LABS"
# }

data "vsphere_folder" "folder" {
  path = "Main/vm/LABS/David Gidony"
}

# resource "vsphere_folder" "parent" {
#   path          = "LABS"
#   type          = "vm"
#   datacenter_id = "${data.vsphere_datacenter.datacenter.id}"
# }

# resource "vsphere_folder" "folder" {
#   path          = "${vsphere_folder.parent.path}/David Gidony"
#   type          = "vm"
#   datacenter_id = "${data.vsphere_datacenter.datacenter.id}"
# }

data "vsphere_virtual_machine" "template" {
  name          = "Server2019-template"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}