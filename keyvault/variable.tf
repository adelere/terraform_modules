variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
  default     = ""
}

variable "key_vault_name" {
  description = "The name of the key vault."
  type        = string
  default     = ""
}

variable "location" {
  description = "The location for all resources."
  type        = string
  default     = ""
}

variable "key_vault_sku_name" {
  description = "The SKU name for the key vault."
  type        = string
  default     = ""
}

variable "soft_delete_retention_days" {
  description = "The number of days that soft-deleted keys should be retained for."
  type        = number
  default     = null
}

variable "secret_name" {
  description = "The name of the secret to be stored in the key vault."
  type        = string
  default     = ""
}

variable "secret_value" {
  description = "The value of the secret to be stored in the key vault."
  type        = string
  default     = ""
}

variable "certificate_name" {
  description = "The name of the certificate to import into the key vault."
  type        = string
  default     = ""
}

variable "certificate_password" {
  description = "The password for the certificate file, if applicable."
  type        = string
  default     = ""
}
