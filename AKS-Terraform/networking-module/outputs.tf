# Variable that will store the ID of the previously created VNet
output "vnet_id" {
  description = "This is the virtual network ID"
  value = azurerm_virtual_network.aks-vnet.id
}

# Variable that will hold the ID of the control plane subnet within the VNet.
output "control_plane_subnet_id" {
  description = ""
  value = azurerm_subnet.control-plane-subnet.id
}

# Variable that will store the ID of the worker node subnet within the VNet
output "worker_node_subnet_id" {
  description = ""
  value = azurerm_subnet.worker-node-subnet.id
}
# Variable that will provide the name of the Azure Resource Group where the networking resources were provisioned in
output "networking_resource_group_name" {
  description = ""
  value = azurerm_resource_group.aks.name
}

# Variable that will store the ID of the Network Security Group (NSG)
output "aks_nsg_id" {
  description = "This is the virtual network ID"
  value = azurerm_network_security_group.aks_nsg.id
}

