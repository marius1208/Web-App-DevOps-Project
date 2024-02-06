variable "client_id" {
  type    = string
  sensitive = true
}

variable "client_secret" {
  type    = string
  sensitive = true
}

variable "subscription_id" {
  type    = string
  sensitive = true
}

variable "tenant_id" {
  type    = string
  sensitive = true
}

variable "public_address"{
    type = string
    sensitive = true
}