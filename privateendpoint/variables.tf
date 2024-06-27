variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = ""
}

variable "location" {
  description = "The Azure region to deploy resources"
  type        = string
  default     = ""
}

variable "vnet_name" {
  description = "The name of the virtual network"
  type        = string
  default     = ""
}

variable "vnet_address_space" {
  description = "The address space of the virtual network"
  type        = list(string)
  default     = []
}

variable "service_subnet_name" {
  description = "The name of the service subnet"
  type        = string
  default     = ""
}

variable "service_subnet_prefix" {
  description = "The address prefix for the service subnet"
  type        = list(string)
  default     = []
}

variable "endpoint_subnet_name" {
  description = "The name of the endpoint subnet"
  type        = string
  default     = ""
}

variable "endpoint_subnet_prefix" {
  description = "The address prefix for the endpoint subnet"
  type        = list(string)
  default     = []
}

variable "public_ip_name" {
  description = "The name of the public IP"
  type        = string
  default     = ""
}

variable "lb_name" {
  description = "The name of the load balancer"
  type        = string
  default     = ""
}

variable "private_link_service_name" {
  description = "The name of the private link service"
  type        = string
  default     = ""
}

variable "private_endpoint_name" {
  description = "The name of the private endpoint"
  type        = string
  default     = ""
}