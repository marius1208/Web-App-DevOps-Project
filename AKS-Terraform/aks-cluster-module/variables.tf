# variable that represents the name of the AKS cluster you wish to create 
variable "aks_cluster_name" {
  type = string
}

# variable that specifies the Azure region where the AKS cluster will be deployed to
variable "cluster_location" {
  type = string
}

# variable that defines the DNS prefix of cluster 
variable "dns_prefix" {
  type = string
}

# variable that specifies which Kubernetes version the cluster will use
variable "kubernetes_version" {
  type = string
}

# variable that provides the Client ID for the service principal associated with the cluster 
variable "service_principal_client_id" {
  type = string
}

# variable that supplies the Client Secret for the service principal 
variable "service_principal_client_secret" {
  type = string
}

# INPUT VARIABLES FROM NETWORKING MODULE
# Variable that will provide the name of the Azure Resource Group where the networking resources were provisioned in 

variable "resource_group_name" {
  type = string
}

