variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = ""
}

variable "location" {
  description = "Location for all Azure resources"
  type        = string
  default     = ""
}

variable "virtual_network_name" {
  description = "Name of the virtual network"
  type        = string
  default     = ""
}

variable "private_endpoint_name" {
  description = "Name of the private endpoint"
  type        = string
  default     = ""
}

variable "link_service_name" {
  description = "Name of the private link service"
  type        = string
  default     = ""
}
variable "lb_name" {
  description = "Name of the loadbalancer"
  type        = string
  default     = ""
}
variable "public_ip_name"{
  description = "Name of the public ip"
  type        = string
  default     = ""
}

variable "virtual_network_address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
  default     = []
}

variable "service_subnet_address_prefixes" {
  description = "Address prefixes for the service subnet"
  type        = list(string)
  default     = []
}

variable "endpoint_subnet_address_prefixes" {
  description = "Address prefixes for the endpoint subnet"
  type        = list(string)
  default     = []
}

variable "public_ip_allocation_method" {
  description = "Allocation method for the public IP"
  type        = string
  default     = ""
}

variable "lb_sku" {
  description = "SKU for the load balancer"
  type        = string
  default     = ""
}
