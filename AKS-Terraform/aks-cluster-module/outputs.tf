# variable that will store the name of the provisioned cluster 
output "aks_cluster_name" {
  description = ""
  value       = azurerm_kubernetes_cluster.aks_cluster.name
}

# variable that will store the ID of the cluster 
output "aks_cluster_id" {
  description = ""
  value       = azurerm_kubernetes_cluster.aks_cluster.id
}

# variable that will capture the Kubernetes configuration file of the cluster
output "aks_kubeconfig" {
  description = ""
  value       = azurerm_kubernetes_cluster.aks_cluster.kube_config_raw
}