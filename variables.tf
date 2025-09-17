variable "prefix" {
  type        = string
  default     = "example"
  description = "The prefix which should be used for all resources in this example"
}

variable "location" {
  type        = string
  default     = "eastus"
  description = "The Azure Region in which all resources in this example should be created."
}

variable "admin_username" {
  type        = string
  default     = "adminuser"
  description = "The admin username for the VM being created."
}

variable "admin_password" {
  type        = string
  default     = "Admin12345!"
  description = "The password for the VM being created."
}