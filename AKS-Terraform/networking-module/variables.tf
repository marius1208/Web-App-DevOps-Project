
# Name of the Azure Resource Group where the networking resources will be deployed in
variable "resource_group_name" {
  type    = string
}

# Specifies the Azure region where the networking resources will be deployed to
variable "location" {
  type    = string
  default = "UK South"
}

# Specifies the address space for the Virtual Network (VNet) that will be created later in the main configuration file of this module.
variable "vnet_address_space" {
  type    = list(string)
  default = ["10.0.0.0/16"]
}

# Variable that stores the public adress
variable "public_address" {
  type = string
}