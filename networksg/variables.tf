variable "resource_group_name" {
  description = "The name of the Azure resource group"
  type        = string
  default     = null
}

variable "location" {
  description = "The location/region where the network security group will be created"
  type        = string
  default     = null
}

variable "security_group_name" {
  description = "The name of the Azure network security group"
  type        = string
  default     = null
}

variable "security_rule_name" {
  description = "The name of the security rule"
  type        = string
  default     = null
}

variable "security_rule_priority" {
  description = "The priority of the security rule"
  type        = number
  default     = null
}

variable "security_rule_direction" {
  description = "The direction of the security rule (Inbound/Outbound)"
  type        = string
  default     = null
}

variable "security_rule_access" {
  description = "The access (Allow/Deny) of the security rule"
  type        = string
  default     = null
}

variable "security_rule_protocol" {
  description = "The protocol of the security rule"
  type        = string
  default     = null
}

variable "security_rule_source_port_range" {
  description = "The source port range of the security rule"
  type        = string
  default     = null
}

variable "security_rule_destination_port_range" {
  description = "The destination port range of the security rule"
  type        = string
  default     = null
}

variable "security_rule_source_address_prefix" {
  description = "The source address prefix of the security rule"
  type        = string
  default     = null
}

variable "security_rule_destination_address_prefix" {
  description = "The destination address prefix of the security rule"
  type        = string
  default     = null
}
