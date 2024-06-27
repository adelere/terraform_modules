variable "resource_group_name" {
  type        = string
  description = "The name of the resource group where the resources will be deployed."
  default     = ""
}

variable "resource_group_location" {
  type        = string
  description = "The location of the resource group."
  default     = ""
}

variable "storage_account_name" {
  type        = string
  description = "The name of the storage account."
  default     = ""
}

variable "storage_container_name" {
  type        = string
  description = "The name of the storage container."
  default     = ""
}

variable "blob_name" {
  type        = string
  description = "The name of the blob in the storage container."
  default     = ""
}

variable "account_tier" {
  type        = string
  description = "Name of the storage account tier"
  default     = ""
}
variable "replication_type" {
  type        = string
  description = "Name of the storage account replication type"
  default     = ""
}
variable "container_access_type" {
  type        = string
  description = "Name of the container access type"
  default     = ""
}
variable "blob_storage_type" {
  type        = string
  description = "Name of the blob storage type"
  default     = ""
}
variable "blob_source" {
  type        = string
  description = "Name of the blob storage source"
  default     = ""
}