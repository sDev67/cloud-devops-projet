variable "location" {
  description = "Location of the resource group"
  type        = string
  default     = "West Europe"
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "cloud-resources"
}

variable "virtual_network_name" {
  description = "Name of the virtual network"
  type        = string
  default     = "example-network"
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
  default     = "internal"
}

variable "public_ip_name" {
  description = "Name of the public IP"
  type        = string
  default     = "example-public-ip"
}

variable "network_interface_name" {
  description = "Name of the network interface"
  type        = string
  default     = "example-nic"
}

variable "linux_vm_name" {
  description = "Name of the Linux VM"
  type        = string
  default     = "example-vm"
}

variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
  default     = "adminuser"
}

variable "ssh_public_key" {
  description = "SSH public key for the VM"
  type        = string
}
