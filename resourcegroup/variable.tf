variable "group_name" {
  type        = string
  description = "Resource Group Name"
}

variable "location" {
  type        = string
  description = "Resource Group Location"
}

variable "tags" {
  type        = map(any)
  default     = {}
  description = "Resource Group tags"
}