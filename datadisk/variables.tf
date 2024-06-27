variable "prefix" {
  description = "The prefix for naming resources"
  type        = string
  default     = ""
}
variable "resource_group_name" {
  type        = string
  description = "The name of the resource group where the resources will be deployed."
  default     = ""
}
variable "vnet_name" {
  type        = string
  description = "The name of the virtual network where the resources will be deployed."
  default     = ""
}
variable "subnet_name" {
  type        = string
  description = "The name of the subnet."
  default     = ""
}
variable "nic_name" {
  type        = string
  description = "The name of the Network Interface card."
  default     = ""
}
variable "vm_name" {
  type        = string
  description = "The name of the virtual machine."
  default     = ""
}
variable "computer_name" {
  type        = string
  description = "The name of the os profile"
  default     = ""
}
variable "ip_config_name" {
  type        = string
  description = "The name of the ip configuration."
  default     = ""
}
variable "disk_name" {
  type        = string
  description = "The name of the Managed disk"
  default     = ""
}
variable "private_ip_address_allocation" {
  type        = string
  description = "The name of the private ip address allocation."
  default     = ""
}

variable "location" {
  description = "The location for all Azure resources"
  type        = string
  default     = ""
}

variable "vm_size" {
  description = "The size of the virtual machine"
  type        = string
  default     = ""
}

variable "admin_username" {
  description = "The admin username for the virtual machine"
  type        = string
  default     = ""
}

variable "admin_password" {
  description = "The admin password for the virtual machine"
  type        = string
  default     = ""
}

variable "subnet_address_prefix" {
  description = "The address prefix for the subnet"
  type        = list(string)
  default     = []
}

variable "image_publisher" {
  description = "The publisher of the VM image"
  type        = string
  default     = ""
}

variable "image_offer" {
  description = "The offer of the VM image"
  type        = string
  default     = ""
}

variable "image_sku" {
  description = "The SKU of the VM image"
  type        = string
  default     = ""
}

variable "managed_disk_size_gb" {
  description = "The size of the managed disk"
  type        = number
  default     = null
}

variable "data_disk_lun" {
  description = "The logical unit number (LUN) for the data disk"
  type        = string
  default     = ""
}

variable "data_disk_caching" {
  description = "The caching type for the data disk"
  type        = string
  default     = ""
}

variable "os_disk_name" {
  description = "The name of the OS disk"
  type        = string
  default     = ""
}

variable "os_disk_caching" {
  description = "The caching type for the OS disk"
  type        = string
  default     = ""
}

variable "os_disk_create_option" {
  description = "The create option for the OS disk"
  type        = string
  default     = ""
}

variable "os_disk_managed_disk_type" {
  description = "The type of managed disk for the OS disk"
  type        = string
  default     = ""
}
variable "storage_account_type" {
  description = "The type of storage account for managed disks"
  default     = ""
  type        = string
}
variable "address_space" {
  description = "The address space for the virtual network"
  type        = list(string)
  default     = []
}


variable "create_option" {
  description = "The create option for managed disks"
  default     = ""
  type        = string
}