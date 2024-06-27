variable "resource_group_name" {
  description = "The name of the Azure resource group."
  type        = string
  default     = null
}

variable "frontdoor_name" {
  description = "The name of the Azure Front Door instance."
  type        = string
  default     = null
}

variable "location" {
  description = "The Azure region where the resources will be created."
  type        = string
  default     = null
}

variable "routing_rule_name" {
  description = "The name of the routing rule."
  type        = string
  default     = null
}

variable "accepted_protocols" {
  description = "The accepted protocols for the routing rule."
  type        = list(string)
  default     = null
}

variable "patterns_to_match" {
  description = "The URL patterns to match for the routing rule."
  type        = list(string)
  default     = null
}

variable "frontend_endpoint_name" {
  description = "The name of the Front Door frontend endpoint."
  type        = string
  default     = null
}

variable "frontend_endpoint_host_name" {
  description = "The host name for the Front Door frontend endpoint."
  type        = string
  default     = null
}

variable "backend_pool_name" {
  description = "The name of the backend pool."
  type        = string
  default     = null
}

variable "backend_host_header" {
  description = "The host header for the backend."
  type        = string
  default     = null
}

variable "backend_address" {
  description = "The address of the backend."
  type        = string
  default     = null
}

variable "backend_http_port" {
  description = "The HTTP port of the backend."
  type        = number
  default     = null
}

variable "backend_https_port" {
  description = "The HTTPS port of the backend."
  type        = number
  default     = null
}
variable "forwarding_protocol" {
  description = "The forwarding protocol for configuration."
  type        = string
  default     = ""
}
